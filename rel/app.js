!function n(e,o,t){function i(s,d){if(!o[s]){if(!e[s]){var a="function"==typeof require&&require;if(!d&&a)return a(s,!0);if(r)return r(s,!0);var c=new Error("Cannot find module '"+s+"'");throw c.code="MODULE_NOT_FOUND",c}var u=o[s]={exports:{}};e[s][0].call(u.exports,function(n){var o=e[s][1][n];return i(o?o:n)},u,u.exports,n,e,o,t)}return o[s].exports}for(var r="function"==typeof require&&require,s=0;s<t.length;s++)i(t[s]);return i}({1:[function(n,e,o){var t,i;i=n("jade/component"),t=function(){function n(n,e){this.options=e,this.$node=$(i()),n.append(this.$node),this.is_open=!1,this.$node.find(".close").click(function(n){return function(e){return n.toggle()}}(this)),$(document).ready(function(n){return function(){return $("#quickdoc-toggle").click(function(e){var o;return o=$(e.currentTarget),n.load(o.data("path"))})}}(this))}return n.prototype.build=function(){},n.prototype.load=function(n){return this.$node.removeClass("failed"),this.$failed&&this.$failed.remove(),$.ajax({url:""+this.options.host+n}).done(function(n){return function(e){return n.$node.find(".title").html(e.title),n.$node.find(".body").html(e.body)}}(this)).fail(function(n){return function(){return n.$node.addClass("failed"),n.$failed=$("<p>Unable to load quickdoc, please try again. If the problem persists, please <a href=''>let us know</a></p>"),n.$node.append(n.$failed)}}(this)),this.is_open?void 0:this.open()},n.prototype.open=function(){return this.$node.removeClass("closed").addClass("open"),this.is_open=!0},n.prototype.close=function(){return this.$node.removeClass("open").addClass("closed"),this.is_open=!1},n.prototype.toggle=function(){return this.is_open?this.close():this.open()},n}(),window.nanobox||(window.nanobox={}),nanobox.Quickdocs=t},{"jade/component":2}],2:[function(n,e,o){e.exports=function(n){var e=[];return e.push('<div id="quickdocs" class="closed"><header><img data-src="" class="shadow-icon"/><h1 class="title"></h1><div class="close">x</div></header><section class="selectable body"></section></div>'),e.join("")}},{}]},{},[1]);