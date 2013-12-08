'use strict';
var app = {
    version: '1.0.0',
    author: 'Christopher Cassidy',

    init: function() {
        app.initEvents();
        app.showStatus(app.isOnline());
    },

    initEvents: function () {
        $('#GetProducts').on('click', app.loadProducts);
        $('#ClearProducts').on('click', app.clearProducts);
        $('#ClearStorage').on('click', app.clearStorage);

        window.addEventListener("offline", function (e) {
            app.showStatus(false);
        }, false);

        window.addEventListener("online", function (e) {
            app.showStatus(true);
        }, false);

        if (window.applicationCache) {
            var appCache = window.applicationCache;
            appCache.addEventListener('error', function (e) {
                $('#CacheUsed').removeClass('hidden');
            }, false);
        }
    },

    loadProducts: function () {
        $('#Products').html('Loading...').addClass('loading')
        if (app.isOnline())
            app.loadExternal();
        else
            app.loadLocal();
    },

    loadExternal: function () {
        console.log('loadExternal');
        var url = "/api/v1/products";
        $.getJSON(url)
            .success(function (products) {
                app.storeProducts(products);
                app.showProducts(products, true);
            })
            .error(function (xhr) {
                console.error("API error");
                // try to get from local
                app.loadLocal();
            });
    },

    loadLocal: function () {
        console.log('loadLocal');

        if (!app.hasLocalStorage()) {
            $('#Products').html('App offline, and local storage not available.').removeClass('loading');
            return;
        }

        var data = localStorage.getItem("products");
        if (data == null) {
            $('#Products').html('App offline, and no previously stored data available to display.').removeClass('loading');
        }
        else {
            var products = $.parseJSON(data);
            app.showProducts(products, false);
        }
    },

    showProducts: function (products, isExternalSource) {
        var txt = isExternalSource ? 'external' : 'local'
        $('#ProductsSource').html('Source: ' + txt);
        $('#Products').removeClass('loading').html(JSON.stringify(products, null, '\t'));
    },

    showStatus: function (status) {
        //console.log('App ' + status ? 'online' : 'offline');
        if (status)
            $('#OnlineStatus').html('App online').addClass('alert-success').removeClass('alert-danger');
        else
            $('#OnlineStatus').html('App offline').addClass('alert-danger').removeClass('alert-success');
    },
    storeProducts: function (products) {
        if (app.hasLocalStorage())
        {
            localStorage.setItem("products", JSON.stringify(products));
        }
    },
    clearProducts: function () {
        $('#Products').html('');
    },
    clearStorage: function () {
        if (app.hasLocalStorage()) {
            localStorage.removeItem("products");
        }
    },
    isOnline: function () {
        try {
            if (navigator.onLine) return true;
        }
        catch (ex) {}

        return false;
    },
    hasLocalStorage: function() {
        try {
            return 'localStorage' in window && window['localStorage'] !== null;
        } catch (e) {
            return false;
        }        
    }

}

