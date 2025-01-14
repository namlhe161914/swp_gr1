<%-- 
    Document   : utility
    Created on : Feb 21, 2023, 12:56:52 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<style type="text/css">
    .bx-ios.bx-ios-fix-frame-focus body,
    html.bx-ios.bx-ios-fix-frame-focus {
        -webkit-overflow-scrolling: touch
    }
    
    .bx-touch {
        -webkit-tap-highlight-color: transparent
    }
    
    .bx-touch.crm-widget-button-mobile,
    .bx-touch.crm-widget-button-mobile body {
        height: 100%;
        overflow: auto
    }
    
    .b24-widget-button-shadow {
        position: fixed;
        background: rgba(33, 33, 33, .3);
        width: 100%;
        height: 100%;
        top: 0;
        left: 0;
        visibility: hidden;
        z-index: 10100
    }
    
    .bx-touch .b24-widget-button-shadow {
        background: rgba(33, 33, 33, .75)
    }
    
    .b24-widget-button-inner-container {
        position: relative;
        display: inline-block
    }
    
    .b24-widget-button-position-fixed {
        position: fixed;
        z-index: 10000
    }
    
    .b24-widget-button-block {
        width: 66px;
        height: 66px;
        border-radius: 100%;
        box-sizing: border-box;
        overflow: hidden;
        cursor: pointer
    }
    
    .b24-widget-button-block .b24-widget-button-icon {
        opacity: 1
    }
    
    .b24-widget-button-block-active .b24-widget-button-icon {
        opacity: .7
    }
    
    .b24-widget-button-position-top-left {
        top: 50px;
        left: 50px
    }
    
    .b24-widget-button-position-top-middle {
        top: 50px;
        left: 50%;
        margin: 0 0 0 -33px
    }
    
    .b24-widget-button-position-top-right {
        top: 50px;
        right: 50px
    }
    
    .b24-widget-button-position-bottom-left {
        left: 50px;
        bottom: 50px
    }
    
    .b24-widget-button-position-bottom-middle {
        left: 50%;
        bottom: 50px;
        margin: 0 0 0 -33px
    }
    
    .b24-widget-button-position-bottom-right {
        right: 50px;
        bottom: 50px
    }
    
    .b24-widget-button-inner-block {
        position: relative;
        display: -webkit-box;
        display: -ms-flexbox;
        display: flex;
        height: 66px;
        border-radius: 100px;
        background: #00aeef;
        box-sizing: border-box
    }
    
    .b24-widget-button-icon-container {
        position: relative;
        -webkit-box-flex: 1;
        -webkit-flex: 1;
        -ms-flex: 1;
        flex: 1
    }
    
    .b24-widget-button-inner-item {
        position: absolute;
        top: 0;
        left: 0;
        padding: 20px 19px;
        -webkit-transition: opacity .6s ease-out;
        transition: opacity .6s ease-out;
        -webkit-animation: socialRotateBack .4s;
        animation: socialRotateBack .4s;
        opacity: 0
    }
    
    .b24-widget-button-icon-animation {
        opacity: 1
    }
    
    .b24-widget-button-inner-mask {
        position: absolute;
        top: -8px;
        left: -8px;
        height: 82px;
        min-width: 66px;
        -webkit-width: calc(100% + 16px);
        width: calc(100% + 16px);
        border-radius: 100px;
        background: #00aeef;
        opacity: .2
    }
    
    .b24-widget-button-icon {
        -webkit-transition: opacity .3s ease-out;
        transition: opacity .3s ease-out;
        cursor: pointer
    }
    
    .b24-widget-button-icon:hover {
        opacity: 1
    }
    
    .b24-widget-button-inner-item-active .b24-widget-button-icon {
        opacity: 1
    }
    
    .b24-widget-button-wrapper {
        position: fixed;
        display: -webkit-box;
        display: -ms-flexbox;
        display: flex;
        -webkit-box-orient: vertical;
        -webkit-box-direction: normal;
        -ms-flex-direction: column;
        flex-direction: column;
        -webkit-box-align: end;
        -ms-flex-align: end;
        align-items: flex-end;
        visibility: hidden;
        direction: ltr;
        z-index: 10150
    }
    
    .bx-imopenlines-config-sidebar {
        z-index: 10101
    }
    
    .b24-widget-button-visible {
        visibility: visible;
        -webkit-animation: b24-widget-button-visible 1s ease-out forwards 1;
        animation: b24-widget-button-visible 1s ease-out forwards 1
    }
    
    @-webkit-keyframes b24-widget-button-visible {
        0% {
            -webkit-transform: scale(0);
            transform: scale(0)
        }
        30.001% {
            -webkit-transform: scale(1.2);
            transform: scale(1.2)
        }
        62.999% {
            -webkit-transform: scale(1);
            transform: scale(1)
        }
        100% {
            -webkit-transform: scale(1);
            transform: scale(1)
        }
    }
    
    @keyframes b24-widget-button-visible {
        0% {
            -webkit-transform: scale(0);
            transform: scale(0)
        }
        30.001% {
            -webkit-transform: scale(1.2);
            transform: scale(1.2)
        }
        62.999% {
            -webkit-transform: scale(1);
            transform: scale(1)
        }
        100% {
            -webkit-transform: scale(1);
            transform: scale(1)
        }
    }
    
    .b24-widget-button-disable {
        -webkit-animation: b24-widget-button-disable .3s ease-out forwards 1;
        animation: b24-widget-button-disable .3s ease-out forwards 1
    }
    
    @-webkit-keyframes b24-widget-button-disable {
        0% {
            -webkit-transform: scale(1);
            transform: scale(1)
        }
        50.001% {
            -webkit-transform: scale(.5);
            transform: scale(.5)
        }
        92.999% {
            -webkit-transform: scale(0);
            transform: scale(0)
        }
        100% {
            -webkit-transform: scale(0);
            transform: scale(0)
        }
    }
    
    @keyframes b24-widget-button-disable {
        0% {
            -webkit-transform: scale(1);
            transform: scale(1)
        }
        50.001% {
            -webkit-transform: scale(.5);
            transform: scale(.5)
        }
        92.999% {
            -webkit-transform: scale(0);
            transform: scale(0)
        }
        100% {
            -webkit-transform: scale(0);
            transform: scale(0)
        }
    }
    
    .b24-widget-button-social {
        display: none
    }
    
    .b24-widget-button-social-item {
        position: relative;
        display: block;
        margin: 0 10px 10px 0;
        width: 45px;
        height: 44px;
        background-color: #fff;
        background-size: 100%;
        border-radius: 25px;
        -webkit-box-shadow: 0 8px 6px -6px rgba(33, 33, 33, .2);
        -moz-box-shadow: 0 8px 6px -6px rgba(33, 33, 33, .2);
        box-shadow: 0 8px 6px -6px rgba(33, 33, 33, .2);
        cursor: pointer
    }
    
    .b24-widget-button-social-item:hover {
        -webkit-box-shadow: 0 0 6px rgba(0, 0, 0, .16), 0 6px 12px rgba(0, 0, 0, .32);
        box-shadow: 0 0 6px rgba(0, 0, 0, .16), 0 6px 12px rgba(0, 0, 0, .32);
        -webkit-transition: box-shadow .17s cubic-bezier(0, 0, .2, 1);
        transition: box-shadow .17s cubic-bezier(0, 0, .2, 1)
    }
    
    .connector-icon-45 {
        width: 45px;
        height: 45px
    }
    
    .b24-widget-button-callback {
        background-image: url("data:image/svg+xml;charset=US-ASCII,%3Csvg%20xmlns%3D%22http%3A//www.w3.org/2000/svg%22%20width%3D%2229%22%20height%3D%2230%22%20viewBox%3D%220%200%2029%2030%22%3E%3Cpath%20fill%3D%22%23FFF%22%20fill-rule%3D%22evenodd%22%20d%3D%22M21.872%2019.905c-.947-.968-2.13-.968-3.072%200-.718.737-1.256.974-1.962%201.723-.193.206-.356.25-.59.112-.466-.262-.96-.474-1.408-.76-2.082-1.356-3.827-3.098-5.372-5.058-.767-.974-1.45-2.017-1.926-3.19-.096-.238-.078-.394.11-.587.717-.718.96-.98%201.665-1.717.984-1.024.984-2.223-.006-3.253-.56-.586-1.103-1.397-1.56-2.034-.458-.636-.817-1.392-1.403-1.985C5.4%202.2%204.217%202.2%203.275%203.16%202.55%203.9%201.855%204.654%201.12%205.378.438%206.045.093%206.863.02%207.817c-.114%201.556.255%203.023.774%204.453%201.062%202.96%202.68%205.587%204.642%207.997%202.65%203.26%205.813%205.837%209.513%207.698%201.665.836%203.39%201.48%205.268%201.585%201.292.075%202.415-.262%203.314-1.304.616-.712%201.31-1.36%201.962-2.042.966-1.01.972-2.235.012-3.234-1.147-1.192-2.48-1.88-3.634-3.065zm-.49-5.36l.268-.047c.583-.103.953-.707.79-1.295-.465-1.676-1.332-3.193-2.537-4.445-1.288-1.33-2.857-2.254-4.59-2.708-.574-.15-1.148.248-1.23.855l-.038.28c-.07.522.253%201.01.747%201.142%201.326.355%202.53%201.064%203.517%202.086.926.958%201.59%202.125%201.952%203.412.14.5.624.807%201.12.72zm2.56-9.85C21.618%202.292%2018.74.69%2015.56.02c-.56-.117-1.1.283-1.178.868l-.038.28c-.073.537.272%201.04.786%201.15%202.74.584%205.218%201.968%207.217%204.03%201.885%201.95%203.19%204.36%203.803%207.012.122.53.617.873%201.136.78l.265-.046c.57-.1.934-.678.8-1.26-.71-3.08-2.223-5.873-4.41-8.14z%22/%3E%3C/svg%3E");
        background-repeat: no-repeat;
        background-position: center;
        background-color: #00aeef;
        background-size: 43%
    }
    
    .b24-widget-button-crmform {
        background-image: url("data:image/svg+xml;charset=US-ASCII,%3Csvg%20xmlns%3D%22http%3A//www.w3.org/2000/svg%22%20width%3D%2224%22%20height%3D%2224%22%20viewBox%3D%220%200%2024%2024%22%3E%3Cpath%20fill%3D%22%23FFF%22%20fill-rule%3D%22evenodd%22%20d%3D%22M22.407%200h-21.1C.586%200%200%20.586%200%201.306v21.1c0%20.72.586%201.306%201.306%201.306h21.1c.72%200%201.306-.586%201.306-1.305V1.297C23.702.587%2023.117%200%2022.407%200zm-9.094%2018.046c0%20.41-.338.737-.738.737H3.9c-.41%200-.738-.337-.738-.737v-1.634c0-.408.337-.737.737-.737h8.675c.41%200%20.738.337.738.737v1.634zm7.246-5.79c0%20.408-.338.737-.738.737H3.89c-.41%200-.737-.338-.737-.737v-1.634c0-.41.337-.737.737-.737h15.923c.41%200%20.738.337.738.737v1.634h.01zm0-5.8c0%20.41-.338.738-.738.738H3.89c-.41%200-.737-.338-.737-.738V4.822c0-.408.337-.737.737-.737h15.923c.41%200%20.738.338.738.737v1.634h.01z%22/%3E%3C/svg%3E");
        background-repeat: no-repeat;
        background-position: center;
        background-color: #00aeef;
        background-size: 43%
    }
    
    .b24-widget-button-openline_livechat {
        background-image: url("data:image/svg+xml;charset=US-ASCII,%3Csvg%20xmlns%3D%22http%3A//www.w3.org/2000/svg%22%20width%3D%2231%22%20height%3D%2228%22%20viewBox%3D%220%200%2031%2028%22%3E%3Cpath%20fill%3D%22%23FFF%22%20fill-rule%3D%22evenodd%22%20d%3D%22M23.29%2013.25V2.84c0-1.378-1.386-2.84-2.795-2.84h-17.7C1.385%200%200%201.462%200%202.84v10.41c0%201.674%201.385%203.136%202.795%202.84H5.59v5.68h.93c.04%200%20.29-1.05.933-.947l3.726-4.732h9.315c1.41.296%202.795-1.166%202.795-2.84zm2.795-3.785v4.733c.348%202.407-1.756%204.558-4.658%204.732h-8.385l-1.863%201.893c.22%201.123%201.342%202.127%202.794%201.893h7.453l2.795%203.786c.623-.102.93.947.93.947h.933v-4.734h1.863c1.57.234%202.795-1.02%202.795-2.84v-7.57c0-1.588-1.225-2.84-2.795-2.84h-1.863z%22/%3E%3C/svg%3E");
        background-repeat: no-repeat;
        background-position: center;
        background-color: #00aeef;
        background-size: 43%
    }
    
    .b24-widget-button-social-tooltip {
        position: absolute;
        top: 50%;
        left: -9000px;
        display: inline-block;
        padding: 5px 10px;
        border-radius: 10px;
        font: 13px/15px "Helvetica Neue", Arial, Helvetica, sans-serif;
        color: #000;
        background: #fff;
        text-align: center;
        -webkit-transform: translate(0, -50%);
        transform: translate(0, -50%);
        -webkit-transition: opacity .6s linear;
        transition: opacity .6s linear;
        opacity: 0
    }
    
    .b24-widget-button-social-item:hover .b24-widget-button-social-tooltip {
        left: 50px;
        -webkit-transform: translate(0, -50%);
        transform: translate(0, -50%);
        opacity: 1;
        z-index: 1
    }
    
    .b24-widget-button-close {
        display: none
    }
    
    .b24-widget-button-position-bottom-left .b24-widget-button-social-item:hover .b24-widget-button-social-tooltip,
    .b24-widget-button-position-top-left .b24-widget-button-social-item:hover .b24-widget-button-social-tooltip {
        left: 50px;
        -webkit-transform: translate(0, -50%);
        transform: translate(0, -50%);
        opacity: 1
    }
    
    .b24-widget-button-position-bottom-right .b24-widget-button-social-item:hover .b24-widget-button-social-tooltip,
    .b24-widget-button-position-top-right .b24-widget-button-social-item:hover .b24-widget-button-social-tooltip {
        left: -5px;
        -webkit-transform: translate(-100%, -50%);
        transform: translate(-100%, -50%);
        opacity: 1
    }
    
    .b24-widget-button-inner-container,
    .bx-touch .b24-widget-button-inner-container {
        -webkit-transform: scale(.85);
        transform: scale(.85);
        -webkit-transition: transform .3s;
        transition: transform .3s
    }
    
    .b24-widget-button-bottom .b24-widget-button-inner-container,
    .b24-widget-button-top .b24-widget-button-inner-container {
        -webkit-transform: scale(.7);
        transform: scale(.7);
        -webkit-transition: transform .3s linear;
        transition: transform .3s linear
    }
    
    .b24-widget-button-bottom .b24-widget-button-inner-block,
    .b24-widget-button-bottom .b24-widget-button-inner-mask,
    .b24-widget-button-top .b24-widget-button-inner-block,
    .b24-widget-button-top .b24-widget-button-inner-mask {
        background: #d6d6d6!important;
        -webkit-transition: background .3s linear;
        transition: background .3s linear
    }
    
    .b24-widget-button-bottom .b24-widget-button-pulse,
    .b24-widget-button-top .b24-widget-button-pulse {
        display: none
    }
    
    .b24-widget-button-wrapper.b24-widget-button-position-bottom-left,
    .b24-widget-button-wrapper.b24-widget-button-position-bottom-middle,
    .b24-widget-button-wrapper.b24-widget-button-position-bottom-right {
        -webkit-box-orient: vertical;
        -webkit-box-direction: reverse;
        -ms-flex-direction: column-reverse;
        flex-direction: column-reverse
    }
    
    .b24-widget-button-bottom .b24-widget-button-social,
    .b24-widget-button-top .b24-widget-button-social {
        display: -webkit-box;
        display: -ms-flexbox;
        display: flex;
        -webkit-box-orient: vertical;
        -webkit-box-direction: reverse;
        -ms-flex-direction: column-reverse;
        flex-direction: column-reverse;
        -ms-flex-wrap: wrap;
        flex-wrap: wrap;
        -ms-flex-line-pack: end;
        align-content: flex-end;
        height: -webkit-calc(100vh - 110px);
        height: calc(100vh - 110px);
        -webkit-animation: bottomOpen .3s;
        animation: bottomOpen .3s;
        visibility: visible
    }
    
    .b24-widget-button-top .b24-widget-button-social {
        -webkit-box-orient: vertical;
        -webkit-box-direction: normal;
        -ms-flex-direction: column;
        flex-direction: column;
        -ms-flex-wrap: wrap;
        flex-wrap: wrap;
        -webkit-box-align: start;
        -ms-flex-align: start;
        align-items: flex-start;
        padding: 10px 0 0 0;
        -webkit-animation: topOpen .3s;
        animation: topOpen .3s
    }
    
    .b24-widget-button-position-bottom-left.b24-widget-button-bottom .b24-widget-button-social {
        -ms-flex-line-pack: start;
        align-content: flex-start
    }
    
    .b24-widget-button-position-top-left.b24-widget-button-top .b24-widget-button-social {
        -ms-flex-line-pack: start;
        align-content: flex-start
    }
    
    .b24-widget-button-position-top-right.b24-widget-button-top .b24-widget-button-social {
        -ms-flex-line-pack: start;
        align-content: flex-start;
        -ms-flex-wrap: wrap-reverse;
        flex-wrap: wrap-reverse
    }
    
    .b24-widget-button-position-bottom-left.b24-widget-button-bottom .b24-widget-button-social,
    .b24-widget-button-position-bottom-middle.b24-widget-button-bottom .b24-widget-button-social,
    .b24-widget-button-position-bottom-right.b24-widget-button-bottom .b24-widget-button-social {
        -ms-flex-line-pack: start;
        align-content: flex-start;
        -ms-flex-wrap: wrap-reverse;
        flex-wrap: wrap-reverse;
        order: 1
    }
    
    .b24-widget-button-position-bottom-left.b24-widget-button-bottom .b24-widget-button-social {
        -ms-flex-wrap: wrap;
        flex-wrap: wrap
    }
    
    .b24-widget-button-position-bottom-left .b24-widget-button-social-item,
    .b24-widget-button-position-bottom-middle .b24-widget-button-social-item,
    .b24-widget-button-position-top-left .b24-widget-button-social-item,
    .b24-widget-button-position-top-middle .b24-widget-button-social-item {
        margin: 0 0 10px 10px
    }
    
    .b24-widget-button-position-bottom-left.b24-widget-button-wrapper {
        -webkit-box-align: start;
        -ms-flex-align: start;
        align-items: flex-start
    }
    
    .b24-widget-button-position-top-left.b24-widget-button-wrapper {
        -webkit-box-align: start;
        -ms-flex-align: start;
        align-items: flex-start
    }
    
    .b24-widget-button-position-bottom-middle.b24-widget-button-wrapper,
    .b24-widget-button-position-top-middle.b24-widget-button-wrapper {
        -webkit-box-align: start;
        -ms-flex-align: start;
        align-items: flex-start;
        -ms-flex-line-pack: start;
        align-content: flex-start
    }
    
    .b24-widget-button-position-top-middle.b24-widget-button-top .b24-widget-button-social {
        -webkit-box-orient: vertical;
        -webkit-box-direction: normal;
        -ms-flex-direction: column;
        flex-direction: column;
        -ms-flex-line-pack: start;
        align-content: flex-start
    }
    
    .b24-widget-button-bottom .b24-widget-button-inner-item {
        display: none
    }
    
    .b24-widget-button-bottom .b24-widget-button-close {
        display: block;
        -webkit-animation: socialRotate .4s;
        animation: socialRotate .4s;
        opacity: 1
    }
    
    .b24-widget-button-top .b24-widget-button-inner-item {
        display: none
    }
    
    .b24-widget-button-top .b24-widget-button-close {
        display: block;
        -webkit-animation: socialRotate .4s;
        animation: socialRotate .4s;
        opacity: 1
    }
    
    .b24-widget-button-show {
        -webkit-animation: show .3s linear forwards;
        animation: show .3s linear forwards
    }
    
    @-webkit-keyframes show {
        0% {
            opacity: 0
        }
        50% {
            opacity: 0
        }
        100% {
            opacity: 1;
            visibility: visible
        }
    }
    
    @keyframes show {
        0% {
            opacity: 0
        }
        50% {
            opacity: 0
        }
        100% {
            opacity: 1;
            visibility: visible
        }
    }
    
    .b24-widget-button-hide {
        -webkit-animation: hidden .3s linear forwards;
        animation: hidden .3s linear forwards
    }
    
    @-webkit-keyframes hidden {
        0% {
            opacity: 1;
            visibility: visible
        }
        50% {
            opacity: 1
        }
        99.999% {
            visibility: visible
        }
        100% {
            opacity: 0;
            visibility: hidden
        }
    }
    
    @keyframes hidden {
        0% {
            opacity: 1;
            visibility: visible
        }
        50% {
            opacity: 1
        }
        99.999% {
            visibility: visible
        }
        100% {
            opacity: 0;
            visibility: hidden
        }
    }
    
    .b24-widget-button-hide-icons {
        -webkit-animation: hideIconsBottom .2s linear forwards;
        animation: hideIconsBottom .2s linear forwards
    }
    
    @-webkit-keyframes hideIconsBottom {
        0% {
            opacity: 1
        }
        50% {
            opacity: 1
        }
        100% {
            opacity: 0;
            -webkit-transform: translate(0, 20px);
            transform: translate(0, 20px);
            visibility: hidden
        }
    }
    
    @keyframes hideIconsBottom {
        0% {
            opacity: 1
        }
        50% {
            opacity: 1
        }
        100% {
            opacity: 0;
            -webkit-transform: translate(0, 20px);
            transform: translate(0, 20px);
            visibility: hidden
        }
    }
    
    @-webkit-keyframes hideIconsTop {
        0% {
            opacity: 1
        }
        50% {
            opacity: 1
        }
        100% {
            opacity: 0;
            -webkit-transform: translate(0, -20px);
            transform: translate(0, -20px);
            visibility: hidden
        }
    }
    
    @keyframes hideIconsTop {
        0% {
            opacity: 1
        }
        50% {
            opacity: 1
        }
        100% {
            opacity: 0;
            -webkit-transform: translate(0, -20px);
            transform: translate(0, -20px);
            visibility: hidden
        }
    }
    
    .b24-widget-button-popup-name {
        font: 700 14px "Helvetica Neue", Arial, Helvetica, sans-serif;
        color: #000
    }
    
    .b24-widget-button-popup-description {
        margin: 4px 0 0 0;
        font: 13px "Helvetica Neue", Arial, Helvetica, sans-serif;
        color: #424956
    }
    
    .b24-widget-button-close-item {
        width: 28px;
        height: 28px;
        background-image: url("data:image/svg+xml;charset=US-ASCII,%3Csvg%20xmlns%3D%22http%3A//www.w3.org/2000/svg%22%20width%3D%2229%22%20height%3D%2229%22%20viewBox%3D%220%200%2029%2029%22%3E%3Cpath%20fill%3D%22%23FFF%22%20fill-rule%3D%22evenodd%22%20d%3D%22M18.866%2014.45l9.58-9.582L24.03.448l-9.587%209.58L4.873.447.455%204.866l9.575%209.587-9.583%209.57%204.418%204.42%209.58-9.577%209.58%209.58%204.42-4.42%22/%3E%3C/svg%3E");
        background-repeat: no-repeat;
        background-position: center;
        cursor: pointer
    }
    
    .b24-widget-button-wrapper.b24-widget-button-top {
        -webkit-box-orient: vertical;
        -webkit-box-direction: reverse;
        -ms-flex-direction: column-reverse;
        flex-direction: column-reverse
    }
    
    @-webkit-keyframes bottomOpen {
        0% {
            opacity: 0;
            -webkit-transform: translate(0, 20px);
            transform: translate(0, 20px)
        }
        100% {
            opacity: 1;
            -webkit-transform: translate(0, 0);
            transform: translate(0, 0)
        }
    }
    
    @keyframes bottomOpen {
        0% {
            opacity: 0;
            -webkit-transform: translate(0, 20px);
            transform: translate(0, 20px)
        }
        100% {
            opacity: 1;
            -webkit-transform: translate(0, 0);
            transform: translate(0, 0)
        }
    }
    
    @-webkit-keyframes topOpen {
        0% {
            opacity: 0;
            -webkit-transform: translate(0, -20px);
            transform: translate(0, -20px)
        }
        100% {
            opacity: 1;
            -webkit-transform: translate(0, 0);
            transform: translate(0, 0)
        }
    }
    
    @keyframes topOpen {
        0% {
            opacity: 0;
            -webkit-transform: translate(0, -20px);
            transform: translate(0, -20px)
        }
        100% {
            opacity: 1;
            -webkit-transform: translate(0, 0);
            transform: translate(0, 0)
        }
    }
    
    @-webkit-keyframes socialRotate {
        0% {
            -webkit-transform: rotate(-90deg);
            transform: rotate(-90deg)
        }
        100% {
            -webkit-transform: rotate(0);
            transform: rotate(0)
        }
    }
    
    @keyframes socialRotate {
        0% {
            -webkit-transform: rotate(-90deg);
            transform: rotate(-90deg)
        }
        100% {
            -webkit-transform: rotate(0);
            transform: rotate(0)
        }
    }
    
    @-webkit-keyframes socialRotateBack {
        0% {
            -webkit-transform: rotate(90deg);
            transform: rotate(90deg)
        }
        100% {
            -webkit-transform: rotate(0);
            transform: rotate(0)
        }
    }
    
    @keyframes socialRotateBack {
        0% {
            -webkit-transform: rotate(90deg);
            transform: rotate(90deg)
        }
        100% {
            -webkit-transform: rotate(0);
            transform: rotate(0)
        }
    }
    
    .b24-widget-button-popup {
        display: none;
        position: absolute;
        left: 100px;
        padding: 12px 20px 12px 14px;
        width: 312px;
        border: 2px solid #2fc7f7;
        background: #fff;
        border-radius: 15px;
        box-sizing: border-box;
        z-index: 1;
        cursor: pointer
    }
    
    .b24-widget-button-popup-triangle {
        position: absolute;
        display: block;
        width: 8px;
        height: 8px;
        background: #fff;
        border-right: 2px solid #2fc7f7;
        border-bottom: 2px solid #2fc7f7
    }
    
    .b24-widget-button-popup-show {
        display: block;
        -webkit-animation: show .4s linear forwards;
        animation: show .4s linear forwards
    }
    
    .b24-widget-button-position-top-left .b24-widget-button-popup-triangle {
        top: 19px;
        left: -6px;
        -webkit-transform: rotate(134deg);
        transform: rotate(134deg)
    }
    
    .b24-widget-button-position-bottom-left .b24-widget-button-popup-triangle {
        bottom: 25px;
        left: -6px;
        -webkit-transform: rotate(134deg);
        transform: rotate(134deg)
    }
    
    .b24-widget-button-position-bottom-left .b24-widget-button-popup,
    .b24-widget-button-position-bottom-middle .b24-widget-button-popup {
        bottom: 0;
        left: 75px
    }
    
    .b24-widget-button-position-bottom-right .b24-widget-button-popup-triangle {
        bottom: 25px;
        right: -6px;
        -webkit-transform: rotate(-45deg);
        transform: rotate(-45deg)
    }
    
    .b24-widget-button-position-bottom-right .b24-widget-button-popup {
        left: -320px;
        bottom: 0
    }
    
    .b24-widget-button-position-top-right .b24-widget-button-popup-triangle {
        top: 19px;
        right: -6px;
        -webkit-transform: rotate(-45deg);
        transform: rotate(-45deg)
    }
    
    .b24-widget-button-position-top-right .b24-widget-button-popup {
        top: 0;
        left: -320px
    }
    
    .b24-widget-button-position-top-middle .b24-widget-button-popup-triangle {
        top: 19px;
        left: -6px;
        -webkit-transform: rotate(134deg);
        transform: rotate(134deg)
    }
    
    .b24-widget-button-position-top-left .b24-widget-button-popup,
    .b24-widget-button-position-top-middle .b24-widget-button-popup {
        top: 0;
        left: 75px
    }
    
    .b24-widget-button-position-bottom-middle .b24-widget-button-popup-triangle {
        bottom: 25px;
        left: -6px;
        -webkit-transform: rotate(134deg);
        transform: rotate(134deg)
    }
    
    .bx-touch .b24-widget-button-popup {
        padding: 10px 22px 10px 15px
    }
    
    .bx-touch .b24-widget-button-popup {
        width: 230px
    }
    
    .bx-touch .b24-widget-button-position-bottom-left .b24-widget-button-popup {
        bottom: 90px;
        left: 0
    }
    
    .bx-touch .b24-widget-button-popup-image {
        margin: 0 auto 10px auto
    }
    
    .bx-touch .b24-widget-button-popup-content {
        text-align: center
    }
    
    .bx-touch .b24-widget-button-position-bottom-left .b24-widget-button-popup-triangle {
        bottom: -6px;
        left: 25px;
        -webkit-transform: rotate(45deg);
        transform: rotate(45deg)
    }
    
    .bx-touch .b24-widget-button-position-bottom-left .b24-widget-button-popup {
        bottom: 90px;
        left: 0
    }
    
    .bx-touch .b24-widget-button-position-bottom-right .b24-widget-button-popup {
        bottom: 90px;
        left: -160px
    }
    
    .bx-touch .b24-widget-button-position-bottom-right .b24-widget-button-popup-triangle {
        bottom: -6px;
        right: 30px;
        -webkit-transform: rotate(-45deg);
        transform: rotate(45deg)
    }
    
    .bx-touch .b24-widget-button-position-bottom-middle .b24-widget-button-popup {
        bottom: 90px;
        left: 50%;
        -webkit-transform: translate(-50%, 0);
        transform: translate(-50%, 0)
    }
    
    .bx-touch .b24-widget-button-position-bottom-middle .b24-widget-button-popup-triangle {
        bottom: -6px;
        left: 108px;
        -webkit-transform: rotate(134deg);
        transform: rotate(45deg)
    }
    
    .bx-touch .b24-widget-button-position-top-middle .b24-widget-button-popup {
        top: 90px;
        left: 50%;
        -webkit-transform: translate(-50%, 0);
        transform: translate(-50%, 0)
    }
    
    .bx-touch .b24-widget-button-position-top-middle .b24-widget-button-popup-triangle {
        top: -7px;
        left: auto;
        right: 108px;
        -webkit-transform: rotate(-135deg);
        transform: rotate(-135deg)
    }
    
    .bx-touch .b24-widget-button-position-top-left .b24-widget-button-popup {
        top: 90px;
        left: 0
    }
    
    .bx-touch .b24-widget-button-position-top-left .b24-widget-button-popup-triangle {
        left: 25px;
        top: -6px;
        -webkit-transform: rotate(-135deg);
        transform: rotate(-135deg)
    }
    
    .bx-touch .b24-widget-button-position-top-right .b24-widget-button-popup {
        top: 90px;
        left: -150px
    }
    
    .bx-touch .b24-widget-button-position-top-right .b24-widget-button-popup-triangle {
        top: -7px;
        right: 40px;
        -webkit-transform: rotate(-135deg);
        transform: rotate(-135deg)
    }
    
    .b24-widget-button-popup-btn-hide {
        position: absolute;
        top: 4px;
        right: 4px;
        display: inline-block;
        height: 20px;
        width: 20px;
        background-image: url("data:image/svg+xml;charset=US-ASCII,%3Csvg%20xmlns%3D%22http%3A//www.w3.org/2000/svg%22%20width%3D%2210%22%20height%3D%2210%22%20viewBox%3D%220%200%2010%2010%22%3E%3Cpath%20fill%3D%22%23525C68%22%20fill-rule%3D%22evenodd%22%20d%3D%22M6.41%205.07l2.867-2.864-1.34-1.34L5.07%203.73%202.207.867l-1.34%201.34L3.73%205.07.867%207.938l1.34%201.34L5.07%206.41l2.867%202.867%201.34-1.34L6.41%205.07z%22/%3E%3C/svg%3E");
        background-repeat: no-repeat;
        background-position: center;
        opacity: .2;
        -webkit-transition: opacity .3s;
        transition: opacity .3s;
        cursor: pointer
    }
    
    .b24-widget-button-popup-btn-hide:hover {
        opacity: 1
    }
    
    .bx-touch .b24-widget-button-popup-btn-hide {
        background-image: url("data:image/svg+xml;charset=US-ASCII,%3Csvg%20xmlns%3D%22http%3A//www.w3.org/2000/svg%22%20width%3D%2214%22%20height%3D%2214%22%20viewBox%3D%220%200%2014%2014%22%3E%3Cpath%20fill%3D%22%23525C68%22%20fill-rule%3D%22evenodd%22%20d%3D%22M8.36%207.02l5.34-5.34L12.36.34%207.02%205.68%201.68.34.34%201.68l5.34%205.34-5.34%205.342%201.34%201.34%205.34-5.34%205.34%205.34%201.34-1.34-5.34-5.34z%22/%3E%3C/svg%3E");
        background-repeat: no-repeat
    }
    
    .b24-widget-button-popup-inner {
        display: -webkit-box;
        display: -ms-flexbox;
        display: flex;
        -ms-flex-flow: row wrap;
        flex-flow: row wrap
    }
    
    .b24-widget-button-popup-content {
        width: 222px
    }
    
    .b24-widget-button-popup-image {
        margin: 0 10px 0 0;
        width: 42px;
        text-align: center
    }
    
    .b24-widget-button-popup-image-item {
        display: inline-block;
        width: 42px;
        height: 42px;
        border-radius: 100%;
        background-repeat: no-repeat;
        background-position: center;
        background-size: cover
    }
    
    .b24-widget-button-popup-button {
        margin: 15px 0 0 0;
        -webkit-box-flex: 1;
        -ms-flex: 1;
        flex: 1;
        text-align: center
    }
    
    .b24-widget-button-popup-button-item {
        display: inline-block;
        margin: 0 16px 0 0;
        font: 700 12px "Helvetica Neue", Arial, Helvetica, sans-serif;
        color: #08a6d8;
        text-transform: uppercase;
        border-bottom: 1px solid #08a6d8;
        -webkit-transition: border-bottom .3s;
        transition: border-bottom .3s;
        cursor: pointer
    }
    
    .b24-widget-button-popup-button-item:hover {
        border-bottom: 1px solid transparent
    }
    
    .b24-widget-button-popup-button-item:last-child {
        margin: 0
    }
    
    .b24-widget-button-pulse {
        position: absolute;
        top: 0;
        left: 0;
        bottom: 0;
        right: 0;
        border: 1px solid #00aeef;
        border-radius: 50%
    }
    
    .b24-widget-button-pulse-animate {
        -webkit-animation: widgetPulse infinite 1.5s;
        animation: widgetPulse infinite 1.5s
    }
    
    @-webkit-keyframes widgetPulse {
        50% {
            -webkit-transform: scale(1, 1);
            transform: scale(1, 1);
            opacity: 1
        }
        100% {
            -webkit-transform: scale(2, 2);
            transform: scale(2, 2);
            opacity: 0
        }
    }
    
    @keyframes widgetPulse {
        50% {
            -webkit-transform: scale(1, 1);
            transform: scale(1, 1);
            opacity: 1
        }
        100% {
            -webkit-transform: scale(2, 2);
            transform: scale(2, 2);
            opacity: 0
        }
    }
    
    @media(min-height:1024px) {
        .b24-widget-button-bottom .b24-widget-button-social,
        .b24-widget-button-top .b24-widget-button-social {
            max-height: 900px
        }
    }
    
    @media(max-height:768px) {
        .b24-widget-button-bottom .b24-widget-button-social,
        .b24-widget-button-top .b24-widget-button-social {
            max-height: 600px
        }
    }
    
    @media(max-height:667px) {
        .b24-widget-button-bottom .b24-widget-button-social,
        .b24-widget-button-top .b24-widget-button-social {
            max-height: 440px
        }
    }
    
    @media(max-height:568px) {
        .b24-widget-button-bottom .b24-widget-button-social,
        .b24-widget-button-top .b24-widget-button-social {
            max-height: 380px
        }
    }
    
    @media(max-height:480px) {
        .b24-widget-button-bottom .b24-widget-button-social,
        .b24-widget-button-top .b24-widget-button-social {
            max-height: 335px
        }
    }
    
    #sudovn-btn-social {
        opacity: 0;
        visibility: hidden;
        background: #fff;
        min-width: 300px;
        padding: 8px 0;
        position: absolute;
        bottom: 90px;
        border-radius: 8px;
    }
    
    .b24-widget-button-position-bottom-right #sudovn-btn-social {
        right: 0;
    }
    
    .b24-widget-button-position-bottom-left #sudovn-btn-social {
        left: 0;
    }
    
    #sudovn-btn-social:before {
        position: absolute;
        bottom: -7px;
        left: auto;
        display: inline-block !important;
        border-right: 8px solid transparent;
        border-top: 8px solid #FFFFFF;
        border-left: 8px solid transparent;
        content: "";
    }
    
    .b24-widget-button-position-bottom-right #sudovn-btn-social:before {
        right: 25px;
    }
    
    .b24-widget-button-position-bottom-left #sudovn-btn-social:before {
        left: 25px;
    }
    
    .sudovn-btn-social-item {
        display: block;
        color: #333;
        overflow: hidden;
        text-decoration: none;
        padding: .5rem 1rem
    }
    
    .sudovn-btn-social-item:hover {
        background: #f2f2f2
    }
    
    .sudovn-btn-social-item-icon {
        float: left;
        margin-right: 5px
    }
    
    .sudovn-btn-social-item-icon img {
        width: 40px;
        height: 40px
    }
    
    .sudovn-btn-social-item-label {
        height: 40px;
        line-height: 40px;
        color: #333;
        margin: 0;
        font-size: 1.1em
    }
    
    .sudovn-credit {
        text-align: center;
        margin-top: 8px;
    }
    
    .sudovn-credit a {
        transition: none;
        color: #bec2c9;
        font-family: Helvetica, Arial, sans-serif;
        font-size: 12px;
        text-decoration: none;
        border: 0;
        font-weight: 400;
    }
    
    #sudovn-btn-title {
        background: #0000ff;
        padding: 2px 5px;
        border-radius: 3px;
        color: #fff;
        position: relative;
        bottom: 42px;
    }
    
    .b24-widget-button-position-bottom-right #sudovn-btn-title {
        right: 70px;
    }
    
    .b24-widget-button-position-bottom-left #sudovn-btn-title {
        left: 70px;
    }
    
    .b24-widget-button-wrapper {
        bottom: 0px !important;
    }
</style>
<div>
    <div data-b24-crm-button-shadow="" class="b24-widget-button-shadow" id="sudovn-btn-shadow"></div>
    <div dir="ltr" data-b24-crm-button-cont="" class="b24-widget-button-wrapper b24-widget-button-position-bottom-right b24-widget-button-visible" id="sudovn-btn-wrapper">
        <div id="sudovn-btn-title">Bạn cần hỗ trợ?</div>
        <div id="sudovn-btn-social">
            <a href="tel:0582270720" target="_blank" rel="nofollow" class="sudovn-btn-social-item">
                <div class="sudovn-btn-social-item-icon"><img src="data:image/png;base64,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"></div>
                <div
                    class="sudovn-btn-social-item-label">Hotline là đường dây nóng</div>
        </a>
        <a href="https://zalo.me/0582270720" target="_blank" rel="nofollow" class="sudovn-btn-social-item">
            <div class="sudovn-btn-social-item-icon"><svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="40" height="40" viewBox="0 0 172 172" style="fill:#000"><g fill="none" fill-rule="nonzero" stroke="none" stroke-width="1" stroke-linecap="butt" stroke-linejoin="miter" stroke-miterlimit="10" stroke-dasharray="" stroke-dashoffset="0" font-family="none" font-weight="none" font-size="none" text-anchor="none" style="mix-blend-mode:normal"><path d="M0,172v-172h172v172z" fill="none"></path><g fill="#3498db"><path d="M30.96,13.76c-9.45834,0 -17.2,7.74166 -17.2,17.2v110.08c0,9.45834 7.74166,17.2 17.2,17.2h110.08c9.45834,0 17.2,-7.74166 17.2,-17.2v-110.08c0,-9.45834 -7.74166,-17.2 -17.2,-17.2zM30.96,20.64h22.63547c-12.28454,12.78196 -19.19547,29.30221 -19.19547,46.44c0,17.7504 7.25894,34.74346 20.33094,47.60906c0.4128,0.7224 0.756,4.26452 -0.8264,8.35812c-0.9976,2.58 -2.99361,5.94986 -6.8464,7.22266c-1.4792,0.4816 -2.44133,1.93231 -2.33813,3.48031c0.1032,1.548 1.24109,2.85493 2.75469,3.16453c9.8728,1.9608 16.2661,-1.00002 21.4261,-3.33922c4.644,-2.1328 7.71017,-3.57921 12.42297,-1.65281c9.632,3.7496 19.88105,5.67735 30.47625,5.67735c14.08228,0 27.62822,-3.43749 39.56,-9.93031v13.37031c0,5.73958 -4.58042,10.32 -10.32,10.32h-110.08c-5.73958,0 -10.32,-4.58042 -10.32,-10.32v-110.08c0,-5.73958 4.58042,-10.32 10.32,-10.32zM113.52,51.6c1.892,0 3.44,1.548 3.44,3.44v30.96c0,1.892 -1.548,3.44 -3.44,3.44c-1.892,0 -3.44,-1.548 -3.44,-3.44v-30.96c0,-1.892 1.548,-3.44 3.44,-3.44zM61.92,55.04h17.2c1.2384,0 2.41095,0.68639 3.03015,1.78719c0.5848,1.0664 0.5461,2.4072 -0.1075,3.4736l-13.92797,22.25922h11.00531c1.892,0 3.44,1.548 3.44,3.44c0,1.892 -1.548,3.44 -3.44,3.44h-17.2c-1.2384,0 -2.41095,-0.68639 -3.03015,-1.78719c-0.5848,-1.0664 -0.5461,-2.4072 0.1075,-3.4736l13.92797,-22.25922h-11.00531c-1.892,0 -3.44,-1.548 -3.44,-3.44c0,-1.892 1.548,-3.44 3.44,-3.44zM94.6,65.36c2.0984,0 4.05732,0.58211 5.81172,1.54531c0.6192,-0.8944 1.58428,-1.54531 2.78828,-1.54531c1.892,0 3.44,1.548 3.44,3.44v17.2c0,1.892 -1.548,3.44 -3.44,3.44c-1.204,0 -2.16908,-0.65091 -2.78828,-1.54531c-1.7544,0.9632 -3.71332,1.54531 -5.81172,1.54531c-6.6392,0 -12.04,-5.4008 -12.04,-12.04c0,-6.6392 5.4008,-12.04 12.04,-12.04zM132.44,65.36c6.6392,0 12.04,5.4008 12.04,12.04c0,6.6392 -5.4008,12.04 -12.04,12.04c-6.6392,0 -12.04,-5.4008 -12.04,-12.04c0,-6.6392 5.4008,-12.04 12.04,-12.04zM94.6,72.24c-0.3569,0 -0.70513,0.0389 -1.0414,0.1075c-0.67255,0.1372 -1.29873,0.40218 -1.84766,0.77265c-0.54892,0.37047 -1.02031,0.84186 -1.39078,1.39078c-0.37047,0.54892 -0.63546,1.17511 -0.77265,1.84766c-0.0686,0.33627 -0.1075,0.6845 -0.1075,1.0414c0,0.3569 0.0389,0.70513 0.1075,1.0414c0.0686,0.33627 0.16528,0.65871 0.29563,0.9675c0.13034,0.3088 0.29179,0.6057 0.47703,0.88016c0.18524,0.27446 0.39829,0.52594 0.63156,0.75922c0.23328,0.23327 0.48476,0.44633 0.75922,0.63156c0.54892,0.37047 1.17511,0.63546 1.84766,0.77265c0.33627,0.0686 0.6845,0.1075 1.0414,0.1075c0.3569,0 0.70513,-0.0389 1.0414,-0.1075c2.35392,-0.48019 4.1186,-2.5542 4.1186,-5.0525c0,-2.8552 -2.3048,-5.16 -5.16,-5.16zM132.44,72.24c-0.3569,0 -0.70513,0.0389 -1.0414,0.1075c-0.33627,0.0686 -0.65871,0.16528 -0.9675,0.29563c-0.3088,0.13034 -0.6057,0.29179 -0.88016,0.47703c-0.27446,0.18524 -0.52594,0.39829 -0.75922,0.63156c-0.46655,0.46655 -0.8479,1.02179 -1.10859,1.63938c-0.13035,0.30879 -0.22703,0.63123 -0.29563,0.9675c-0.0686,0.33627 -0.1075,0.6845 -0.1075,1.0414c0,0.3569 0.0389,0.70513 0.1075,1.0414c0.0686,0.33627 0.16528,0.65871 0.29563,0.9675c0.13034,0.3088 0.29179,0.6057 0.47703,0.88016c0.18524,0.27446 0.39829,0.52594 0.63156,0.75922c0.23328,0.23327 0.48476,0.44633 0.75922,0.63156c0.27446,0.18523 0.57136,0.34669 0.88016,0.47703c0.30879,0.13035 0.63123,0.22703 0.9675,0.29563c0.33627,0.0686 0.6845,0.1075 1.0414,0.1075c0.3569,0 0.70513,-0.0389 1.0414,-0.1075c2.35392,-0.48019 4.1186,-2.5542 4.1186,-5.0525c0,-2.8552 -2.3048,-5.16 -5.16,-5.16z"></path></g></g></svg></div>
            <div
                class="sudovn-btn-social-item-label">Zalo</div>
    </a>
    <a href="https://m.me/102754292754262" target="_blank" rel="nofollow" class="sudovn-btn-social-item">
        <div class="sudovn-btn-social-item-icon"><img src="data:image/png;base64,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"></div>
        <div
            class="sudovn-btn-social-item-label">Messenger</div>
</a>
<div class="sudovn-credit">Powered by <a href="https://www.facebook.com/boon.real.kua.ok" target="_blank" rel="nofollow">Kua</a></div>
</div>
<div data-b24-crm-button-block-button="" class="b24-widget-button-inner-container" id="sudovn-btn-inner-container">
    <div data-b24-crm-button-block-border="" class="b24-widget-button-inner-mask" style="background:#0000ff"></div>
    <div class="b24-widget-button-block">
        <div data-b24-crm-button-pulse="" class="b24-widget-button-pulse b24-widget-button-pulse-animate" style="border-color:#0000ff"></div>
        <div data-b24-crm-button-block-inner="" class="b24-widget-button-inner-block" style="background:#0000ff">
            <div class="b24-widget-button-icon-container" id="sudovn-btn-icon-container">
                <div data-b24-crm-button-icon="crmform" class="b24-widget-button-inner-item" style="display:none"><svg class="b24-crm-button-icon" xmlns="http://www.w3.org/2000/svg" width="28" height="28" viewBox="0 0 24 28"><path class="b24-crm-button-webform-icon" fill=" #FFFFFF" fill-rule="evenodd" d="M815.406703,961 L794.305503,961 C793.586144,961 793,961.586144 793,962.305503 L793,983.406703 C793,984.126062 793.586144,984.712206 794.305503,984.712206 L815.406703,984.712206 C816.126062,984.712206 816.712206,984.126062 816.712206,983.406703 L816.712206,962.296623 C816.703325,961.586144 816.117181,961 815.406703,961 L815.406703,961 Z M806.312583,979.046143 C806.312583,979.454668 805.975106,979.783264 805.575462,979.783264 L796.898748,979.783264 C796.490224,979.783264 796.161627,979.445787 796.161627,979.046143 L796.161627,977.412044 C796.161627,977.003519 796.499105,976.674923 796.898748,976.674923 L805.575462,976.674923 C805.983987,976.674923 806.312583,977.0124 806.312583,977.412044 L806.312583,979.046143 L806.312583,979.046143 Z M813.55946,973.255747 C813.55946,973.664272 813.221982,973.992868 812.822339,973.992868 L796.889868,973.992868 C796.481343,973.992868 796.152746,973.655391 796.152746,973.255747 L796.152746,971.621647 C796.152746,971.213122 796.490224,970.884526 796.889868,970.884526 L812.813458,970.884526 C813.221982,970.884526 813.550579,971.222003 813.550579,971.621647 L813.550579,973.255747 L813.55946,973.255747 Z M813.55946,967.45647 C813.55946,967.864994 813.221982,968.193591 812.822339,968.193591 L796.889868,968.193591 C796.481343,968.193591 796.152746,967.856114 796.152746,967.45647 L796.152746,965.82237 C796.152746,965.413845 796.490224,965.085249 796.889868,965.085249 L812.813458,965.085249 C813.221982,965.085249 813.550579,965.422726 813.550579,965.82237 L813.550579,967.45647 L813.55946,967.45647 Z" transform="translate(-793 -961)"></path></svg></div>
                <div
                    data-b24-crm-button-icon="callback" class="b24-widget-button-inner-item" style="display:none"><svg class="b24-crm-button-icon" xmlns="http://www.w3.org/2000/svg" width="28" height="28" viewBox="0 0 28 30"><path class="b24-crm-button-call-icon" fill="#FFFFFF" fill-rule="evenodd" d="M940.872414,978.904882 C939.924716,977.937215 938.741602,977.937215 937.79994,978.904882 C937.08162,979.641558 936.54439,979.878792 935.838143,980.627954 C935.644982,980.833973 935.482002,980.877674 935.246586,980.740328 C934.781791,980.478121 934.286815,980.265859 933.840129,979.97868 C931.757607,978.623946 930.013117,976.882145 928.467826,974.921839 C927.701216,973.947929 927.019115,972.905345 926.542247,971.731659 C926.445666,971.494424 926.463775,971.338349 926.6509,971.144815 C927.36922,970.426869 927.610672,970.164662 928.316918,969.427987 C929.300835,968.404132 929.300835,967.205474 928.310882,966.175376 C927.749506,965.588533 927.206723,964.77769 926.749111,964.14109 C926.29156,963.50449 925.932581,962.747962 925.347061,962.154875 C924.399362,961.199694 923.216248,961.199694 922.274586,962.161118 C921.55023,962.897794 920.856056,963.653199 920.119628,964.377388 C919.437527,965.045391 919.093458,965.863226 919.021022,966.818407 C918.906333,968.372917 919.274547,969.840026 919.793668,971.269676 C920.856056,974.228864 922.473784,976.857173 924.43558,979.266977 C927.085514,982.52583 930.248533,985.104195 933.948783,986.964613 C935.6148,987.801177 937.341181,988.444207 939.218469,988.550339 C940.510236,988.625255 941.632988,988.288132 942.532396,987.245549 C943.148098,986.533845 943.842272,985.884572 944.494192,985.204083 C945.459999,984.192715 945.466036,982.969084 944.506265,981.970202 C943.359368,980.777786 942.025347,980.091055 940.872414,978.904882 Z M940.382358,973.54478 L940.649524,973.497583 C941.23257,973.394635 941.603198,972.790811 941.439977,972.202844 C940.97488,970.527406 940.107887,969.010104 938.90256,967.758442 C937.61538,966.427182 936.045641,965.504215 934.314009,965.050223 C933.739293,964.899516 933.16512,965.298008 933.082785,965.905204 L933.044877,966.18514 C932.974072,966.707431 933.297859,967.194823 933.791507,967.32705 C935.117621,967.682278 936.321439,968.391422 937.308977,969.412841 C938.23579,970.371393 938.90093,971.53815 939.261598,972.824711 C939.401641,973.324464 939.886476,973.632369 940.382358,973.54478 Z M942.940854,963.694228 C940.618932,961.29279 937.740886,959.69052 934.559939,959.020645 C934.000194,958.902777 933.461152,959.302642 933.381836,959.8878 L933.343988,960.167112 C933.271069,960.705385 933.615682,961.208072 934.130397,961.317762 C936.868581,961.901546 939.347628,963.286122 941.347272,965.348626 C943.231864,967.297758 944.53673,969.7065 945.149595,972.360343 C945.27189,972.889813 945.766987,973.232554 946.285807,973.140969 L946.55074,973.094209 C947.119782,972.993697 947.484193,972.415781 947.350127,971.835056 C946.638568,968.753629 945.126778,965.960567 942.940854,963.694228 Z" transform="translate(-919 -959)"></path></svg></div>
            <div
                data-b24-crm-button-icon="openline" class="b24-widget-button-inner-item b24-widget-button-icon-animation"><svg class="b24-crm-button-icon b24-crm-button-icon-active" xmlns="http://www.w3.org/2000/svg" width="28" height="28" viewBox="0 0 28 29"><path class="b24-crm-button-chat-icon" fill="#FFFFFF" fill-rule="evenodd" d="M878.289968,975.251189 L878.289968,964.83954 C878.289968,963.46238 876.904379,962 875.495172,962 L857.794796,962 C856.385491,962 855,963.46238 855,964.83954 L855,975.251189 C855,976.924031 856.385491,978.386204 857.794796,978.090729 L860.589592,978.090729 L860.589592,981.876783 L860.589592,983.76981 L861.521191,983.76981 C861.560963,983.76981 861.809636,982.719151 862.45279,982.823297 L866.179185,978.090729 L875.495172,978.090729 C876.904379,978.386204 878.289968,976.924031 878.289968,975.251189 Z M881.084764,971.465135 L881.084764,976.197702 C881.43316,978.604561 879.329051,980.755508 876.426771,980.93027 L868.042382,980.93027 L866.179185,982.823297 C866.400357,983.946455 867.522357,984.94992 868.973981,984.716324 L876.426771,984.716324 L879.221567,988.502377 C879.844559,988.400361 880.153166,989.448891 880.153166,989.448891 L881.084764,989.448891 L881.084764,987.555864 L881.084764,984.716324 L882.947962,984.716324 C884.517696,984.949819 885.742758,983.697082 885.742758,981.876783 L885.742758,974.304675 C885.742659,972.717669 884.517597,971.465135 882.947962,971.465135 L881.084764,971.465135 Z" transform="translate(-855 -962)"></path></svg></div>
    </div>
    <div class="b24-widget-button-inner-item b24-widget-button-close" id="sudovn-btn-close"><svg class="b24-widget-button-icon b24-widget-button-close-item" xmlns="http://www.w3.org/2000/svg" width="29" height="29" viewBox="0 0 29 29"><path fill="#FFF" fill-rule="evenodd" d="M18.866 14.45l9.58-9.582L24.03.448l-9.587 9.58L4.873.447.455 4.866l9.575 9.587-9.583 9.57 4.418 4.42 9.58-9.577 9.58 9.58 4.42-4.42"></path></svg></div>
</div>
</div>
</div>
</div>
</div>
<script type="text/javascript">
    document.getElementById("sudovn-btn-icon-container").addEventListener("click", function() {
        document.getElementById("sudovn-btn-social").classList.remove("b24-widget-button-hide"), document.getElementById("sudovn-btn-social").classList.add("b24-widget-button-show"), document.getElementById("sudovn-btn-shadow").classList.remove("b24-widget-button-hide"), document.getElementById("sudovn-btn-shadow").classList.add("b24-widget-button-show"), document.getElementById("sudovn-btn-wrapper").classList.add("b24-widget-button-bottom")
    }), document.getElementById("sudovn-btn-close").addEventListener("click", function() {
        document.getElementById("sudovn-btn-social").classList.remove("b24-widget-button-show"), document.getElementById("sudovn-btn-social").classList.add("b24-widget-button-hide"), document.getElementById("sudovn-btn-shadow").classList.remove("b24-widget-button-show"), document.getElementById("sudovn-btn-shadow").classList.add("b24-widget-button-hide"), document.getElementById("sudovn-btn-wrapper").classList.remove("b24-widget-button-bottom")
    });
</script>