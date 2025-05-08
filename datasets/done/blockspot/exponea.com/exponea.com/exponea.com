<!doctype html>
<html lang="en-US" prefix="og: https://ogp.me/ns#">
<head><meta charset="UTF-8"><script>if(navigator.userAgent.match(/MSIE|Internet Explorer/i)||navigator.userAgent.match(/Trident\/7\..*?rv:11/i)){var href=document.location.href;if(!href.match(/[?&]nowprocket/)){if(href.indexOf("?")==-1){if(href.indexOf("#")==-1){document.location.href=href+"?nowprocket=1"}else{document.location.href=href.replace("#","?nowprocket=1#")}}else{if(href.indexOf("#")==-1){document.location.href=href+"&nowprocket=1"}else{document.location.href=href.replace("#","&nowprocket=1#")}}}}</script><script>(()=>{class RocketLazyLoadScripts{constructor(){this.v="2.0.3",this.userEvents=["keydown","keyup","mousedown","mouseup","mousemove","mouseover","mouseenter","mouseout","mouseleave","touchmove","touchstart","touchend","touchcancel","wheel","click","dblclick","input","visibilitychange"],this.attributeEvents=["onblur","onclick","oncontextmenu","ondblclick","onfocus","onmousedown","onmouseenter","onmouseleave","onmousemove","onmouseout","onmouseover","onmouseup","onmousewheel","onscroll","onsubmit"]}async t(){this.i(),this.o(),/iP(ad|hone)/.test(navigator.userAgent)&&this.h(),this.u(),this.l(this),this.m(),this.k(this),this.p(this),this._(),await Promise.all([this.R(),this.L()]),this.lastBreath=Date.now(),this.S(this),this.P(),this.D(),this.O(),this.M(),await this.C(this.delayedScripts.normal),await this.C(this.delayedScripts.defer),await this.C(this.delayedScripts.async),this.F("domReady"),await this.T(),await this.j(),await this.I(),this.F("windowLoad"),await this.A(),window.dispatchEvent(new Event("rocket-allScriptsLoaded")),this.everythingLoaded=!0,this.lastTouchEnd&&await new Promise((t=>setTimeout(t,500-Date.now()+this.lastTouchEnd))),this.H(),this.F("all"),this.U(),this.W()}i(){this.CSPIssue=sessionStorage.getItem("rocketCSPIssue"),document.addEventListener("securitypolicyviolation",(t=>{this.CSPIssue||"script-src-elem"!==t.violatedDirective||"data"!==t.blockedURI||(this.CSPIssue=!0,sessionStorage.setItem("rocketCSPIssue",!0))}),{isRocket:!0})}o(){window.addEventListener("pageshow",(t=>{this.persisted=t.persisted,this.realWindowLoadedFired=!0}),{isRocket:!0}),window.addEventListener("pagehide",(()=>{this.onFirstUserAction=null}),{isRocket:!0})}h(){let t;function e(e){t=e}window.addEventListener("touchstart",e,{isRocket:!0}),window.addEventListener("touchend",(function i(o){Math.abs(o.changedTouches[0].pageX-t.changedTouches[0].pageX)<10&&Math.abs(o.changedTouches[0].pageY-t.changedTouches[0].pageY)<10&&o.timeStamp-t.timeStamp<200&&(o.target.dispatchEvent(new PointerEvent("click",{target:o.target,bubbles:!0,cancelable:!0,detail:1})),event.preventDefault(),window.removeEventListener("touchstart",e,{isRocket:!0}),window.removeEventListener("touchend",i,{isRocket:!0}))}),{isRocket:!0})}q(t){this.userActionTriggered||("mousemove"!==t.type||this.firstMousemoveIgnored?"keyup"===t.type||"mouseover"===t.type||"mouseout"===t.type||(this.userActionTriggered=!0,this.onFirstUserAction&&this.onFirstUserAction()):this.firstMousemoveIgnored=!0),"click"===t.type&&t.preventDefault(),this.savedUserEvents.length>0&&(t.stopPropagation(),t.stopImmediatePropagation()),"touchstart"===this.lastEvent&&"touchend"===t.type&&(this.lastTouchEnd=Date.now()),"click"===t.type&&(this.lastTouchEnd=0),this.lastEvent=t.type,this.savedUserEvents.push(t)}u(){this.savedUserEvents=[],this.userEventHandler=this.q.bind(this),this.userEvents.forEach((t=>window.addEventListener(t,this.userEventHandler,{passive:!1,isRocket:!0})))}U(){this.userEvents.forEach((t=>window.removeEventListener(t,this.userEventHandler,{passive:!1,isRocket:!0}))),this.savedUserEvents.forEach((t=>{t.target.dispatchEvent(new window[t.constructor.name](t.type,t))}))}m(){this.eventsMutationObserver=new MutationObserver((t=>{const e="return false";for(const i of t){if("attributes"===i.type){const t=i.target.getAttribute(i.attributeName);t&&t!==e&&(i.target.setAttribute("data-rocket-"+i.attributeName,t),i.target["rocket"+i.attributeName]=new Function("event",t),i.target.setAttribute(i.attributeName,e))}"childList"===i.type&&i.addedNodes.forEach((t=>{if(t.nodeType===Node.ELEMENT_NODE)for(const i of t.attributes)this.attributeEvents.includes(i.name)&&i.value&&""!==i.value&&(t.setAttribute("data-rocket-"+i.name,i.value),t["rocket"+i.name]=new Function("event",i.value),t.setAttribute(i.name,e))}))}})),this.eventsMutationObserver.observe(document,{subtree:!0,childList:!0,attributeFilter:this.attributeEvents})}H(){this.eventsMutationObserver.disconnect(),this.attributeEvents.forEach((t=>{document.querySelectorAll("[data-rocket-"+t+"]").forEach((e=>{e.setAttribute(t,e.getAttribute("data-rocket-"+t)),e.removeAttribute("data-rocket-"+t)}))}))}k(t){Object.defineProperty(HTMLElement.prototype,"onclick",{get(){return this.rocketonclick||null},set(e){this.rocketonclick=e,this.setAttribute(t.everythingLoaded?"onclick":"data-rocket-onclick","this.rocketonclick(event)")}})}S(t){function e(e,i){let o=e[i];e[i]=null,Object.defineProperty(e,i,{get:()=>o,set(s){t.everythingLoaded?o=s:e["rocket"+i]=o=s}})}e(document,"onreadystatechange"),e(window,"onload"),e(window,"onpageshow");try{Object.defineProperty(document,"readyState",{get:()=>t.rocketReadyState,set(e){t.rocketReadyState=e},configurable:!0}),document.readyState="loading"}catch(t){console.log("WPRocket DJE readyState conflict, bypassing")}}l(t){this.originalAddEventListener=EventTarget.prototype.addEventListener,this.originalRemoveEventListener=EventTarget.prototype.removeEventListener,this.savedEventListeners=[],EventTarget.prototype.addEventListener=function(e,i,o){o&&o.isRocket||!t.B(e,this)&&!t.userEvents.includes(e)||t.B(e,this)&&!t.userActionTriggered||e.startsWith("rocket-")||t.everythingLoaded?t.originalAddEventListener.call(this,e,i,o):t.savedEventListeners.push({target:this,remove:!1,type:e,func:i,options:o})},EventTarget.prototype.removeEventListener=function(e,i,o){o&&o.isRocket||!t.B(e,this)&&!t.userEvents.includes(e)||t.B(e,this)&&!t.userActionTriggered||e.startsWith("rocket-")||t.everythingLoaded?t.originalRemoveEventListener.call(this,e,i,o):t.savedEventListeners.push({target:this,remove:!0,type:e,func:i,options:o})}}F(t){"all"===t&&(EventTarget.prototype.addEventListener=this.originalAddEventListener,EventTarget.prototype.removeEventListener=this.originalRemoveEventListener),this.savedEventListeners=this.savedEventListeners.filter((e=>{let i=e.type,o=e.target||window;return"domReady"===t&&"DOMContentLoaded"!==i&&"readystatechange"!==i||("windowLoad"===t&&"load"!==i&&"readystatechange"!==i&&"pageshow"!==i||(this.B(i,o)&&(i="rocket-"+i),e.remove?o.removeEventListener(i,e.func,e.options):o.addEventListener(i,e.func,e.options),!1))}))}p(t){let e;function i(e){return t.everythingLoaded?e:e.split(" ").map((t=>"load"===t||t.startsWith("load.")?"rocket-jquery-load":t)).join(" ")}function o(o){function s(e){const s=o.fn[e];o.fn[e]=o.fn.init.prototype[e]=function(){return this[0]===window&&t.userActionTriggered&&("string"==typeof arguments[0]||arguments[0]instanceof String?arguments[0]=i(arguments[0]):"object"==typeof arguments[0]&&Object.keys(arguments[0]).forEach((t=>{const e=arguments[0][t];delete arguments[0][t],arguments[0][i(t)]=e}))),s.apply(this,arguments),this}}if(o&&o.fn&&!t.allJQueries.includes(o)){const e={DOMContentLoaded:[],"rocket-DOMContentLoaded":[]};for(const t in e)document.addEventListener(t,(()=>{e[t].forEach((t=>t()))}),{isRocket:!0});o.fn.ready=o.fn.init.prototype.ready=function(i){function s(){parseInt(o.fn.jquery)>2?setTimeout((()=>i.bind(document)(o))):i.bind(document)(o)}return t.realDomReadyFired?!t.userActionTriggered||t.fauxDomReadyFired?s():e["rocket-DOMContentLoaded"].push(s):e.DOMContentLoaded.push(s),o([])},s("on"),s("one"),s("off"),t.allJQueries.push(o)}e=o}t.allJQueries=[],o(window.jQuery),Object.defineProperty(window,"jQuery",{get:()=>e,set(t){o(t)}})}P(){const t=new Map;document.write=document.writeln=function(e){const i=document.currentScript,o=document.createRange(),s=i.parentElement;let n=t.get(i);void 0===n&&(n=i.nextSibling,t.set(i,n));const c=document.createDocumentFragment();o.setStart(c,0),c.appendChild(o.createContextualFragment(e)),s.insertBefore(c,n)}}async R(){return new Promise((t=>{this.userActionTriggered?t():this.onFirstUserAction=t}))}async L(){return new Promise((t=>{document.addEventListener("DOMContentLoaded",(()=>{this.realDomReadyFired=!0,t()}),{isRocket:!0})}))}async I(){return this.realWindowLoadedFired?Promise.resolve():new Promise((t=>{window.addEventListener("load",t,{isRocket:!0})}))}M(){this.pendingScripts=[];this.scriptsMutationObserver=new MutationObserver((t=>{for(const e of t)e.addedNodes.forEach((t=>{"SCRIPT"!==t.tagName||t.noModule||t.isWPRocket||this.pendingScripts.push({script:t,promise:new Promise((e=>{const i=()=>{const i=this.pendingScripts.findIndex((e=>e.script===t));i>=0&&this.pendingScripts.splice(i,1),e()};t.addEventListener("load",i,{isRocket:!0}),t.addEventListener("error",i,{isRocket:!0}),setTimeout(i,1e3)}))})}))})),this.scriptsMutationObserver.observe(document,{childList:!0,subtree:!0})}async j(){await this.J(),this.pendingScripts.length?(await this.pendingScripts[0].promise,await this.j()):this.scriptsMutationObserver.disconnect()}D(){this.delayedScripts={normal:[],async:[],defer:[]},document.querySelectorAll("script[type$=rocketlazyloadscript]").forEach((t=>{t.hasAttribute("data-rocket-src")?t.hasAttribute("async")&&!1!==t.async?this.delayedScripts.async.push(t):t.hasAttribute("defer")&&!1!==t.defer||"module"===t.getAttribute("data-rocket-type")?this.delayedScripts.defer.push(t):this.delayedScripts.normal.push(t):this.delayedScripts.normal.push(t)}))}async _(){await this.L();let t=[];document.querySelectorAll("script[type$=rocketlazyloadscript][data-rocket-src]").forEach((e=>{let i=e.getAttribute("data-rocket-src");if(i&&!i.startsWith("data:")){i.startsWith("//")&&(i=location.protocol+i);try{const o=new URL(i).origin;o!==location.origin&&t.push({src:o,crossOrigin:e.crossOrigin||"module"===e.getAttribute("data-rocket-type")})}catch(t){}}})),t=[...new Map(t.map((t=>[JSON.stringify(t),t]))).values()],this.N(t,"preconnect")}async $(t){if(await this.G(),!0!==t.noModule||!("noModule"in HTMLScriptElement.prototype))return new Promise((e=>{let i;function o(){(i||t).setAttribute("data-rocket-status","executed"),e()}try{if(navigator.userAgent.includes("Firefox/")||""===navigator.vendor||this.CSPIssue)i=document.createElement("script"),[...t.attributes].forEach((t=>{let e=t.nodeName;"type"!==e&&("data-rocket-type"===e&&(e="type"),"data-rocket-src"===e&&(e="src"),i.setAttribute(e,t.nodeValue))})),t.text&&(i.text=t.text),t.nonce&&(i.nonce=t.nonce),i.hasAttribute("src")?(i.addEventListener("load",o,{isRocket:!0}),i.addEventListener("error",(()=>{i.setAttribute("data-rocket-status","failed-network"),e()}),{isRocket:!0}),setTimeout((()=>{i.isConnected||e()}),1)):(i.text=t.text,o()),i.isWPRocket=!0,t.parentNode.replaceChild(i,t);else{const i=t.getAttribute("data-rocket-type"),s=t.getAttribute("data-rocket-src");i?(t.type=i,t.removeAttribute("data-rocket-type")):t.removeAttribute("type"),t.addEventListener("load",o,{isRocket:!0}),t.addEventListener("error",(i=>{this.CSPIssue&&i.target.src.startsWith("data:")?(console.log("WPRocket: CSP fallback activated"),t.removeAttribute("src"),this.$(t).then(e)):(t.setAttribute("data-rocket-status","failed-network"),e())}),{isRocket:!0}),s?(t.fetchPriority="high",t.removeAttribute("data-rocket-src"),t.src=s):t.src="data:text/javascript;base64,"+window.btoa(unescape(encodeURIComponent(t.text)))}}catch(i){t.setAttribute("data-rocket-status","failed-transform"),e()}}));t.setAttribute("data-rocket-status","skipped")}async C(t){const e=t.shift();return e?(e.isConnected&&await this.$(e),this.C(t)):Promise.resolve()}O(){this.N([...this.delayedScripts.normal,...this.delayedScripts.defer,...this.delayedScripts.async],"preload")}N(t,e){this.trash=this.trash||[];let i=!0;var o=document.createDocumentFragment();t.forEach((t=>{const s=t.getAttribute&&t.getAttribute("data-rocket-src")||t.src;if(s&&!s.startsWith("data:")){const n=document.createElement("link");n.href=s,n.rel=e,"preconnect"!==e&&(n.as="script",n.fetchPriority=i?"high":"low"),t.getAttribute&&"module"===t.getAttribute("data-rocket-type")&&(n.crossOrigin=!0),t.crossOrigin&&(n.crossOrigin=t.crossOrigin),t.integrity&&(n.integrity=t.integrity),t.nonce&&(n.nonce=t.nonce),o.appendChild(n),this.trash.push(n),i=!1}})),document.head.appendChild(o)}W(){this.trash.forEach((t=>t.remove()))}async T(){try{document.readyState="interactive"}catch(t){}this.fauxDomReadyFired=!0;try{await this.G(),document.dispatchEvent(new Event("rocket-readystatechange")),await this.G(),document.rocketonreadystatechange&&document.rocketonreadystatechange(),await this.G(),document.dispatchEvent(new Event("rocket-DOMContentLoaded")),await this.G(),window.dispatchEvent(new Event("rocket-DOMContentLoaded"))}catch(t){console.error(t)}}async A(){try{document.readyState="complete"}catch(t){}try{await this.G(),document.dispatchEvent(new Event("rocket-readystatechange")),await this.G(),document.rocketonreadystatechange&&document.rocketonreadystatechange(),await this.G(),window.dispatchEvent(new Event("rocket-load")),await this.G(),window.rocketonload&&window.rocketonload(),await this.G(),this.allJQueries.forEach((t=>t(window).trigger("rocket-jquery-load"))),await this.G();const t=new Event("rocket-pageshow");t.persisted=this.persisted,window.dispatchEvent(t),await this.G(),window.rocketonpageshow&&window.rocketonpageshow({persisted:this.persisted})}catch(t){console.error(t)}}async G(){Date.now()-this.lastBreath>45&&(await this.J(),this.lastBreath=Date.now())}async J(){return document.hidden?new Promise((t=>setTimeout(t))):new Promise((t=>requestAnimationFrame(t)))}B(t,e){return e===document&&"readystatechange"===t||(e===document&&"DOMContentLoaded"===t||(e===window&&"DOMContentLoaded"===t||(e===window&&"load"===t||e===window&&"pageshow"===t)))}static run(){(new RocketLazyLoadScripts).t()}}RocketLazyLoadScripts.run()})();</script>
	
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="profile" href="https://gmpg.org/xfn/11">
		<style>img:is([sizes="auto" i], [sizes^="auto," i]) { contain-intrinsic-size: 3000px 1500px }</style>
	<link rel="alternate" hreflang="en" href="https://www.bloomreach.com/en/products/engagement" />
<link rel="alternate" hreflang="fr" href="https://www.bloomreach.com/fr/produits/engagement" />
<link rel="alternate" hreflang="de" href="https://www.bloomreach.com/de/produkte/engagement" />
<link rel="alternate" hreflang="x-default" href="https://www.bloomreach.com/en/products/engagement" />
<title>Future-Ready Autonomous Marketing | Bloomreach</title>
<link rel="preload" as="font" href="https://www.bloomreach.com/wp-content/uploads/2024/04/BloomreachSans-Regular.woff2" crossorigin>
<link rel="preload" as="font" href="https://www.bloomreach.com/wp-content/uploads/2024/04/BloomreachSans-Regular.ttf" crossorigin>
<link rel="preload" as="font" href="https://www.bloomreach.com/wp-content/uploads/2024/04/BloomreachSans-Medium.woff2" crossorigin>
<link rel="preload" as="font" href="https://www.bloomreach.com/wp-content/uploads/2024/04/BloomreachSans-Medium.ttf" crossorigin><link rel="preload" data-rocket-preload as="image" href="https://www.bloomreach.com/wp-content/uploads/2024/04/bloomreach_pattern.svg" fetchpriority="high">
<meta name="description" content="Marketing Automation that delivers real-time personalization across 13+ channels. Marketers lead while AI agents execute—driving growth, revenue, and loyalty."/>
<meta name="robots" content="follow, index, max-snippet:-1, max-video-preview:-1, max-image-preview:large"/>
<link rel="canonical" href="https://www.bloomreach.com/en/products/engagement" />
<meta property="og:locale" content="en_US" />
<meta property="og:type" content="article" />
<meta property="og:title" content="Future-Ready Autonomous Marketing | Bloomreach" />
<meta property="og:description" content="Marketing Automation that delivers real-time personalization across 13+ channels. Marketers lead while AI agents execute—driving growth, revenue, and loyalty." />
<meta property="og:url" content="https://www.bloomreach.com/en/products/engagement" />
<meta property="og:site_name" content="Bloomreach" />
<meta property="og:updated_time" content="2025-03-20T16:47:22+00:00" />
<meta property="og:image" content="https://www.bloomreach.com/wp-content/uploads/2024/05/OG-Image@2x.jpg" />
<meta property="og:image:secure_url" content="https://www.bloomreach.com/wp-content/uploads/2024/05/OG-Image@2x.jpg" />
<meta property="og:image:width" content="1200" />
<meta property="og:image:height" content="630" />
<meta property="og:image:alt" content="Break Limits with Bloomreach" />
<meta property="og:image:type" content="image/jpeg" />
<meta property="og:video" content="https://www.bloomreach.com/wp-content/uploads/2024/10/Animation-for-Engagement-pillar-SD.mp4" />
<meta property="og:video" content="https://www.bloomreach.com/wp-content/uploads/2024/08/email-marketing-tool.mp4" />
<meta property="og:video" content="https://www.bloomreach.com/wp-content/uploads/2024/10/animation-Understand-Your-Customers.mp4" />
<meta property="og:video" content="https://www.bloomreach.com/wp-content/uploads/2024/10/01_Loomi_eCommerce.mp4" />
<meta property="og:video" content="https://www.bloomreach.com/wp-content/uploads/2024/10/animation-Run-Profitable-Campaigns.mp4" />
<meta property="og:video" content="https://www.bloomreach.com/wp-content/uploads/2024/05/Loomi-Report.mp4" />
<meta name="twitter:card" content="summary_large_image" />
<meta name="twitter:title" content="Future-Ready Autonomous Marketing | Bloomreach" />
<meta name="twitter:description" content="Marketing Automation that delivers real-time personalization across 13+ channels. Marketers lead while AI agents execute—driving growth, revenue, and loyalty." />
<meta name="twitter:image" content="https://www.bloomreach.com/wp-content/uploads/2024/05/OG-Image@2x.jpg" />
<script type="application/ld+json" class="rank-math-schema-pro">{"@context":"https://schema.org","@graph":[{"@type":"Organization","@id":"https://www.bloomreach.com/en#organization/","name":"Bloomreach","url":"https://www.bloomreach.com/","logo":{"@type":"ImageObject","@id":"https://www.bloomreach.com/en#logo/","url":"https://www.bloomreach.com/wp-content/uploads/2024/06/logo-bloomreach.svg","contentUrl":"https://www.bloomreach.com/wp-content/uploads/2024/06/logo-bloomreach.svg","caption":"Bloomreach","inLanguage":"en-US"},"description":"We unify real-time customer and product data so businesses understand what customers really want. By connecting that understanding to every channel, the ecommerce experience becomes limitless, continuously reflecting a changing customer as they shop. With the scale of AI, this creates endless new paths to purchase, greater profitability, and fast business growth."},{"@type":"WebSite","@id":"https://www.bloomreach.com/en#website/","url":"https://www.bloomreach.com/en","name":"Bloomreach","publisher":{"@id":"https://www.bloomreach.com/en#organization/"},"inLanguage":"en-US"},{"@type":"ImageObject","@id":"https://www.bloomreach.com/wp-content/uploads/2024/04/bloomreach_pattern.svg","url":"https://www.bloomreach.com/wp-content/uploads/2024/04/bloomreach_pattern.svg","width":"200","height":"200","inLanguage":"en-US"},{"@type":"BreadcrumbList","@id":"https://www.bloomreach.com/en/products/engagement#breadcrumb","itemListElement":[{"@type":"ListItem","position":"1","item":{"@id":"https://www.bloomreach.com/en","name":"Home"}},{"@type":"ListItem","position":"2","item":{"@id":"https://www.bloomreach.com/en/products","name":"Products"}},{"@type":"ListItem","position":"3","item":{"@id":"https://www.bloomreach.com/en/products/engagement","name":"Engagement"}}]},{"@type":"WebPage","@id":"https://www.bloomreach.com/en/products/engagement#webpage","url":"https://www.bloomreach.com/en/products/engagement","name":"Future-Ready Autonomous Marketing | Bloomreach","datePublished":"2024-05-14T11:51:53+00:00","dateModified":"2025-03-20T16:47:22+00:00","isPartOf":{"@id":"https://www.bloomreach.com/en#website/"},"primaryImageOfPage":{"@id":"https://www.bloomreach.com/wp-content/uploads/2024/04/bloomreach_pattern.svg"},"inLanguage":"en-US","breadcrumb":{"@id":"https://www.bloomreach.com/en/products/engagement#breadcrumb"}},{"@type":"VideoObject","name":"Future-Ready Autonomous Marketing | Bloomreach","description":"Marketing Automation that delivers real-time personalization across 13+ channels. Marketers lead while AI agents execute\u2014driving growth, revenue, and loyalty.","uploadDate":"2024-05-14T11:51:53+00:00","contentUrl":"https://www.bloomreach.com/wp-content/uploads/2024/10/Animation-for-Engagement-pillar-SD.mp4","width":"1000","height":"800","isFamilyFriendly":"True","@id":"https://www.bloomreach.com/en/products/engagement#schema-659404","isPartOf":{"@id":"https://www.bloomreach.com/en/products/engagement#webpage"},"publisher":{"@id":"https://www.bloomreach.com/en#organization/"},"inLanguage":"en-US"},{"@type":"VideoObject","name":"Future-Ready Autonomous Marketing | Bloomreach","description":"Marketing Automation that delivers real-time personalization across 13+ channels. Marketers lead while AI agents execute\u2014driving growth, revenue, and loyalty.","uploadDate":"2024-05-14T11:51:53+00:00","contentUrl":"https://www.bloomreach.com/wp-content/uploads/2024/08/email-marketing-tool.mp4","width":"954","height":"1448","isFamilyFriendly":"True","@id":"https://www.bloomreach.com/en/products/engagement#schema-659405","isPartOf":{"@id":"https://www.bloomreach.com/en/products/engagement#webpage"},"publisher":{"@id":"https://www.bloomreach.com/en#organization/"},"inLanguage":"en-US"},{"@type":"VideoObject","name":"Future-Ready Autonomous Marketing | Bloomreach","description":"Marketing Automation that delivers real-time personalization across 13+ channels. Marketers lead while AI agents execute\u2014driving growth, revenue, and loyalty.","uploadDate":"2024-05-14T11:51:53+00:00","contentUrl":"https://www.bloomreach.com/wp-content/uploads/2024/10/animation-Understand-Your-Customers.mp4","width":"1080","height":"720","isFamilyFriendly":"True","@id":"https://www.bloomreach.com/en/products/engagement#schema-659406","isPartOf":{"@id":"https://www.bloomreach.com/en/products/engagement#webpage"},"publisher":{"@id":"https://www.bloomreach.com/en#organization/"},"inLanguage":"en-US"},{"@type":"VideoObject","name":"Future-Ready Autonomous Marketing | Bloomreach","description":"Marketing Automation that delivers real-time personalization across 13+ channels. Marketers lead while AI agents execute\u2014driving growth, revenue, and loyalty.","uploadDate":"2024-05-14T11:51:53+00:00","contentUrl":"https://www.bloomreach.com/wp-content/uploads/2024/10/01_Loomi_eCommerce.mp4","width":"1080","height":"720","isFamilyFriendly":"True","@id":"https://www.bloomreach.com/en/products/engagement#schema-659407","isPartOf":{"@id":"https://www.bloomreach.com/en/products/engagement#webpage"},"publisher":{"@id":"https://www.bloomreach.com/en#organization/"},"inLanguage":"en-US"},{"@type":"VideoObject","name":"Future-Ready Autonomous Marketing | Bloomreach","description":"Marketing Automation that delivers real-time personalization across 13+ channels. Marketers lead while AI agents execute\u2014driving growth, revenue, and loyalty.","uploadDate":"2024-05-14T11:51:53+00:00","contentUrl":"https://www.bloomreach.com/wp-content/uploads/2024/10/animation-Run-Profitable-Campaigns.mp4","width":"1080","height":"720","isFamilyFriendly":"True","@id":"https://www.bloomreach.com/en/products/engagement#schema-659408","isPartOf":{"@id":"https://www.bloomreach.com/en/products/engagement#webpage"},"publisher":{"@id":"https://www.bloomreach.com/en#organization/"},"inLanguage":"en-US"},{"@type":"VideoObject","name":"Future-Ready Autonomous Marketing | Bloomreach","description":"Marketing Automation that delivers real-time personalization across 13+ channels. Marketers lead while AI agents execute\u2014driving growth, revenue, and loyalty.","uploadDate":"2024-05-14T11:51:53+00:00","contentUrl":"https://www.bloomreach.com/wp-content/uploads/2024/05/Loomi-Report.mp4","width":"1000","height":"800","isFamilyFriendly":"True","@id":"https://www.bloomreach.com/en/products/engagement#schema-659409","isPartOf":{"@id":"https://www.bloomreach.com/en/products/engagement#webpage"},"publisher":{"@id":"https://www.bloomreach.com/en#organization/"},"inLanguage":"en-US"}]}</script>
<link rel='dns-prefetch' href='//cdnjs.cloudflare.com' />
<link rel='dns-prefetch' href='//play.vidyard.com' />

<link rel="alternate" type="application/rss+xml" title="Bloomreach &raquo; Feed" href="https://www.bloomreach.com/en/feed" />
<link rel="alternate" type="application/rss+xml" title="Bloomreach &raquo; Comments Feed" href="https://www.bloomreach.com/en/comments/feed" />
<style id='wp-emoji-styles-inline-css'>

	img.wp-smiley, img.emoji {
		display: inline !important;
		border: none !important;
		box-shadow: none !important;
		height: 1em !important;
		width: 1em !important;
		margin: 0 0.07em !important;
		vertical-align: -0.1em !important;
		background: none !important;
		padding: 0 !important;
	}
</style>
<style id='acf-line-banner-v1-style-inline-css'>
.line-banner-v1 {
    margin-bottom: 32px;
    width: 100%;
    text-decoration: none !important;
    padding: 16px 24px;
    background-color: var(--arctic-10);
    border-radius: 16px;
    display: block;
}

.line-banner-v1-inner {
    align-items: center;
    display: flex;
    width: 100%;
}

.line-banner-v1-container .line-banner-v1-label {
    font: var(--body-l-medium-font);
    color: var(--space-100);
    margin-right: 16px;
    margin-bottom: 0;
}

.line-banner-v1-text {
    font: var(--body-l-medium-font);
    color: var(--arctic-100);
    margin-right: auto;
    text-decoration: underline;
}

.line-banner-v1-icon {
    display: flex;
    align-items: center;
    justify-content: center;
    background-color: var(--arctic-100);
    width: 24px;
    height: 24px;
    border-radius: 50%;
    transition: .4s;
}
.line-banner-v1:hover .line-banner-v1-icon {
    transform: translate(12px, -8px) translate3d(0,0,0);
}

.line-banner-v1-icon svg {
    color: var(--white);
}

.line-banner-v1 .mobile-bottom-section {
    display: none;
}


@media (max-width: 1024px) {
    .line-banner-v1-container .line-banner-v1 {
        display: block;
    }

    .line-banner-v1-label {
        flex-grow: 1;
    }

    .line-banner-v1-container .desktop-text {
        display: none;
    }

    .line-banner-v1-container .line-banner-v1 .mobile-bottom-section {
        display: block;
    }

    .line-banner-v1-inner {
        margin-bottom: 4px;
    }

    .line-banner-v1-text {
        font: var(--body-l-regular-font);
        margin-right: unset;
    }
}

</style>
<style id='acf-key-takeaway-v1-style-inline-css'>
.key-takeaway-v1-container {
    background-color: #F2F4F5;
    padding: 32px;
    border-radius: 32px;
    margin-bottom: 32px;
}

.key-takeaway-v1-container .key-takeaway-v1-title {
    font: var(--h4-medium-font);
    color: var(--space-100);
    margin-bottom: 16px;
}

.key-takeaway-v1-container .key-takeaway-v1-text {
    font: var(--body-l-regular-font);
    color: var(--space-80);
    margin-bottom: 30px;
}

@media (max-width: 1024px) {
    .key-takeaway-v1-container {
        padding: 24px 20px;
        border-radius: 20px;
    }

    .key-takeaway-v1-container .key-takeaway-v1-title {
        font: var(--h5-medium-font);
        margin-bottom: 12px;
    }

    .key-takeaway-v1-container .key-takeaway-v1-text {
        font: var(--body-l-regular-font);
        margin-bottom: 20px;
    }
}

</style>
<style id='acf-key-takeaway-v1-single-item-style-inline-css'>
.key-takeaway-v1-single-item-container {
    margin-bottom: 30px;
}

.key-takeaway-v1-single-item-container:last-child {
    margin-bottom: 0;
}

.key-takeaway-v1-single-item-title-container {
    display: flex;
    align-items: center;
    margin-bottom: 4px;
}

.key-takeaway-v1-single-item-title-container span {
    width: 32px;
    height: 32px;
    display: flex;
    justify-content: center;
    align-content: center;
    flex-wrap: wrap;
    background-color: var(--gold-100);
    border-radius: 50%;
    margin-right: 24px;
}

.key-takeaway-v1-single-item-title-container svg {
    margin: auto;
}

.key-takeaway-v1-single-item-title-container img {
    max-width: 18px;
    max-height: 18px;
}

.key-takeaway-v1-single-item-container .key-takeaway-v1-single-item-title-container p {
    font: var(--body-2xl-medium-font);
    color: var(--space-100);
    margin-bottom: 0;
}

.key-takeaway-v1-single-item-container .key-takeaway-v1-single-item-text {
    padding-left: 56px;
    font: var(--body-xl-regular-font);
    color: var(--space-80);
    margin-bottom: 0;
}

@media (max-width: 767px) {
    .key-takeaway-v1-single-item-container {
        margin-bottom: 20px;
    }

    .key-takeaway-v1-single-item-title-container {
        margin-bottom: 8px;
    }

    .key-takeaway-v1-single-item-title-container span {
        margin-right: 16px;
    }

    .key-takeaway-v1-single-item-title-container p {
        font: var(--body-xl-medium-font);
    }

    .key-takeaway-v1-single-item-container .key-takeaway-v1-single-item-text {
        padding-left: 49px;
        font: var(--body-l-regular-font);
    }
}

</style>
<style id='acf-faq-section-v1-style-inline-css'>
.faq-section-v1-container {
    margin-bottom: 32px;
}

.wp-admin .faq-section-v1-container {
    padding: 16px;
}

.faq-section-v1-container .section-title {
    font: var(--h3-medium-font);
    color: var(--space-100);
    margin-bottom: 32px;
}

@media (max-width: 1024px) {
    .faq-section-v1-container .section-title {
        font: var(--h4-medium-font);
        margin-bottom: 24px;
    }

    .faq-section-v1-container {
        margin-bottom: 24px;
    }
}

</style>
<style id='acf-faq-section-v1-single-item-style-inline-css'>
.faq-section-v1-single-item-container {
    display: flex;
    flex-direction: column;
    margin-bottom: 10px;
    border-radius: 16px;
    overflow: hidden;
    border: 1px solid var(--space-10);
}

.faq-section-v1-single-item-container .title-section {
    display: flex;
    align-items: center;
    padding: 10px 10px 10px 16px;
    cursor: pointer;
}

.wp-admin .faq-section-v1-single-item-container .title-section {
    cursor: auto;
}

.faq-section-v1-single-item-container .item-title {
    font: var(--body-l-medium-font);
    color: var(--space-100);
    margin-right: 10px;
    flex-grow: 1;
    margin-bottom: 0;
}

.faq-section-v1-single-item-container .item-button {
    width: 48px;
    height: 48px;
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    border: 1px solid var(--space-10);
    transition: border 0.3s linear;
}

.faq-section-v1-single-item-container .item-button svg {
    color: var(--arctic-100);
    margin: auto;
    transition: transform 0.3s linear;
}

.open.faq-section-v1-single-item-container .item-button {
    border-color: transparent;
}

.open.faq-section-v1-single-item-container .item-button svg {
    transform: rotate(180deg);
}

.faq-section-v1-single-item-container .item-content {
    transition: height 0.3s linear;
    height: 0;
    overflow: hidden;
}

.faq-section-v1-single-item-container .content-inner {
    padding: 16px 16px 32px 16px;
}

.wp-admin .faq-section-v1-single-item-container .item-content {
    height: unset;
}

.faq-section-v1-single-item-container .item-content p {
    font: var(--body-l-regular-font);
    color: var(--space-100);
    margin: 0;
}

@media (max-width: 1024px) {
    .faq-section-v1-single-item-container {
        border-radius: 8px;
        margin-bottom: 12px;
    }

    .faq-section-v1-single-item-container .title-section {
        padding: 16px 12px;
    }

    .faq-section-v1-single-item-container .item-title {
        margin-right: 26px;
        margin-bottom: 0;
    }

    .faq-section-v1-single-item-container .content-inner {
        padding: 8px 16px 16px 16px;
    }
}

</style>
<style id='acf-cta-section-v1-style-inline-css'>
.cta-section-v1-container {
    padding: 32px;
    margin-bottom: 32px;
    background-color: var(--space-05);
    border-radius: 32px;
    display: flex;
}

.cta-section-v1-container .img,
.cta-section-v1-container .video,
.cta-section-v1-container .vidyard-player-container {
    background-position: center;
    background-size: cover;
    width: 143px !important;
    height: 123px !important;
    border-radius: 20px;
    overflow: hidden;
    flex-shrink: 0;
    margin: 0 !important;
    margin-right: 14px !important;
}

.cta-section-v1-container .lottie {
    width: 143px !important;
    height: 123px !important;
    border-radius: 20px;
    overflow: hidden;
    flex-shrink: 0;
    margin: 0 !important;
    margin-right: 14px !important;
}

.cta-section-v1-container .vidyard-player-container .vidyard-lightbox-centering,
.cta-section-v1-container .vidyard-player-container > div {
    padding-bottom: 123px !important;
}

.cta-section-v1-container .img.empty,
.cta-section-v1-container .video.empty,
.cta-section-v1-container .lottie {
    opacity: 0.25;
}

.cta-section-v1-container .section-title {
    font: var(--h4-medium-font);
    color: var(--space-100);
    margin: 0 !important;
    margin-bottom: 16px !important;;
}

.cta-section-v1-container .right-section p {
    font: var(--body-l-regular-font);
    color: var(--space-80);
    margin-bottom: 24px;
}

.button-filled-large-arctic {
    border-radius: 99px;
    padding: 10px 32px;
    font: var(--body-l-medium-font);
    color: var(--white);
    text-align: center;
    background: var(--arctic-100);
    transition: background-color 0.3s linear;
    text-decoration: none !important;
}

.button-filled-large-arctic:hover {
    background-color: var(--arctic-120);
    text-decoration: none !important;
    color: var(--white);
}

@media (max-width: 1024px) {
    .cta-section-v1-container {
        padding: 12px;
        border-radius: 12px;
    }

    .cta-section-v1-container .img,
    .cta-section-v1-container .video,
    .cta-section-v1-container .vidyard-player-container {
        border-radius: 8px !important;
    }

    .cta-section-v1-container .right-section {
        flex: 1;
        display: flex;
        flex-direction: column;
        justify-content: center;
    }

    .cta-section-v1-container .section-title {
        margin-bottom: 4px !important;;
        font-size: var(--body-m-medium-font-size);
        line-height: var(--body-m-medium-line-height);
        letter-spacing: var(--body-m-medium-letter-spacing);
    }

    .cta-section-v1-container .right-section p {
        margin-bottom: 12px;
        font-size: var(--body-s-regular-font-size);
        line-height: var(--body-s-regular-line-height);
        letter-spacing: var(--body-s-regular-letter-spacing);
    }

    .cta-section-v1-container .button-filled-large-arctic {
        display: block;
        width: 100%;
        font-size: var(--body-s-medium-font-size);
        line-height: var(--body-s-medium-line-height);
        letter-spacing: var(--body-s-medium-letter-spacing);
        padding: 11px 32px;
    }
}

</style>
<style id='acf-subscribe-to-platform-v1-style-inline-css'>
.subscribe-to-platform-v1-container {
    padding: 16px 16px 16px 24px;
    margin-bottom: 32px;
    background-color: var(--arctic-10);
    border-radius: 16px;
    display: flex;
    align-items: center;
}


.subscribe-to-platform-v1-container .title-section {
    flex-grow: 1;
    margin-right: 16px;
    display: flex;
    align-items: center;
}

.subscribe-to-platform-v1-container .title-section p {
    margin-bottom: 0;
    color: var(--space-100);
    font: var(--body-l-medium-font);
}

.subscribe-to-platform-v1-container .icons-section {
    display: flex;
    align-items: center;
}

.subscribe-to-platform-v1-container .icons-section a {
    display: inline-block;
    margin-right: 16px;
    height: 30px;
    width: 30px;
}

/* no_background variant */
.subscribe-to-platform-v1-container.no_background {
    padding-left: 0;
    background: unset;
}

.subscribe-to-platform-v1-container.no_background .title-section {
    flex-grow: 0;
}


@media (max-width: 1024px) {
    .subscribe-to-platform-v1-container {
        padding: 0;
        display: block;
        background-color: unset;
    }

    .subscribe-to-platform-v1-container .title-section {
        border-radius: 16px;
        padding: 16px;
        background-color: var(--arctic-10);
        text-align: center;
        width: 100%;
        margin-bottom: 32px;
        justify-content: center;
    }

    .subscribe-to-platform-v1-container .icons-section {
        width: 100%;
        display: flex;
        justify-content: center;
    }

    .subscribe-to-platform-v1-container .icons-section a {
        margin-left: 8px;
        margin-right: 8px;
    }

    /* no_background variant */
    .subscribe-to-platform-v1-container.no_background .title-section {
        padding: 0;
        justify-content: start;
        background-color: unset;
        margin-bottom: 16px;
        text-align: start;
    }

    .subscribe-to-platform-v1-container.no_background .icons-section {
        justify-content: start;
    }
}

</style>
<style id='acf-subscribe-newsletter-v1-style-inline-css'>
.subscribe-newsletter-v1-container {
    display: flex;
    padding: 32px;
    flex-direction: column;
    align-items: flex-start;
    gap: 80px;
    background-color: var(--arctic-10);
    border-radius: 32px;
    margin-bottom: 32px;
}
.subscribe-newsletter-v1-row {
    display: flex;
    align-items: flex-end;
    gap: 30px;
    align-self: stretch;
}
.subscribe-newsletter-v1-vertical .subscribe-newsletter-v1-row {
    display: block;
    text-align: center;
}
.subscribe-newsletter-v1-left-panel {
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: flex-start;
    gap: 30px;
    flex: 1 0 0;
}
.subscribe-newsletter-v1-right-panel {
    display: flex;
    flex-direction: column;
    align-items: center;
    gap: 16px;
    flex: 1 0 0;
}
.subscribe-newsletter-v1-vertical .subscribe-newsletter-v1-right-panel {
    max-width: 508px;
    margin: 0 auto;
}
.subscribe-newsletter-v1-avatars {
    display: flex;
    flex-direction: row;
    align-items: center;
    gap: -10px;
}
.subscribe-newsletter-v1-avatar {
    width: 40px;
    height: 40px;
    border-radius: 40px;
    border: 2px solid var(--arctic-20);
    background: lightgray 50% / cover no-repeat;
    margin-left: -10px;
}
.subscribe-newsletter-v1-avatar:first-child {
    margin-left: 0;
}
.subscribe-newsletter-v1-container h3 {
    align-self: stretch;
    color: var(--space-100);
    font: var(--h3-medium-font) !important;
    margin: 0 !important;
}
.subscribe-newsletter-v1-vertical .subscribe-newsletter-v1-row h3 {
    text-align: center;
    margin-bottom: 16px !important;
}
.subscribe-newsletter-v1-container form {
    margin: 0;
}

.subscribe-newsletter-v1-container form {
    display: flex;
    flex-wrap: wrap;
    column-gap: 8px;
    row-gap: 16px;
}

.subscribe-newsletter-v1-container form .hs_email {
    order: 1;
    width: calc(100% - 150px);
}

.subscribe-newsletter-v1-container form .legal-consent-container {
    order: 3;
}

.subscribe-newsletter-v1-container form .hs_email label[id^=label-email] {
    display: none;
}

.subscribe-newsletter-v1-container form .hs_email .input input {
    padding: 10px 32px;
    border-radius: 99px;
    background: var( --white );
    border: 1px solid var( --space-20 );
    font: var( --body-l-regular-font );
    color: var( --space-100 );
}

.subscribe-newsletter-v1-container form .hs_email .input input:focus {
    outline: none;
}

.subscribe-newsletter-v1-container form .hs_submit {
    order: 2;
}

.subscribe-newsletter-v1-container form .hs_submit .hs-button {
    color: var( --space-100 );
    background-color: var( --gold-100 );
    border: none;
}

.subscribe-newsletter-v1-container form .hs_submit .hs-button:hover {
    background-color: var( --gold-80 );
}

.subscribe-newsletter-v1-container form .legal-consent-container p {
    font: var( --body-s-regular-font );
    color: var( --space-60 );
    margin-bottom: 0;
}
.subscribe-newsletter-v1-container form .legal-consent-container ul {
    margin-bottom: 0;
}

.subscribe-newsletter-v1-container form .legal-consent-container p strong {
    font-weight: 400;
}

.subscribe-newsletter-v1-container form .legal-consent-container p a {
    font: inherit;
    color: inherit;
    text-decoration: underline;
}

.subscribe-newsletter-v1-container .elementor-menu-anchor {
    display: none !important;
}

@media (max-width: 1024px) {
    .subscribe-newsletter-v1-row {
        display: block;
    }
    .subscribe-newsletter-v1-left-panel {
        gap: 24px;
    }
    .subscribe-newsletter-v1-container h3 {
        text-align: center;
        margin-bottom: 20px !important;
    }
    .subscribe-newsletter-v1-vertical .subscribe-newsletter-v1-row h3 {
        text-align: center;
        margin-bottom: 24px !important;
    }

    .subscribe-newsletter-v1-container form {
        column-gap: 0;
        row-gap: 12px;
    }

    .subscribe-newsletter-v1-container form .hs_email {
        width: 100%;
    }

    .subscribe-newsletter-v1-container form .legal-consent-container {
        padding-top: 8px;
    }

    .subscribe-newsletter-v1-container form .hs_submit,
    .subscribe-newsletter-v1-container form .hs_submit .hs-button {
        width: 100%;
    }
}

</style>
<style id='acf-key-takeaways-style-inline-css'>
.key-takeaways-block {
    background-color: #F2F4F5;
    padding: 32px;
    border-radius: 32px;
    margin-bottom: 32px;
}

.key-takeaways-block h4 {
    font: var(--h4-medium-font) !important;
    color: var(--space-100);
    margin-bottom: 16px!important;
}

.key-takeaways-block .key-takeaway-subtitle {
    font: var(--body-l-regular-font);
    color: var(--space-80);
    margin-bottom: 30px;
}

.key-takeaways-list {
    list-style-type: none;
    padding-left: 0 !important;
    counter-reset: takeaway-counter;
    margin-bottom: 0!important;
}

.key-takeaway-item {
    gap: 24px;
    padding-left: 0 !important;
    display: flex;
    align-items: flex-start;
    counter-increment: takeaway-counter;
}

.key-takeaway-item:not(:last-child) {
    margin-bottom: 30px;
}

.key-takeaway-item::before {
    content: counter(takeaway-counter);
    width: 32px;
    height: 32px;
    background-color: var(--gold-100);
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    color: var(--space-80);
    font-weight: 500;
    flex-shrink: 0;
}

.key-takeaway-title {
    font: var(--h5-medium-font);
    color: var(--space-100);
    margin-bottom: 8px;
}

.key-takeaway-description {
    font: var(--body-l-regular-font);
    color: var(--space-80);
}
</style>
<style id='global-styles-inline-css'>
:root{--wp--preset--aspect-ratio--square: 1;--wp--preset--aspect-ratio--4-3: 4/3;--wp--preset--aspect-ratio--3-4: 3/4;--wp--preset--aspect-ratio--3-2: 3/2;--wp--preset--aspect-ratio--2-3: 2/3;--wp--preset--aspect-ratio--16-9: 16/9;--wp--preset--aspect-ratio--9-16: 9/16;--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;--wp--preset--spacing--20: 0.44rem;--wp--preset--spacing--30: 0.67rem;--wp--preset--spacing--40: 1rem;--wp--preset--spacing--50: 1.5rem;--wp--preset--spacing--60: 2.25rem;--wp--preset--spacing--70: 3.38rem;--wp--preset--spacing--80: 5.06rem;--wp--preset--shadow--natural: 6px 6px 9px rgba(0, 0, 0, 0.2);--wp--preset--shadow--deep: 12px 12px 50px rgba(0, 0, 0, 0.4);--wp--preset--shadow--sharp: 6px 6px 0px rgba(0, 0, 0, 0.2);--wp--preset--shadow--outlined: 6px 6px 0px -3px rgba(255, 255, 255, 1), 6px 6px rgba(0, 0, 0, 1);--wp--preset--shadow--crisp: 6px 6px 0px rgba(0, 0, 0, 1);}:root { --wp--style--global--content-size: 800px;--wp--style--global--wide-size: 1200px; }:where(body) { margin: 0; }.wp-site-blocks > .alignleft { float: left; margin-right: 2em; }.wp-site-blocks > .alignright { float: right; margin-left: 2em; }.wp-site-blocks > .aligncenter { justify-content: center; margin-left: auto; margin-right: auto; }:where(.wp-site-blocks) > * { margin-block-start: 24px; margin-block-end: 0; }:where(.wp-site-blocks) > :first-child { margin-block-start: 0; }:where(.wp-site-blocks) > :last-child { margin-block-end: 0; }:root { --wp--style--block-gap: 24px; }:root :where(.is-layout-flow) > :first-child{margin-block-start: 0;}:root :where(.is-layout-flow) > :last-child{margin-block-end: 0;}:root :where(.is-layout-flow) > *{margin-block-start: 24px;margin-block-end: 0;}:root :where(.is-layout-constrained) > :first-child{margin-block-start: 0;}:root :where(.is-layout-constrained) > :last-child{margin-block-end: 0;}:root :where(.is-layout-constrained) > *{margin-block-start: 24px;margin-block-end: 0;}:root :where(.is-layout-flex){gap: 24px;}:root :where(.is-layout-grid){gap: 24px;}.is-layout-flow > .alignleft{float: left;margin-inline-start: 0;margin-inline-end: 2em;}.is-layout-flow > .alignright{float: right;margin-inline-start: 2em;margin-inline-end: 0;}.is-layout-flow > .aligncenter{margin-left: auto !important;margin-right: auto !important;}.is-layout-constrained > .alignleft{float: left;margin-inline-start: 0;margin-inline-end: 2em;}.is-layout-constrained > .alignright{float: right;margin-inline-start: 2em;margin-inline-end: 0;}.is-layout-constrained > .aligncenter{margin-left: auto !important;margin-right: auto !important;}.is-layout-constrained > :where(:not(.alignleft):not(.alignright):not(.alignfull)){max-width: var(--wp--style--global--content-size);margin-left: auto !important;margin-right: auto !important;}.is-layout-constrained > .alignwide{max-width: var(--wp--style--global--wide-size);}body .is-layout-flex{display: flex;}.is-layout-flex{flex-wrap: wrap;align-items: center;}.is-layout-flex > :is(*, div){margin: 0;}body .is-layout-grid{display: grid;}.is-layout-grid > :is(*, div){margin: 0;}body{padding-top: 0px;padding-right: 0px;padding-bottom: 0px;padding-left: 0px;}a:where(:not(.wp-element-button)){text-decoration: underline;}:root :where(.wp-element-button, .wp-block-button__link){background-color: #32373c;border-width: 0;color: #fff;font-family: inherit;font-size: inherit;line-height: inherit;padding: calc(0.667em + 2px) calc(1.333em + 2px);text-decoration: none;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}
:root :where(.wp-block-pullquote){font-size: 1.5em;line-height: 1.6;}
</style>
<link rel='stylesheet' id='wpml-legacy-dropdown-0-css' href='https://www.bloomreach.com/wp-content/plugins/sitepress-multilingual-cms/templates/language-switchers/legacy-dropdown/style.min.css?ver=1' media='all' />
<link rel='stylesheet' id='wpml-menu-item-0-css' href='https://www.bloomreach.com/wp-content/plugins/sitepress-multilingual-cms/templates/language-switchers/menu-item/style.min.css?ver=1' media='all' />
<link rel='stylesheet' id='jquery-ui-css-css' href='https://www.bloomreach.com/wp-content/themes/hello-theme-child-master/assets/css/jquery-ui.min.css' media='all' />
<link data-minify="1" rel='stylesheet' id='common-css-css' href='https://www.bloomreach.com/wp-content/cache/min/1/wp-content/themes/hello-theme-child-master/assets/css/common.css?ver=1744639618' media='all' />
<link data-minify="1" rel='stylesheet' id='user-custom-post-cards-css' href='https://www.bloomreach.com/wp-content/cache/min/1/wp-content/themes/hello-theme-child-master/assets/css/user-custom-post-cards.css?ver=1744639618' media='all' />
<link data-minify="1" rel='stylesheet' id='elementor-icons-icomoon-3-css' href='https://www.bloomreach.com/wp-content/cache/min/1/wp-content/uploads/elementor/custom-icons/icomoon-3/style.css?ver=1744639618' media='all' />
<link rel='stylesheet' id='hello-elementor-css' href='https://www.bloomreach.com/wp-content/themes/hello-elementor/style.min.css?ver=3.3.0' media='all' />
<link rel='stylesheet' id='hello-elementor-theme-style-css' href='https://www.bloomreach.com/wp-content/themes/hello-elementor/theme.min.css?ver=3.3.0' media='all' />
<link rel='stylesheet' id='hello-elementor-header-footer-css' href='https://www.bloomreach.com/wp-content/themes/hello-elementor/header-footer.min.css?ver=3.3.0' media='all' />
<link rel='stylesheet' id='elementor-frontend-css' href='https://www.bloomreach.com/wp-content/plugins/elementor/assets/css/frontend-lite.min.css?ver=3.23.4' media='all' />
<link rel='stylesheet' id='elementor-post-13-css' href='https://www.bloomreach.com/wp-content/uploads/elementor/css/post-13.css?ver=1744639618' media='all' />
<link data-minify="1" rel='stylesheet' id='elementor-icons-css' href='https://www.bloomreach.com/wp-content/cache/min/1/wp-content/plugins/elementor/assets/lib/eicons/css/elementor-icons.min.css?ver=1744639618' media='all' />
<link rel='stylesheet' id='swiper-css' href='https://www.bloomreach.com/wp-content/plugins/elementor/assets/lib/swiper/css/swiper.min.css?ver=5.3.6' media='all' />
<link rel='stylesheet' id='elementor-pro-css' href='https://www.bloomreach.com/wp-content/plugins/elementor-pro/assets/css/frontend-lite.min.css?ver=3.23.3' media='all' />
<link rel='stylesheet' id='elementor-global-css' href='https://www.bloomreach.com/wp-content/uploads/elementor/css/global.css?ver=1744639618' media='all' />
<link rel='stylesheet' id='elementor-post-3401-css' href='https://www.bloomreach.com/wp-content/uploads/elementor/css/post-3401.css?ver=1744639620' media='all' />
<link rel='stylesheet' id='elementor-post-99-css' href='https://www.bloomreach.com/wp-content/uploads/elementor/css/post-99.css?ver=1744639619' media='all' />
<link rel='stylesheet' id='elementor-post-2803-css' href='https://www.bloomreach.com/wp-content/uploads/elementor/css/post-2803.css?ver=1744788421' media='all' />
<link rel='stylesheet' id='elementor-post-57574-css' href='https://www.bloomreach.com/wp-content/uploads/elementor/css/post-57574.css?ver=1744639619' media='all' />
<link rel='stylesheet' id='elementor-post-1024-css' href='https://www.bloomreach.com/wp-content/uploads/elementor/css/post-1024.css?ver=1744639617' media='all' />
<link rel='stylesheet' id='elementor-post-975-css' href='https://www.bloomreach.com/wp-content/uploads/elementor/css/post-975.css?ver=1744639619' media='all' />
<link data-minify="1" rel='stylesheet' id='hello-elementor-child-style-css' href='https://www.bloomreach.com/wp-content/cache/min/1/wp-content/themes/hello-theme-child-master/style.css?ver=1744639618' media='all' />
<link rel='stylesheet' id='elementor-icons-shared-0-css' href='https://www.bloomreach.com/wp-content/plugins/elementor/assets/lib/font-awesome/css/fontawesome.min.css?ver=5.15.3' media='all' />
<link data-minify="1" rel='stylesheet' id='elementor-icons-fa-solid-css' href='https://www.bloomreach.com/wp-content/cache/min/1/wp-content/plugins/elementor/assets/lib/font-awesome/css/solid.min.css?ver=1744639618' media='all' />
<link data-minify="1" rel='stylesheet' id='elementor-icons-fa-brands-css' href='https://www.bloomreach.com/wp-content/cache/min/1/wp-content/plugins/elementor/assets/lib/font-awesome/css/brands.min.css?ver=1744639618' media='all' />
<script id="wpml-cookie-js-extra">
var wpml_cookies = {"wp-wpml_current_language":{"value":"en","expires":1,"path":"\/"}};
var wpml_cookies = {"wp-wpml_current_language":{"value":"en","expires":1,"path":"\/"}};
var wpml_cookies = {"wp-wpml_current_language":{"value":"en","expires":1,"path":"\/"}};
var wpml_cookies = {"wp-wpml_current_language":{"value":"en","expires":1,"path":"\/"}};
</script>
<script type="rocketlazyloadscript" data-minify="1" data-rocket-src="https://www.bloomreach.com/wp-content/cache/min/1/wp-content/plugins/sitepress-multilingual-cms/res/js/cookies/language-cookie.js?ver=1742555262" id="wpml-cookie-js" defer data-wp-strategy="defer"></script>
<script type="rocketlazyloadscript" data-rocket-src="https://www.bloomreach.com/wp-content/plugins/sitepress-multilingual-cms/templates/language-switchers/legacy-dropdown/script.min.js?ver=1" id="wpml-legacy-dropdown-0-js" data-rocket-defer defer></script>
<script type="rocketlazyloadscript" data-minify="1" data-rocket-src="https://www.bloomreach.com/wp-content/cache/min/1/ajax/libs/bodymovin/5.12.2/lottie.min.js?ver=1742555262" id="bodymovin-js" data-rocket-defer defer></script>
<script src="https://www.bloomreach.com/wp-includes/js/jquery/jquery.min.js?ver=3.7.1" id="jquery-core-js"></script>
<script src="https://www.bloomreach.com/wp-includes/js/jquery/jquery-migrate.min.js?ver=3.4.1" id="jquery-migrate-js" data-rocket-defer defer></script>
<script src="https://www.bloomreach.com/wp-content/themes/hello-theme-child-master/js/scripts.js?ver=1.20" id="bloomreach-script-js"></script>
<script type="rocketlazyloadscript" data-minify="1" data-rocket-src="https://www.bloomreach.com/wp-content/cache/min/1/wp-content/themes/hello-theme-child-master/js/authors-carousel.js?ver=1742555262" id="authors-carousel-js" data-rocket-defer defer></script>
<link rel="https://api.w.org/" href="https://www.bloomreach.com/en/wp-json/" /><link rel="alternate" title="JSON" type="application/json" href="https://www.bloomreach.com/en/wp-json/wp/v2/products/3401" /><link rel="EditURI" type="application/rsd+xml" title="RSD" href="https://www.bloomreach.com/xmlrpc.php?rsd" />
<link rel='shortlink' href='https://www.bloomreach.com/en?p=3401' />
<link rel="alternate" title="oEmbed (JSON)" type="application/json+oembed" href="https://www.bloomreach.com/en/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fwww.bloomreach.com%2Fen%2Fproducts%2Fengagement" />
<link rel="alternate" title="oEmbed (XML)" type="text/xml+oembed" href="https://www.bloomreach.com/en/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fwww.bloomreach.com%2Fen%2Fproducts%2Fengagement&#038;format=xml" />
<script type="rocketlazyloadscript">if ("serviceWorker" in navigator) { navigator.serviceWorker.register("/service-worker.js"); }</script><style>
	/* General Presets */

	h1,
	h2,
	h3,
	h4,
	h5,
	h6,
	p {
		margin: 0;
	}

	p a {
		color: var(--arctic-100) !important;
		text-decoration: underline !important;
	}

	p strong {
		font-weight: 500;
	}

	/* Images */

	img {
		border-radius: 20px !important;
	}

	.no_border_radius img {
		border-radius: 0 !important;
	}

	/* General Video Fix */

	video {
		clip-path: fill-box;
		background-color: var( --transparent ) !important;
	}

	/* Video Lightbox Fix */

	.dialog-type-lightbox:not(.mobile_menu_popup),
	#vidyard-overlay-wrapper {
		z-index: 10001;
	}

	.elementor-video-container iframe,
	#vidyard-popbox {
		width: 100%;
	}

	/* Videyard Video Presets */

	.vidyard-player-container,
	.vidyard-player-container iframe,
	.elementor-widget-vidyard_widget img {
		border-radius: 20px !important;
	}

	@media (max-width: 1024px) {

		.vidyard-player-container,
		.vidyard-player-container iframe,
		.elementor-widget-vidyard_widget img {
			border-radius: 12px !important;
		}
	}

	/* Video - Inline Animations */

	.e-hosted-video {
		aspect-ratio: initial !important;
	}

	.video_5-4 .e-hosted-video {
		aspect-ratio: 5 / 4 !important;
	}

	/* Product - Box Hover */

	.product_box h3 {
		padding-right: 40px;
	}

	.product_box .product_button_icon svg {
		transform: scale(0) translate3d(0, 0, 0);
		-webkit-transform: scale(0) translate3d(0, 0, 0);
		-moz-transform: scale(0) translate3d(0, 0, 0);
		transition: .4s;
	}

	.product_box:hover .product_button_icon svg {
		transform: scale(1) translate3d(0, 0, 0);
		-webkit-transform: scale(1) translate3d(0, 0, 0);
		-moz-transform: scale(1) translate3d(0, 0, 0);
	}

	.product_box .call_to_action_link {
		opacity: 0;
		transition: .4s;
	}

	.product_box:hover .call_to_action_link {
		opacity: 1;
	}

	/* Industry - Carousel Hover */

	@media (max-width: 767px) {
		.industry_carousel .swiper-container {
			padding-right: 64px;
			overflow: visible;
		}
	}

	@media (max-width: 1024px) {
		.industry_carousel .elementor-swiper-button {
			display: none;
		}

		.industry_carousel .swiper-pagination {
			height: auto !important;
		}
	}

	@media (min-width: 1025px) {
		.industry_carousel a {
			transform: translate3d(0, 0, 0);
			-webkit-transform: translate3d(0, 0, 0);
			-moz-transform: translate3d(0, 0, 0);
		}

		.industry_carousel a .industry_button_icon svg {
			transform: scale(0) translate3d(0, 0, 0);
			-webkit-transform: scale(0) translate3d(0, 0, 0);
			-moz-transform: scale(0) translate3d(0, 0, 0);
			transition: .4s;
		}

		.industry_carousel a:hover .industry_button_icon svg {
			transform: scale(1) translate3d(0, 0, 0);
			-webkit-transform: scale(1) translate3d(0, 0, 0);
			-moz-transform: scale(1) translate3d(0, 0, 0);
		}

		.industry_carousel .call_to_action_link {
			opacity: 0;
			transition: .4s;
		}

		.industry_carousel .industry_box_image,
		.industry_carousel .industry_box_content {
			transition: .4s;
		}

		.industry_carousel .industry_box_content {
			margin-bottom: -52px;
		}

		.industry_carousel a:hover .call_to_action_link {
			opacity: 1;
		}

		.industry_carousel a:hover .industry_box_image {
			transform: translate(40px, -52px) translate3d(0, 0, 0);
			-webkit-transform: translate(40px, -52px) translate3d(0, 0, 0);
			-moz-transform: translate(40px, -52px) translate3d(0, 0, 0);
		}

		.industry_carousel a:hover .industry_box_content {
			transform: translateY(-52px) translate3d(0, 0, 0);
			-webkit-transform: translateY(-52px) translate3d(0, 0, 0);
			-moz-transform: translateY(-52px) translate3d(0, 0, 0);
		}
	}

	/* Industry - Box Hover */

	.industry_box h3 {
		padding-right: 40px;
	}

	.industry_box .product_button_icon svg {
		transform: scale(0) translate3d(0, 0, 0);
		-webkit-transform: scale(0) translate3d(0, 0, 0);
		-moz-transform: scale(0) translate3d(0, 0, 0);
		transition: .4s;
	}

	.industry_box:hover .product_button_icon svg {
		transform: scale(1) translate3d(0, 0, 0);
		-webkit-transform: scale(1) translate3d(0, 0, 0);
		-moz-transform: scale(1) translate3d(0, 0, 0);
	}

	.industry_box .call_to_action_link {
		opacity: 0;
		transition: .4s;
	}

	.industry_box:hover .call_to_action_link {
		opacity: 1;
	}

	/* Industry - Grid Hover*/

	.industry_grid a {
		transform: translate3d(0, 0, 0);
		-webkit-transform: translate3d(0, 0, 0);
		-moz-transform: translate3d(0, 0, 0);
		height: fit-content;
	}

	.industry_grid .e-con-inner {
		display: flex;
	}

	.industry_grid a .industry_button_icon {
		transform: scale(0) translate3d(0, 0, 0);
		-webkit-transform: scale(0) translate3d(0, 0, 0);
		-moz-transform: scale(0) translate3d(0, 0, 0);
		opacity: 0;
		margin-bottom: -40px !important;
		transition: .4s;
	}

	@media (min-width: 1025px) {
		.industry_grid:not(.br_carousel) a:hover .industry_button_icon {
			transform: scale(1) translate3d(0, 0, 0);
			-webkit-transform: scale(1) translate3d(0, 0, 0);
			-moz-transform: scale(1) translate3d(0, 0, 0);
			opacity: 1;
			margin-bottom: 0 !important;
			transition: margin .4s, transform .4s .2s, opacity .4s .2s;
		}	
		
		.industry_grid:not(.br_carousel) a:hover .industry_box_image {
			transform: translate(40px, -40px) translate3d(0, 0, 0);
			-webkit-transform: translate(40px, -40px) translate3d(0, 0, 0);
			-moz-transform: translate(40px, -40px) translate3d(0, 0, 0);
		}

		.industry_grid:not(.br_carousel) a:hover .industry_box_content {
			transform: translateY(-40px) translate3d(0, 0, 0);
			-webkit-transform: translateY(-40px) translate3d(0, 0, 0);
			-moz-transform: translateY(-40px) translate3d(0, 0, 0);
			margin-bottom: -40px;
		}
	}

	.industry_grid a .industry_box_image,
	.industry_grid a .industry_box_content {
		transition: .4s;
	}

	/* Carousel Tweak */

	.swiper-slide {
		-webkit-transform: translate3d(0, 0, 0);
		-ms-transform: translate3d(0, 0, 0);
		transform: translate3d(0, 0, 0);
	}

	/* Carousel Presets */

	.br_carousel .swiper-container {
		width: 100%;
		padding-bottom: 0 !important;
		order: 1;
	}

	.br_carousel>.elementor-widget-container {
		display: flex;
		justify-content: flex-end;
		flex-wrap: wrap;
		row-gap: 40px;
		column-gap: 0px;
	}

	.br_carousel .elementor-swiper-button {
		transform: none !important;
		position: initial !important;
	}

	.br_carousel .elementor-swiper-button-prev {
		order: 3;
		margin-right: 12px;
	}

	.br_carousel .elementor-swiper-button-next {
		order: 4;
	}

	.br_carousel .elementor-swiper-button svg {
		width: 20px;
		height: 20px;
	}

	.br_carousel .swiper-pagination {
		order: 2;
		display: flex;
		align-items: center;
		gap: 8px;
		height: 36px !important;
		top: initial !important;
		bottom: 0;
		transform: translateX(-50%) !important;
	}

	.br_carousel .swiper-pagination span {
		margin: 0 !important;
		opacity: 1;
		transition: .4s;
	}

	.br_carousel .swiper-pagination-bullet-active {
		background-color: var(--space-100) !important;
	}

	@media (max-width: 1024px) {
		.br_carousel>.elementor-widget-container {
			row-gap: 24px;
		}

		.br_carousel .swiper-pagination {
			position: initial;
			width: 100% !important;
			justify-content: center;
			height: auto !important;
			transform: none !important;
		}
	}

	/* Accordion - Presets */

	.br_accordion .e-n-accordion {
		display: flex;
		flex-direction: column;
		gap: 10px;
	}

	.br_accordion details {
		border-radius: 16px;
		border: 1px solid var(--space-10);
	}

	.br_accordion .e-closed {
		display: none !important;
	}

	.br_accordion .e-opened {
		display: flex !important;
		width: 48px !important;
		height: 48px !important;
		align-items: center;
		justify-content: center;
		border: 1px solid var(--space-10);
		border-radius: 50%;
		transition: .4s;
	}

	.br_accordion .e-opened svg {
		width: 16px;
		transition: .4s;
	}

	.br_accordion summary {
		display: flex;
		gap: 30px !important;
		justify-content: space-between !important;
	}

	.br_accordion summary[aria-expanded=true] .e-opened {
		border: 1px solid var(--transparent-);
	}

	.br_accordion summary[aria-expanded=true] .e-opened svg {
		transform: rotate(180deg) translate3d(0, 0, 0);
		-webkit-transform: rotate(180deg) translate3d(0, 0, 0);
		-moz-transform: rotate(180deg) translate3d(0, 0, 0);
	}

	/* Buttons */

	.br_button.button_blue a:focus {
		background-color: var(--arctic-100) !important;
		border-color: var(--arctic-100) !important;
		color: var(--white) !important;
	}

	.br_button.button_blue a:hover {
		background-color: var(--arctic-120) !important;
		border-color: var(--arctic-120) !important;
		color: var(--white) !important;
	}

	.br_button.button_yellow a:focus {
		background-color: var(--gold-100) !important;
		border-color: var(--gold-100) !important;
		color: var(--space-100) !important;
	}

	.br_button.button_yellow a:hover {
		background-color: var(--gold-80) !important;
		border-color: var(--gold-80) !important;
		color: var(--space-100) !important;
	}

	.br_button.button_outlined a:focus {
		background-color: var(--white) !important;
		border-color: var(--arctic-100) !important;
		color: var(--space-100) !important;
	}

	.br_button.button_outlined a:hover {
		background-color: var(--arctic-100) !important;
		border-color: var(--arctic-100) !important;
		color: var(--white) !important;
	}

	.br_button.button_transparent a:focus {
		background-color: var(--transparent) !important;
		border-color: var(--transparent) !important;
		color: var(--arctic-100) !important;
	}

	.br_button.button_transparent a:hover {
		background-color: var(--arctic-100) !important;
		border-color: var(--arctic-100) !important;
		color: var(--white) !important;
	}

	.br_button a:before {
		content: "";
		display: flex;
		background-color: inherit !important;
		border-color: inherit !important;
		color: inherit !important;
	}

	.br_button span {
		display: flex;
		align-items: center;
		justify-content: center;
		z-index: 1;
	}

	.br_button.icon-24 svg {
		width: 24px !important;
		height: 24px !important;
	}

	.br_button.icon-16 svg {
		width: 16px !important;
		height: 16px !important;
	}

	@media (max-width: 767px) {
		.br_button a {
			width: 100% !important;
		}
	}

	/* Breadcrumbs  */

	#breadcrumbs span {
		display: flex;
		align-items: center;
		flex-wrap: wrap;
		row-gap: 8px;
		text-align: left;
	}

	#breadcrumbs span span:not(.breadcrumb_last):after {
		content: "";
		width: 16px;
		height: 16px;
		background-image: url(/wp-content/uploads/2024/04/bloomreach-chevron-right-1.svg);
		display: flex;
		margin: 0 8px;
	}

	#breadcrumbs a {
		color: var(--space-100) !important;
		text-decoration-color: var(--transparent) !important;
		transition: .4s;
	}

	#breadcrumbs a:hover {
		color: var(--arctic-100) !important;
		text-decoration-color: var(--arctic-100) !important;
	}

	#breadcrumbs span span:first-child a {
		color: var(--transparent) !important;
		width: 28px;
		height: 28px;
		overflow: hidden;
		background-image: url(/wp-content/uploads/2024/04/bloomreach-icon.svg);
		background-position: center center;
		background-size: contain;
		background-repeat: no-repeat;
		text-decoration: none !important;
	}
	
	.rank-math-breadcrumb p, .rank-math-breadcrumb a {
		display: flex;
		align-items: center;
		flex-wrap: wrap;
		row-gap: 8px;
		text-align: left;
	}

	.rank-math-breadcrumb .separator {
		width: 16px;
		height: 16px;
		background-image: url(/wp-content/uploads/2024/04/bloomreach-chevron-right-1.svg);
		display: flex;
		margin: 0 8px;
		color: var(--transparent) !important;
	}

	.rank-math-breadcrumb a {
		color: var(--space-100) !important;
		text-decoration-color: var(--transparent) !important;
		transition: .4s;

	}

	.rank-math-breadcrumb a:hover {
		color: var(--arctic-100) !important;
		text-decoration-color: var(--arctic-100) !important;
	}

	.rank-math-breadcrumb a:first-child {
		color: var(--transparent) !important;
		width: 28px;
		height: 28px;
		overflow: hidden;
		background-image: url(/wp-content/uploads/2024/04/bloomreach-icon.svg);
		background-position: center center;
		background-size: contain;
		background-repeat: no-repeat;
		text-decoration: none !important;
	}

	/* Bookmark */

	.bookmark_icon {
		height: 32px;
	}

	.bookmark_icon .elementor-widget-container,
	.bookmark_icon svg,
	selector svg path {
		transition: .4s;
	}

	.bookmark_icon div {
		display: flex;
		align-items: center;
		justify-content: center;
	}

	.bookmark_icon.bookmark_active .elementor-widget-container {
		background-color: var(--arctic-100);
	}

	.bookmark_icon.bookmark_active svg path {
		fill: var(--white);
	}

	/* Close Button */

	.br_close_button {
		transition: .4s;
	}

	.br_close_button:hover {
		transform: rotate(180deg) translate3d(0, 0, 0);
		-webkit-transform: rotate(180deg) translate3d(0, 0, 0);
		-moz-transform: rotate(180deg) translate3d(0, 0, 0);
	}

	/* Counter */
	
	html:not([lang="en"]) .elementor-counter-number-suffix-percent {
		margin-left: 0.2em;
	}
	
	.filter-grid {
		display: none;
	}
	
	/* Loading Spinner */
	/*
	.elementor-widget-loop-grid.loading {
		display: flex;
		flex-wrap: wrap;
	}
	
	.elementor-widget-loop-grid.loading:after {
		content: "\f110";
		font-family: "Font Awesome 5 Free";
		font-weight: 900;
		font-size: 18px;
		color: var(--gold-100);
		-moz-osx-font-smoothing: grayscale;
    -webkit-font-smoothing: antialiased;
    display: inline-block;
    font-style: normal;
    font-variant: normal;
    text-rendering: auto;
    line-height: 1;
		width: 100%;
		justify-content: center;
		align-items: center;
		display: flex;
		margin-top: 48px;
		animation: a 2s infinite linear;
	}
	
	.posts-filter__no-results {
		text-align: center;
		padding: 32px 0;
		max-width: var(--container-max-width);
		margin: 0 auto;
	}
	
	*/
</style>
<style>
	
	/* Migrated Key Takeaways */
	
	.e-load-more-spinner {
		transform: scale(2.6) !important;
	}
	
	.post_content .br-blog-kt {
		background-color: var(--space-05);
    padding: 32px;
    border-radius: 32px;
    margin-bottom: 32px;
	}
	
	.post_content .br-blog-kt .br-blog-kt__title {
		font: var(--h4-medium-font);
		color: var(--space-100);
		margin-bottom: 16px;
	}
	
	.post_content .br-blog-kt .br-blog-kt__description {
		font: var(--body-l-regular-font);
    color: var(--space-80);
    margin-bottom: 30px;
	}
	
	.post_content .br-blog-kt .br-blog-kt__ol {
		margin-bottom: 0;
		list-style: none;
		padding: 0;
		counter-reset: itemnum;
	}
	
	.post_content .br-blog-kt .br-blog-kt__ol li {
		padding-left: 56px;
		position: relative;
		color: var(--space-80);
	}
	
	.post_content .br-blog-kt .br-blog-kt__ol li:not(:last-child) {
		margin-bottom: 30px;
	}
	
	.post_content .br-blog-kt .br-blog-kt__ol li:before {
		counter-increment: itemnum;
		content: counter(itemnum);
		width: 32px;
		height: 32px;
		display: flex;
		align-items: center;
		justify-content: center;
		background-color: var(--gold-100);
		font-weight: 500;
		position: absolute;
		left: 0;
		top: 0;
		border-radius: 50%;
	}
	
	@media (max-width: 1024px) {
		.post_content .br-blog-kt {
			padding: 24px 20px;
			border-radius: 20px;
		}
		
		.post_content .br-blog-kt .br-blog-kt__title {
			font: var(--h5-medium-font);
			margin-bottom: 12px;
		}
		
		.post_content .br-blog-kt .br-blog-kt__description {
			margin-bottom: 20px;
		}
	}
	
	@media (max-width: 767px) {
		.post_content .br-blog-kt .br-blog-kt__ol li {
			padding-left: 48px;
		}
		
		.post_content .br-blog-kt .br-blog-kt__ol li:not(:last-child) {
			margin-bottom: 20px;
		}
	}
	
	/* Multiple Authors */
	
	.authors-block,
	.authors-block div {
		display: flex;
	}

	.authors-block {
		align-items: center;
		gap: 12px;
	}

	.authors-block__images {
		min-width: fit-content;
	}

	.authors-block__images img {
		width: 40px;
		height: 40px;
		border-radius: 50% !important;
		border: 2px solid var(--arctic-20);
		object-fit: cover;
		object-position: center center;
	}

	.authors-block__images img:nth-child(n + 2) {
		margin-left: -12px;
	}

	.authors-block__images img:nth-child(1) {
		z-index: 5;
	}

	.authors-block__images img:nth-child(2) {
		z-index: 4;
	}

	.authors-block__images img:nth-child(3) {
		z-index: 3;
	}

	.authors-block__images img:nth-child(4) {
		z-index: 2;
	}

	.authors-block__images img:nth-child(5) {
		z-index: 1;
	}

	.authors-block__names {
		flex-wrap: wrap;
		column-gap: 6px;
	}

	.authors-block__names span {
		font: var(--body-l-medium-font);
	}

	.authors-block__names span:not(:last-child):after {
		content: ",";
	}
	
	/* Categories / Tags */
	
	.post_cat-tag .elementor-post-info__terms-list {
    color: var( --transparent );
    display: flex !important;
    flex-wrap: wrap;
    column-gap: 2px;
    row-gap: 8px;
	}

	.post_cat-tag .elementor-post-info__terms-list-item {
		background-color: var(--space-100);
		border-radius: 99px;
		display: flex !important;
		padding: 3px 8px;
		color: var( --white ) !important;
		transition: .4s;
	}

	.post_cat-tag .elementor-post-info__terms-list-item:hover {
		background-color: var( --space-80 );
	}
	
	/* Sticky Aside */
	
	@media (min-width: 1025px) {
		.post_sticky_aside {
			position: sticky;
			top: 80px;
			transform: translate3d(0,0,0);
			-webkit-transform: translate3d(0,0,0);
			-ms-transform: translate3d(0,0,0);
		}
		
		#wpadminbar ~ .elementor .post_sticky_aside {
			top: 112px;
		} 
	}
	
	/* Progress Tracker */
	
	.progress_tracker {
		position: fixed;
		width: 100vw;
		left: 50%;
		top: 92px;
		transform: translateX(-50%) translate3d(0,0,0);
		-webkit-transform: translateX(-50%) translate3d(0,0,0);
		-ms-transform: translateX(-50%) translate3d(0,0,0);
		transition: .4s;
	}
	
	.sticky_header_active .progress_tracker {
		top: 65px;
	}
	
	#wpadminbar ~ div[data-elementor-type=single-post] .progress_tracker {
		top: 124px;
	} 
	
	.sticky_header_active #wpadminbar ~ div[data-elementor-type=single-post] .progress_tracker {
		top: 97px;
	} 
	
	@media (max-width: 1024px) {
		.progress_tracker {
			top: 64px;	
		}
		
		.sticky_header_active .progress_tracker {
			top: 49px;
		}
		
		#wpadminbar ~ div[data-elementor-type=single-post] .progress_tracker {
			top: 96px;
		} 

		.sticky_header_active #wpadminbar ~ div[data-elementor-type=single-post] .progress_tracker {
			top: 81px;
		} 
	}
	
	/* Table of contents */ 
	
	@media (min-width: 1025px) {
		.post_toc .elementor-widget-container {
			max-height: calc(100vh - 216px);
			min-height: 250px;
			overflow: auto !important;
		}
		
		.post_toc_blog .elementor-widget-container {
        max-height: calc(100vh - 456px);
    }
		
		#wpadminbar ~ div[data-elementor-type=single-post] .post_toc .elementor-widget-container {
			max-height: calc(100vh - 248px);
		}
		
		#wpadminbar ~ div[data-elementor-type=single-post] .post_toc_blog .elementor-widget-container {
            max-height: calc(100vh - 488px);
    }
		
		.post_toc .elementor-widget-container::-webkit-scrollbar {
			overflow: visible;
			width: 20px;
		}
		.post_toc .elementor-widget-container::-webkit-scrollbar-button {
			height: 0;
			width: 0;
		}

		.post_toc .elementor-widget-container::-webkit-scrollbar-track {
			background-color: var(--transparent);
			transition: .4s;
		}

		.post_toc .elementor-widget-container::-webkit-scrollbar-track:hover {
			background-color: var(--transparent);
		}

		.post_toc .elementor-widget-container::-webkit-scrollbar-track:active {
			background-color: var(--transparent);
		}

		.post_toc .elementor-widget-container::-webkit-scrollbar-thumb {
			background-color: var(--arctic-100);
			border-radius: 99px;
			border-top: 8px solid var(--transparent);
			border-bottom: 8px solid var(--transparent);
			border-left: 8px solid var(--transparent);
			border-right: 8px solid var(--transparent);
			background-clip: content-box;
			transition: .4s;
		}

		.post_toc .elementor-widget-container::-webkit-scrollbar-thumb:hover {
			background-color: var(--arctic-120);
		}

		.post_toc .elementor-widget-container::-webkit-scrollbar-thumb:active {
			background-color: var(--arctic-120);
		}
		
    .post_toc .elementor-toc__toggle-button {
       display: none;
    }
	}

	.post_toc .elementor-toc__toggle-button i {
		font-size: 16px !important;
	}

	.post_toc .elementor-toc__body {
		margin-top: 24px;
	}

	.post_toc .elementor-toc__list-wrapper {
		display: flex;
		flex-direction: column;
		gap: 16px;
	}

	.post_toc .elementor-toc__list-item {
		margin-bottom: 0;
		width: 100%;
	}

	.post_toc .elementor-toc__list-item a {
		padding: 8px;
		border-radius: 8px;
		width: 100%;
		transition: .4s;
	}

	.post_toc .elementor-toc__list-item a:hover,
	.post_toc .elementor-toc__list-item a.elementor-item-active {
		background-color: var( --arctic-10 );
	}

	@media (max-width: 1024px) {
		.post_toc .elementor-toc__list-wrapper {
			gap: 4px;
		}
	}
	
	/* Share Buttons - Copy Link */
	
	.post_copy_link a {
		display: flex;
		align-items: center;
		justify-content: center;
		width: 28px;
		height: 28px;
	}
	
	.post_copy_link a svg,
	.post_copy_link a svg path {
		transition: .4s;
	}
	
	.post_copy_link a:hover svg path {
		fill: var( --arctic-100 );
	}
	
	.post_copy_link .tooltip-container {
		display: flex;
	}
	
	.post_copy_link .tooltip {
		font: var( --body-s-medium-font );
		color: var( --space-100 );
		background-color: var( --gold-100 );
		padding: 6px 12px;
		width: initial;
		margin: 0;
		transform: translate(-50%, 125%);
		bottom: 0;
	}
	
	.post_copy_link .tooltip:before {
		content: "";
		display: flex;
		width: 12px;
		height: 12px;
		background-color: var( --gold-100 );
		position: absolute;
		top: -6px;
		left: calc(50% - 5px);
		transform: rotate(45deg);
	}
	
	/* Content */
	
	.post_content h2,
	.post_content h3,
	.post_content h4,
	.post_content h5,
	.post_content h6,
	.post_content p,
	.post_content blockquote,
	.post_content figure,
	.post_content ol,
	.post_content ul {
		margin-bottom: 32px;
	}

	.post_content h2 {
		font: var( --h3-medium-font );
	}

	.post_content h3 {
		font: var( --h4-medium-font );
	}

	.post_content h4 {
		font: var( --h5-medium-font );
	}

	.post_content h5 {
		font: var( --h6-medium-font );
	}

	.post_content h6 {
		font: var( --body-xl-medium-font );
	}

	.post_content .wp-block-image img,
	.post_content p img,
	.post_content iframe,
	.post_content .wp-block-video video {
		border-radius: 20px;
	}
	
	.post_content blockquote {
		margin-top: 0;
		margin-right: 0;
		margin-left: 0;
		padding: 32px 64px;
		text-align: center;
		border-radius: 16px;
		background-color: var( --space-05 );
	}
	
	.post_content blockquote p {
		font: var( --body-2xl-medium-font );
		margin: 0;
	}
	
	.post_content figure {
		margin-left: 0;
		margin-right: 0;
	}

	.post_content ul {
		list-style: none !important;
		padding: 0;
	}

	.post_content ul li {
		padding-left: 32px;
		position: relative;
	}

	.post_content ul li:before {
		content: "";
    width: 4px;
    height: 4px;
    border-radius: 50%;
    background-color: var(--space-100);
    display: flex;
    position: absolute;
    top: 10px;
    left: 16px;
    transform: translateX(-50%);
	}

	.post_content ol {
			padding-left: 26px;
		}
		
	.post_content ol li {
		padding-left: 6px;
	}

	.post_content p a,
	.post_content ul li a,
	.post_content ol li a {
		color: var( --arctic-100 ) !important;
		text-decoration: underline !important;
	}
	
	.post_content p.border{
		padding-left: 12px;
		border-left: 4px solid var( --gold-100 );
	}
	
	.post_content ol.border{
		padding-left: 28px;
		border-left: 4px solid var( --gold-100 );
	}
	
	.post_content ul.border  {
		padding-left: 0px;
		border-left: 4px solid var( --gold-100 );
	}
	
	@media (max-width: 1024px) {
		.post_content blockquote {
			padding: 32px 16px;
		}
	}
	
	.post_content ul ul {
		margin: 0;
	}
	
</style>
<style>
	/* Sticky Header */
	
	#wpadminbar ~ div[data-elementor-type=header] {
		top: 32px;
	} 
	
	body {
		padding-top: 93px;
	}
	
	@media (max-width: 1024px) {
		body {
			padding-top: 65px;
		}
	}
	
	div[data-elementor-type=header] {
		position: fixed;
		width: 100%;
		max-width: 100vw;
		left: 0;
		right: 0;
		top: 0;
		z-index: 10000;
	}
	
	.sticky_header {
		inset-inline-start: initial !important;
		width: 100% !important;
	}
	
	.sticky_header > .e-con-inner {
		transition: .4s;
	}
	
	.sticky_header .e-n-menu-content {
		padding-block-start: 34px !important;
		transition: padding-block-start .4s;
	}
	
	.sticky_header_active .sticky_header > .e-con-inner {
		padding-top: 8px !important;
		padding-bottom: 8px !important;
	}
	
	@media (min-width: 1025px) {
		.sticky_header_active .sticky_header .e-n-menu-content {
			padding-block-start: 20px !important;
		}	
	}
	
	/* Sticky Header - Animation */
	
	.sticky_header .header_logo_wrap {
		transition: .8s;
	}
	
	.sticky_header .header_logo,
	.sticky_header .header_icon,
	.sticky_header .header_logo svg,
	.sticky_header .header_logo svg path {
		transition: .8s ease-in-out;
	}
	
	.sticky_header .header_icon svg,
	.sticky_header .header_icon svg path {
		transition: .4s ease-in-out;
	}
	
	.sticky_header .header_logo svg,
	.sticky_header .header_logo svg path {
		transition-delay: .4s;
	}
	
	.sticky_header .header_icon svg,
	.sticky_header .header_icon svg path {
		transition-delay: 0s;
	}
	
	.sticky_header .header_logo svg {
		width: 184px !important;
		height: 40px;
	}
	
	.sticky_header .header_icon svg {
		width: 40px !important;
		height: 40px;
	}
	
	.sticky_header .header_icon svg path {
		transform: translateX(-100%) translate3d(0,0,0);
		-webkit-transform: translateX(-100%) translate3d(0,0,0);
		-moz-transform: translateX(-100%) translate3d(0,0,0);
	}
	
	.sticky_header_active .sticky_header .header_logo_wrap {
		width: 40px !important;
	}
	
	.sticky_header_active .sticky_header .header_logo svg path {
		transition-delay: 0s;
		transform: translateX(-100%) translate3d(0,0,0);
		-webkit-transform: translateX(-100%) translate3d(0,0,0);
		-moz-transform: translateX(-100%) translate3d(0,0,0);
	}
	
	.sticky_header_active .sticky_header .header_icon svg path {
		transition-delay: .8s;
		transform: translateX(0) translate3d(0,0,0);
		-webkit-transform: translateX(0) translate3d(0,0,0);
		-moz-transform: translateX(0) translate3d(0,0,0);
		
	}
	
	@media (max-width: 1024px) {
		.sticky_header .header_logo svg {
			width: 148px !important;
			height: 32px;
		}
		
		.sticky_header .header_icon svg {
			width: 32px !important;
			height: 32px
		}
		
		.sticky_header_active .sticky_header .header_logo_wrap {
			width: 32px !important;
		}
	}
	
	/* Sticky Header - Animation - Megamenu Content Fix */
	
	.sticky_header div[id^="e-n-menu-content"] {
		position: fixed !important;
		left: 0;
	}
	
	/* Header */
	
	.br_header a:focus,
	.mobile_menu_section a:focus {
    outline: none !important;
	}
	
	.br_header .e-n-menu-dropdown-icon span {
		display: flex !important;
	}

	.br_header .e-n-menu-dropdown-icon svg {
		width: 10px !important;
		height: 10px !important;
		transition: .4s !important;
	}

	.br_header .e-n-menu-dropdown-icon svg path,
	.br_header .wp_menu a svg path,
	.br_header .wp_menu a svg g {
		transition: .4s;
	}

	.br_header .e-n-menu-dropdown-icon[aria-expanded=true] {
		transform: rotate(180deg) translate3d(0,0,0) !important;
		-webkit-transform: rotate(180deg) translate3d(0,0,0) !important;
		-moz-transform: rotate(180deg) translate3d(0,0,0) !important;
	}

	.br_header .menu-item-active .e-n-menu-title-text {
		color: var( --arctic-100 ) !important;
	}
	
	.br_header .e-n-menu-item:has(.e-n-menu-dropdown-icon[aria-expanded=true]) .e-n-menu-title-text {
		color: var( --arctic-100 ) !important;
	}
	
	.br_header .e-n-menu-item .e-n-menu-title,
	.br_header .e-n-menu-item .e-n-menu-title-text {
		cursor: pointer !important;
	}

	.br_header .e-n-menu-dropdown-icon[aria-expanded=true] svg path {
		fill: var(--arctic-100);
	}

	.br_header .megamenu_devider {
		width: 1px;
		height: 100%;
		display: flex;
		background-color: var( --space-20 );
		pointer-events: none;
	}
	
	/* Megamenu Overlay */

	body:after {
		content: "";
		position: fixed;
		top: 0;
		right: 0;
		bottom: 0;
		width: 100%;
		display: flex;
		background-color: var( --black );
		opacity: 0;
		pointer-events: none;
		transition: 0s;
		z-index: 6;
	}
	
	body:has(.br_header button[aria-expanded=true]):after {
		transition: .8s;
		opacity: .8;
	}
	
	/* Some displays fix */
	
	@media (min-width: 1025px) and (max-width: 1100px) {
		.br_header .e-n-menu-title-text,
		.br_header a {
			font-size: 14px !important;
		}
	}
	
	/* Mobile Menu */

	.mobile_menu_section .lang_switch_menu ul {
		width: 100%;
		flex-direction: row-reverse;
		justify-content: space-between;
	}

	.mobile_menu_section .lang_switch_menu ul:after {
		display: none;
	}
	
	.mobile_menu_section .lang_switch_menu a {
		margin: 0 !important;
	}
	
	.burger_menu_item a {
		width: 100%;
		display: flex;
		padding: 19px 0;
	}

	.burger_menu_item a:after {
		content: "";
		display: flex;
		width: 24px;
		height: 24px;
		background-image: url(/wp-content/uploads/2024/04/bloomreach-chevron-right-3.svg);
		background-repeat: no-repeat;
		background-position: center center;
		position: absolute;
		right: 0;
		top: 50%;
		transform: translateY(-50%);
		pointer-events: none;
	}
	
	.mobile_menu_section details {
		border-bottom: 1px solid var( --space-20 );
	}

	.mobile_menu_section summary {
		justify-content: space-between !important;
	}

	.mobile_menu_section .e-opened {
		display: flex !important;
		align-items: center !important;
	}

	.mobile_menu_section .e-opened svg {
		width: 24px;
		height: 24px;
		transition: .4s;
	}

	.mobile_menu_section .e-closed {
		display: none !important;
	}

	.mobile_menu_section .e-n-accordion-item[open] .e-opened svg {
		transform: rotate(180deg) translate3d(0,0,0);
		-webkit-transform: rotate(180deg) translate3d(0,0,0);
		-moz-transform: rotate(180deg) translate3d(0,0,0);
	}
	
	.mobile_menu_section .loomi_btn:after {
		border-radius: 16px;
	}
	
	.br_mobile_menu .elementor-widget-html .elementor-widget-container {
		height: 32px;
		display: flex;
		align-items: center;
		justify-content: center;
	}

	.br_mobile_menu .burger_icon {
		width: 24px;
		height: 16px;
		display: flex;
		flex-direction: column;
		justify-content: space-between;
	}

	.br_mobile_menu .burger_line {
		width: 100%;
		height: 2px;
		border-radius: 99px;
		background-color: var( --black );
		transition: .4s;
	}

	.br_mobile_menu.mobile_menu_active .burger_line:nth-child(1) {
		transform: rotate(45deg) translate(5px, 5px) translate3d(0,0,0);
		-webkit-transform: rotate(45deg) translate(5px, 5px) translate3d(0,0,0);
		-moz-transform: rotate(45deg) translate(5px, 5px) translate3d(0,0,0);
	} 

	.br_mobile_menu.mobile_menu_active .burger_line:nth-child(2) {
		opacity: 0;
		transform: scale(0);
	}

	.br_mobile_menu.mobile_menu_active .burger_line:nth-child(3) {
		transform: rotate(-45deg) translate(5px, -5px) translate3d(0,0,0);
		-webkit-transform: rotate(-45deg) translate(5px, -5px) translate3d(0,0,0);
		-moz-transform: rotate(-45deg) translate(5px, -5px) translate3d(0,0,0);
	}
	
	/* Header / Navigation Boxes & Menu */

	.loomi_btn:after {
		content: "";
		position: absolute;
		top: 0;
		left: 0;
		bottom: 0;
		right: 0;
		background: linear-gradient(90deg, #0BC3E3 0%, #5BBF8C 30.5%, #A1C751 67%, #CCCE2D 100%);
		border-radius: 99px;
		transition: .4s;
	}

	.loomi_btn:hover:after {
		opacity: .8;
	}

	.loomi_btn:hover .loomi_btn_inner:before {
		opacity: .2;
	}

	.menu_box h3 {
		transition: .4s;
	}

	.menu_box:hover h3 {
		color: var( --arctic-100 );
	}

	.menu_box svg {
		transform: scale(0) translate3d(0,0,0);
		-webkit-transform: scale(0) translate3d(0,0,0);
		-moz-transform: scale(0) translate3d(0,0,0);
		transition: .4s;
	}

	.menu_box:hover svg {
		transform: scale(1) translate3d(0,0,0);
		-webkit-transform: scale(1) translate3d(0,0,0);
		-moz-transform: scale(1) translate3d(0,0,0);
	}

	.wp_menu a {
		display: inline-flex;
		padding-left: 32px !important;
	}

	.wp_menu a svg {
		position: absolute;
		left: 0;
		top: 50%;
		height: 20px;
		width: 20px;
		transform: translateY(-50%);
		-webkit-transform: translateY(-50%);
		-moz-transform: translateY(-50%);
		pointer-events: none;
		transition: .4s;
	}
	
	.wp_menu a svg path {
		fill: var( --space-40 );
		transition: .4s;
	}

	.wp_menu a:hover svg g {
		opacity: 1;
	}

	.wp_menu a:hover svg path {
		fill: var( --arctic-100 );
	}
	
	/* Some Icons Fixes */
	
	.wp_menu a svg g:not(:nth-of-type(1)) {
		display: none;
	}
	
	#shield-search + path {
		display: none;
	}
	
	/* Language Switcher / Login */
	
	.login_dropdown a.has-submenu {
		cursor: pointer !important;
	}
	
	.lang_switch_menu .wpml-ls-current-language a .sub-arrow,
	.login_dropdown a.has-submenu .sub-arrow {
		padding: 0;
		width: 10px;
		height: 10px;
		position: relative;
		margin: 0 0 0 4px !important;
		margin-block-start: 0;
		margin-block-end: 0;
	}

	.lang_switch_menu .wpml-ls-current-language a .sub-arrow i,
	.login_dropdown a.has-submenu .sub-arrow i {
		display: flex;
		position: absolute;
		top: 0;
		right: 0;
		bottom: 0;
		left: 0;
	}

	.lang_switch_menu .wpml-ls-current-language a .sub-arrow i:before,
	.lang_switch_menu .wpml-ls-current-language a .sub-arrow i:after,
	.login_dropdown a.has-submenu .sub-arrow i:before,
	.login_dropdown a.has-submenu .sub-arrow i:after {
		content: "";
		position: absolute;
		top: 0;
		left: 0;
		width: 10px;
		height: 10px;
		transition: .4s;
		background-size: contain;
		background-position: center center;
		background-repeat: no-repeat;
	}

	.lang_switch_menu .wpml-ls-current-language a .sub-arrow i:before,
	.login_dropdown a.has-submenu .sub-arrow i:before {
		background-image: url(/wp-content/uploads/2024/04/bloomreach-chevron-down-1.svg);
	}

	.lang_switch_menu .wpml-ls-current-language a .sub-arrow i:after,
	.login_dropdown a.has-submenu .sub-arrow i:after {
		background-image: url(/wp-content/uploads/2024/04/bloomreach-chevron-down-arctic-1.svg);
		opacity: 0;
	}

	.lang_switch_menu .wpml-ls-current-language a:hover .sub-arrow i:before,
	.login_dropdown a.has-submenu:hover .sub-arrow i:before {
		opacity: 0;
	}

	.lang_switch_menu .wpml-ls-current-language a[aria-expanded=true] .sub-arrow i:before,
	.login_dropdown a.has-submenu[aria-expanded=true] .sub-arrow i:before {
		opacity: 0;
	}

	.lang_switch_menu .wpml-ls-current-language a:hover .sub-arrow i:after,
	.login_dropdown a.has-submenu:hover .sub-arrow i:after {
		opacity: 1;
	}

	.lang_switch_menu .wpml-ls-current-language a[aria-expanded=true] .sub-arrow i:after,
	.login_dropdown a.has-submenu[aria-expanded=true] .sub-arrow i:after {
		opacity: 1;
	}

	.lang_switch_menu .wpml-ls-current-language a:hover .sub-arrow i:before,
	.lang_switch_menu .wpml-ls-current-language a:hover .sub-arrow i:after,
	.login_dropdown a.has-submenu:hover .sub-arrow i:before,
	.login_dropdown a.has-submenu:hover .sub-arrow i:after {
		transform: rotate(180deg) translate3d(0,0,0);
		-webkit-transform: rotate(180deg) translate3d(0,0,0);
		-moz-transform: rotate(180deg) translate3d(0,0,0);
	}

	.lang_switch_menu .wpml-ls-current-language a[aria-expanded=true] .sub-arrow i:before,
	.lang_switch_menu .wpml-ls-current-language a[aria-expanded=true] .sub-arrow i:after,
	.login_dropdown a.has-submenu[aria-expanded=true] .sub-arrow i:before,
	.login_dropdown a.has-submenu[aria-expanded=true] .sub-arrow i:after {
		transform: rotate(180deg) translate3d(0,0,0);
		-webkit-transform: rotate(180deg) translate3d(0,0,0);
		-moz-transform: rotate(180deg) translate3d(0,0,0);
	}
	
	/* Language Switcher */
	
	.lang_switch_menu .wpml-ls-current-language > a .wpml-ls-native {
		display: none;
	}
	
	.lang_switch_menu .wpml-ls-current-language ul {
		min-width: initial !important;
		width: 200px;
		border: 1px solid var( --space-10 ) !important;
		border-radius: 12px;
		transform: translateX(-12px);
		padding: 8px 0 !important;
	}
	
	.br_header .lang_switch_menu .wpml-ls-current-language ul {
		transform: translateX(-20px) !important;
	}
	
	.lang_switch_menu .wpml-ls-current-language ul a {
		margin: 0 !important;
		border: none !important;
		padding: 8px 16px !important;
		transition: .4s;
	}
	
	.lang_switch_menu .wpml-ls-current-language ul a .span-lang-code {
		font: var(--body-m-medium-font);
    display: inline-block;
    line-height: 28px;
    text-align: center;
    width: 28px;
    height: 28px;
    margin-right: 12px;
    background-color: rgba(204, 235, 245, 0.50);
    color: var(--arctic-100);
    border-radius: 4px;
    transition: 0.4s;
	}
	
	.lang_switch_menu .wpml-ls-current-language ul a:hover,
	.lang_switch_menu .wpml-ls-current-language ul a:focus {
		background-color: var( --arctic-10 ) !important;
	}
	
	.lang_switch_menu .wpml-ls-current-language ul a:hover .span-lang-code,
	.lang_switch_menu .wpml-ls-current-language ul a:focus .span-lang-code {
		background-color: var( --arctic-100	) !important;
		color: var( --white ) !important;
	}
	
	.lang_switch_menu .wpml-ls-current-language ul a .wpml-ls-native {
		color: var( --space-100 ) !important;
	}
	
	/* Login */
	
	.login_dropdown ul {
		border-radius: 20px;
		border: 1px solid var( --space-10 ) !important;
		padding: 12px !important;
		transform: translateX(-20px) !important;
	}
	
	.login_dropdown ul li:first-child {
		border-bottom: 1px solid var( --space-10 ) !important;
		padding-bottom: 8px;
	}
	
	.login_dropdown ul li:last-child {
		padding-top: 8px;
		pointer-events: none;
	}
	
	.login_dropdown ul li a {
		border: none !important;
		border-radius: 12px;
		padding: 12px 12px 12px 58px !important;
		font-weight: 500 !important;
		position: relative;
		width: 262px !important;
		display: flex;
		flex-wrap: wrap;
		align-items: flex-start;
		gap: 12px;
	}
	
	.login_dropdown ul li a:after {
		content: "";
		display: flex;
		transition: .4s;
		position: absolute;
		top: 12px;
		right: 12px;
		width: 20px;
		height: 20px;
		background-image: url(/wp-content/uploads/2024/04/bloomreach-arrow-link.svg);
		background-repeat: no-repeat;
		background-size: contain;
		background-position: center center;
		opacity: 0;
	}
	
	.login_dropdown ul li a:hover {
		background-color: var( --arctic-10 ) !important;
	}
	
	.login_dropdown ul li a:hover:after {
		opacity: 1;
	}
	
	.login_dropdown ul li a .menu-icon {
		display: flex;
		position: absolute;
		left: 12px;
		transform: translate3d(0,0,0);
		-webkit-transform: translate3d(0,0,0);
		-moz-transform: translate3d(0,0,0);
	}
	
	.login_dropdown ul li a .menu-description {
		font: var(--body-m-regular-font);
		color: var(--space-80);
		width: 100%;
		white-space: initial;
	}
</style>
<style>
	.line-banner-v1 {
		margin-bottom: 32px;
		width: 100%;
		border-radius: 16px;
		display: flex;
		align-items: center;
		padding: 16px 24px;
		background-color: var(--arctic-10);
		text-decoration: none !important;
	}
	.line-banner-v1-label {
		font: var(--body-l-medium-font);
		color: var(--space-100);
		margin-right: 16px;
	}
	.line-banner-v1-text {
		font: var(--body-l-medium-font);
		color: var(--arctic-100);
		margin-right: auto;
		text-decoration: underline;
	}
	.line-banner-v1-icon {
		display: flex;
		align-items: center;
		justify-content: center;
		background-color: var(--arctic-100);
		width: 24px;
		height: 24px;
		border-radius: 50%;
	}
	.line-banner-v1-icon svg {
		color: var(--white);
	}
</style>
<style>
	.add-careers-counter {
		display: flex;
	}
	.menu-item-career-count {
		margin-left: 8px;
		display: inline-block;
		min-width: 32px;
		height: 20px;
		text-align: center;
		background: var(--gold-100);
		border-radius: 99px;
		padding: 0 8px;
		font: var(--body-s-medium-font);
		line-height: 20px;
		color: var(--space-100);
	}
	
	@media (max-width: 767px){
	 .elementor-location-footer .menu-item-career-count {
		 margin-left: auto;
		}
	}
	
</style>
<style>
	.footer-category-link a {
	font: var(--body-m-medium-font) !important;
		margin-bottom: 4px;
}
	.elementor-widget-divider {
    background-color: var(--space-20);
		width: 100%;
}
	.footer-menu-container .elementor-item {
		transition: all 0.3s linear;
}
	.footer-menu-container .elementor-item::after{
		display: none !important;
}	
	
	.footer-tablet-divider {
		display: none;
	}
	
	.wmpl-container .elementor-icon-wrapper {
		display: flex;
		align-items: center;
	}
	
	.wmpl-container .wpml-ls-legacy-dropdown {
		width: auto;
		min-width: 74px;
	}
	
	.wmpl-container .wpml-ls-legacy-dropdown a.wpml-ls-item-toggle:before {
		content: "";
		display: flex;
		width: 20px;
		height: 20px;
		background-image: url(/wp-content/uploads/2024/06/wpml-icon.svg);
		pointer-events: none;
		background-size: contain;
		background-position: center center;
		background-repeat: no-repeat;
		margin-right: 8px;
	}
	
	.wmpl-container .wpml-ls-legacy-dropdown a.wpml-ls-item-toggle:after {
		display: none;
	}
	
	.wmpl-container .wpml-ls-legacy-dropdown a.wpml-ls-item-toggle {
		display: flex;
		align-items: center;
		padding-left: 0;
	}
	
	.wmpl-container .wpml-ls-legacy-dropdown a.wpml-ls-item-toggle svg {
		position: relative;
		margin-left: 4px;
	}
	
	.wmpl-container .wpml-ls-legacy-dropdown .wpml-ls-sub-menu {
		width: fit-content;
		border: 1px solid var(--space-10);
		border-radius: 12px;
		overflow: hidden;
		padding: 8px 0;
	}
	
		.wmpl-container .wpml-ls-legacy-dropdown .wpml-ls-sub-menu a {
			padding: 8px 16px;
	}
	
	.wmpl-container .wpml-ls-legacy-dropdown .wpml-ls-sub-menu a {
		font: var(--body-m-regular-font);
		display: flex;
		align-items: center;
		transition: background-color 0.3s linear;
	}
	
	.wmpl-container .wpml-ls-legacy-dropdown .span-lang-code {
		font: var(--body-m-medium-font);
		display: inline-block;
		line-height: 28px;
		text-align: center;
		width: 28px;
		height: 28px;
		margin-right: 12px;
		background-color: rgba(204, 235, 245, 0.50);
		color: var(--arctic-100);
		border-radius: 4px;
		transition: all 0.3s linear;
	}
	
	.wmpl-container .wpml-ls-legacy-dropdown {
		padding: 8px 0;
	}
	
	.wmpl-container .wpml-ls-legacy-dropdown .wpml-ls-sub-menu a:hover {
		background-color: var(--arctic-10) !important;
	}
	
	.wmpl-container .wpml-ls-legacy-dropdown .wpml-ls-sub-menu a:hover .span-lang-code {
		background-color: var(--arctic-100);
		color: var(--white);
	}
	
	.wmpl-container .js-wpml-ls-item-toggle .wpml-ls-item-toggle {
		padding-right: 10px;
	}
	
	.wmpl-container a {
		border: none;
	}
	
	.wmpl-container .wpml-ls-legacy-dropdown .wpml-ls-current-language .wpml-ls-sub-menu {
		display: none;
	}
	
	.wmpl-container .wpml-ls-legacy-dropdown .wpml-ls-current-language:hover .wpml-ls-sub-menu {
		display: block;
	}
	
		@media (max-width: 1024px) {
			.footer-desktop-divider-container {
				display: none;
			}
			.footer-tablet-divider {
				display: block;
			}
			.footer-menu-container .menu-item a {
				padding-left: 0;
				padding-right: 0;
				display: inline-flex;
				gap: 4px;
			}
			.footer-menu-container-top .elementor-nav-menu {
				display: flex;
				flex-wrap: wrap;
				row-gap: 8px;
				column-gap: 16px;
			}
			.footer-menu-container-top .elementor-nav-menu .menu-item {
				width: calc(50% - 8px);
			}
			
			.footer-menu-container-top .elementor-nav-menu .footer-category-link {
				width: 100%;
			}
			
			.footer-menu-container a:hover {
				background-color: transparent !important;
				color: var(--arctic-100) !important;
			}
	}
	
</style>
<style>
html,
body {
	--h1-regular-font-family: var(--e-global-typography-6c05653-font-family);
	--h1-regular-font-size: var(--e-global-typography-6c05653-font-size);
	--h1-regular-font-weight: var(--e-global-typography-6c05653-font-weight);
	--h1-regular-text-transform: var(--e-global-typography-6c05653-text-transform);
	--h1-regular-font-style: var(--e-global-typography-6c05653-font-style);
	--h1-regular-text-decoration: var(--e-global-typography-6c05653-text-decoration);
	--h1-regular-line-height: var(--e-global-typography-6c05653-line-height);
	--h1-regular-letter-spacing: var(--e-global-typography-6c05653-letter-spacing);

	--h1-regular-font: var(--h1-regular-font-weight) var(--h1-regular-font-size) / var(--h1-regular-line-height) var(--h1-regular-font-family);

	--h1-medium-font-family: var(--e-global-typography-5b2a5c1-font-family);
	--h1-medium-font-size: var(--e-global-typography-5b2a5c1-font-size);
	--h1-medium-font-weight: var(--e-global-typography-5b2a5c1-font-weight);
	--h1-medium-text-transform: var(--e-global-typography-5b2a5c1-text-transform);
	--h1-medium-font-style: var(--e-global-typography-5b2a5c1-font-style);
	--h1-medium-text-decoration: var(--e-global-typography-5b2a5c1-text-decoration);
	--h1-medium-line-height: var(--e-global-typography-5b2a5c1-line-height);
	--h1-medium-letter-spacing: var(--e-global-typography-5b2a5c1-letter-spacing);

	--h1-medium-font: var(--h1-medium-font-weight) var(--h1-medium-font-size) / var(--h1-medium-line-height) var(--h1-medium-font-family);

	--h2-regular-font-family: var(--e-global-typography-2320643-font-family);
	--h2-regular-font-size: var(--e-global-typography-2320643-font-size);
	--h2-regular-font-weight: var(--e-global-typography-2320643-font-weight);
	--h2-regular-text-transform: var(--e-global-typography-2320643-text-transform);
	--h2-regular-font-style: var(--e-global-typography-2320643-font-style);
	--h2-regular-text-decoration: var(--e-global-typography-2320643-text-decoration);
	--h2-regular-line-height: var(--e-global-typography-2320643-line-height);
	--h2-regular-letter-spacing: var(--e-global-typography-2320643-letter-spacing);

	--h2-regular-font: var(--h2-regular-font-weight) var(--h2-regular-font-size) / var(--h2-regular-line-height) var(--h2-regular-font-family);

	--h2-medium-font-family: var(--e-global-typography-8d367d6-font-family);
	--h2-medium-font-size: var(--e-global-typography-8d367d6-font-size);
	--h2-medium-font-weight: var(--e-global-typography-8d367d6-font-weight);
	--h2-medium-text-transform: var(--e-global-typography-8d367d6-text-transform);
	--h2-medium-font-style: var(--e-global-typography-8d367d6-font-style);
	--h2-medium-text-decoration: var(--e-global-typography-8d367d6-text-decoration);
	--h2-medium-line-height: var(--e-global-typography-8d367d6-line-height);
	--h2-medium-letter-spacing: var(--e-global-typography-8d367d6-letter-spacing);

	--h2-medium-font: var(--h2-medium-font-weight) var(--h2-medium-font-size) / var(--h2-medium-line-height) var(--h2-medium-font-family);

	--h3-regular-font-family: var(--e-global-typography-059bde3-font-family);
	--h3-regular-font-size: var(--e-global-typography-059bde3-font-size);
	--h3-regular-font-weight: var(--e-global-typography-059bde3-font-weight);
	--h3-regular-text-transform: var(--e-global-typography-059bde3-text-transform);
	--h3-regular-font-style: var(--e-global-typography-059bde3-font-style);
	--h3-regular-text-decoration: var(--e-global-typography-059bde3-text-decoration);
	--h3-regular-line-height: var(--e-global-typography-059bde3-line-height);
	--h3-regular-letter-spacing: var(--e-global-typography-059bde3-letter-spacing);

	--h3-regular-font: var(--h3-regular-font-weight) var(--h3-regular-font-size) / var(--h3-regular-line-height) var(--h3-regular-font-family);

	--h3-medium-font-family: var(--e-global-typography-1d93e70-font-family);
	--h3-medium-font-size: var(--e-global-typography-1d93e70-font-size);
	--h3-medium-font-weight: var(--e-global-typography-1d93e70-font-weight);
	--h3-medium-text-transform: var(--e-global-typography-1d93e70-text-transform);
	--h3-medium-font-style: var(--e-global-typography-1d93e70-font-style);
	--h3-medium-text-decoration: var(--e-global-typography-1d93e70-text-decoration);
	--h3-medium-line-height: var(--e-global-typography-1d93e70-line-height);
	--h3-medium-letter-spacing: var(--e-global-typography-1d93e70-letter-spacing);

	--h3-medium-font: var(--h3-medium-font-weight) var(--h3-medium-font-size) / var(--h3-medium-line-height) var(--h3-medium-font-family);

	--h4-regular-font-family: var(--e-global-typography-b16d1b4-font-family);
	--h4-regular-font-size: var(--e-global-typography-b16d1b4-font-size);
	--h4-regular-font-weight: var(--e-global-typography-b16d1b4-font-weight);
	--h4-regular-text-transform: var(--e-global-typography-b16d1b4-text-transform);
	--h4-regular-font-style: var(--e-global-typography-b16d1b4-font-style);
	--h4-regular-text-decoration: var(--e-global-typography-b16d1b4-text-decoration);
	--h4-regular-line-height: var(--e-global-typography-b16d1b4-line-height);
	--h4-regular-letter-spacing: var(--e-global-typography-b16d1b4-letter-spacing);

	--h4-regular-font: var(--h4-regular-font-weight) var(--h4-regular-font-size) / var(--h4-regular-line-height) var(--h4-regular-font-family);

	--h4-medium-font-family: var(--e-global-typography-e7c069d-font-family);
	--h4-medium-font-size: var(--e-global-typography-e7c069d-font-size);
	--h4-medium-font-weight: var(--e-global-typography-e7c069d-font-weight);
	--h4-medium-text-transform: var(--e-global-typography-e7c069d-text-transform);
	--h4-medium-font-style: var(--e-global-typography-e7c069d-font-style);
	--h4-medium-text-decoration: var(--e-global-typography-e7c069d-text-decoration);
	--h4-medium-line-height: var(--e-global-typography-e7c069d-line-height);
	--h4-medium-letter-spacing: var(--e-global-typography-e7c069d-letter-spacing);

	--h4-medium-font: var(--h4-medium-font-weight) var(--h4-medium-font-size) / var(--h4-medium-line-height) var(--h4-medium-font-family);

	--h5-regular-font-family: var(--e-global-typography-03d2901-font-family);
	--h5-regular-font-size: var(--e-global-typography-03d2901-font-size);
	--h5-regular-font-weight: var(--e-global-typography-03d2901-font-weight);
	--h5-regular-text-transform: var(--e-global-typography-03d2901-text-transform);
	--h5-regular-font-style: var(--e-global-typography-03d2901-font-style);
	--h5-regular-text-decoration: var(--e-global-typography-03d2901-text-decoration);
	--h5-regular-line-height: var(--e-global-typography-03d2901-line-height);
	--h5-regular-letter-spacing: var(--e-global-typography-03d2901-letter-spacing);

	--h5-regular-font: var(--h5-regular-font-weight) var(--h5-regular-font-size) / var(--h5-regular-line-height) var(--h5-regular-font-family);

	--h5-medium-font-family: var(--e-global-typography-4c7c04e-font-family);
	--h5-medium-font-size: var(--e-global-typography-4c7c04e-font-size);
	--h5-medium-font-weight: var(--e-global-typography-4c7c04e-font-weight);
	--h5-medium-text-transform: var(--e-global-typography-4c7c04e-text-transform);
	--h5-medium-font-style: var(--e-global-typography-4c7c04e-font-style);
	--h5-medium-text-decoration: var(--e-global-typography-4c7c04e-text-decoration);
	--h5-medium-line-height: var(--e-global-typography-4c7c04e-line-height);
	--h5-medium-letter-spacing: var(--e-global-typography-4c7c04e-letter-spacing);

	--h5-medium-font: var(--h5-medium-font-weight) var(--h5-medium-font-size) / var(--h5-medium-line-height) var(--h5-medium-font-family);

	--h6-regular-font-family: var(--e-global-typography-fe05c41-font-family);
	--h6-regular-font-size: var(--e-global-typography-fe05c41-font-size);
	--h6-regular-font-weight: var(--e-global-typography-fe05c41-font-weight);
	--h6-regular-text-transform: var(--e-global-typography-fe05c41-text-transform);
	--h6-regular-font-style: var(--e-global-typography-fe05c41-font-style);
	--h6-regular-text-decoration: var(--e-global-typography-fe05c41-text-decoration);
	--h6-regular-line-height: var(--e-global-typography-fe05c41-line-height);
	--h6-regular-letter-spacing: var(--e-global-typography-fe05c41-letter-spacing);

	--h6-regular-font: var(--h6-regular-font-weight) var(--h6-regular-font-size) / var(--h6-regular-line-height) var(--h6-regular-font-family);

	--h6-medium-font-family: var(--e-global-typography-230be9c-font-family);
	--h6-medium-font-size: var(--e-global-typography-230be9c-font-size);
	--h6-medium-font-weight: var(--e-global-typography-230be9c-font-weight);
	--h6-medium-text-transform: var(--e-global-typography-230be9c-text-transform);
	--h6-medium-font-style: var(--e-global-typography-230be9c-font-style);
	--h6-medium-text-decoration: var(--e-global-typography-230be9c-text-decoration);
	--h6-medium-line-height: var(--e-global-typography-230be9c-line-height);
	--h6-medium-letter-spacing: var(--e-global-typography-230be9c-letter-spacing);

	--h6-medium-font: var(--h6-medium-font-weight) var(--h6-medium-font-size) / var(--h6-medium-line-height) var(--h6-medium-font-family);

	--body-3xl-regular-font-family: var(--e-global-typography-69ab218-font-family);
	--body-3xl-regular-font-size: var(--e-global-typography-69ab218-font-size);
	--body-3xl-regular-font-weight: var(--e-global-typography-69ab218-font-weight);
	--body-3xl-regular-text-transform: var(--e-global-typography-69ab218-text-transform);
	--body-3xl-regular-font-style: var(--e-global-typography-69ab218-font-style);
	--body-3xl-regular-text-decoration: var(--e-global-typography-69ab218-text-decoration);
	--body-3xl-regular-line-height: var(--e-global-typography-69ab218-line-height);
	--body-3xl-regular-letter-spacing: var(--e-global-typography-69ab218-letter-spacing);

	--body-3xl-regular-font: var(--body-3xl-regular-font-weight) var(--body-3xl-regular-font-size) / var(--body-3xl-regular-line-height) var(--body-3xl-regular-font-family);

	--body-3xl-medium-font-family: var(--e-global-typography-11af8a0-font-family);
	--body-3xl-medium-font-size: var(--e-global-typography-11af8a0-font-size);
	--body-3xl-medium-font-weight: var(--e-global-typography-11af8a0-font-weight);
	--body-3xl-medium-text-transform: var(--e-global-typography-11af8a0-text-transform);
	--body-3xl-medium-font-style: var(--e-global-typography-11af8a0-font-style);
	--body-3xl-medium-text-decoration: var(--e-global-typography-11af8a0-text-decoration);
	--body-3xl-medium-line-height: var(--e-global-typography-11af8a0-line-height);
	--body-3xl-medium-letter-spacing: var(--e-global-typography-11af8a0-letter-spacing);

	--body-3xl-medium-font: var(--body-3xl-medium-font-weight) var(--body-3xl-medium-font-size) / var(--body-3xl-medium-line-height) var(--body-3xl-medium-font-family);

	--body-2xl-regular-font-family: var(--e-global-typography-0e97feb-font-family);
	--body-2xl-regular-font-size: var(--e-global-typography-0e97feb-font-size);
	--body-2xl-regular-font-weight: var(--e-global-typography-0e97feb-font-weight);
	--body-2xl-regular-text-transform: var(--e-global-typography-0e97feb-text-transform);
	--body-2xl-regular-font-style: var(--e-global-typography-0e97feb-font-style);
	--body-2xl-regular-text-decoration: var(--e-global-typography-0e97feb-text-decoration);
	--body-2xl-regular-line-height: var(--e-global-typography-0e97feb-line-height);
	--body-2xl-regular-letter-spacing: var(--e-global-typography-0e97feb-letter-spacing);

	--body-2xl-regular-font: var(--body-2xl-regular-font-weight) var(--body-2xl-regular-font-size) / var(--body-2xl-regular-line-height) var(--body-2xl-regular-font-family);

	--body-2xl-medium-font-family: var(--e-global-typography-9651909-font-family);
	--body-2xl-medium-font-size: var(--e-global-typography-9651909-font-size);
	--body-2xl-medium-font-weight: var(--e-global-typography-9651909-font-weight);
	--body-2xl-medium-text-transform: var(--e-global-typography-9651909-text-transform);
	--body-2xl-medium-font-style: var(--e-global-typography-9651909-font-style);
	--body-2xl-medium-text-decoration: var(--e-global-typography-9651909-text-decoration);
	--body-2xl-medium-line-height: var(--e-global-typography-9651909-line-height);
	--body-2xl-medium-letter-spacing: var(--e-global-typography-9651909-letter-spacing);

	--body-2xl-medium-font: var(--body-2xl-medium-font-weight) var(--body-2xl-medium-font-size) / var(--body-2xl-medium-line-height) var(--body-2xl-medium-font-family);

	--body-xl-regular-font-family: var(--e-global-typography-5994bb1-font-family);
	--body-xl-regular-font-size: var(--e-global-typography-5994bb1-font-size);
	--body-xl-regular-font-weight: var(--e-global-typography-5994bb1-font-weight);
	--body-xl-regular-text-transform: var(--e-global-typography-5994bb1-text-transform);
	--body-xl-regular-font-style: var(--e-global-typography-5994bb1-font-style);
	--body-xl-regular-text-decoration: var(--e-global-typography-5994bb1-text-decoration);
	--body-xl-regular-line-height: var(--e-global-typography-5994bb1-line-height);
	--body-xl-regular-letter-spacing: var(--e-global-typography-5994bb1-letter-spacing);

	--body-xl-regular-font: var(--body-xl-regular-font-weight) var(--body-xl-regular-font-size) / var(--body-xl-regular-line-height) var(--body-xl-regular-font-family);

	--body-xl-medium-font-family: var(--e-global-typography-9d59504-font-family);
	--body-xl-medium-font-size: var(--e-global-typography-9d59504-font-size);
	--body-xl-medium-font-weight: var(--e-global-typography-9d59504-font-weight);
	--body-xl-medium-text-transform: var(--e-global-typography-9d59504-text-transform);
	--body-xl-medium-font-style: var(--e-global-typography-9d59504-font-style);
	--body-xl-medium-text-decoration: var(--e-global-typography-9d59504-text-decoration);
	--body-xl-medium-line-height: var(--e-global-typography-9d59504-line-height);

	--body-xl-medium-font: var(--body-xl-medium-font-weight) var(--body-xl-medium-font-size) / var(--body-xl-medium-line-height) var(--body-xl-medium-font-family);

	--body-l-regular-font-family: var(--e-global-typography-b03e607-font-family);
	--body-l-regular-font-size: var(--e-global-typography-b03e607-font-size);
	--body-l-regular-font-weight: var(--e-global-typography-b03e607-font-weight);
	--body-l-regular-text-transform: var(--e-global-typography-b03e607-text-transform);
	--body-l-regular-font-style: var(--e-global-typography-b03e607-font-style);
	--body-l-regular-text-decoration: var(--e-global-typography-b03e607-text-decoration);
	--body-l-regular-line-height: var(--e-global-typography-b03e607-line-height);
	--body-l-regular-letter-spacing: var(--e-global-typography-b03e607-letter-spacing);

	--body-l-regular-font: var(--body-l-regular-font-weight) var(--body-l-regular-font-size) / var(--body-l-regular-line-height) var(--body-l-regular-font-family);

	--body-l-medium-font-family: var(--e-global-typography-3d17fa1-font-family);
	--body-l-medium-font-size: var(--e-global-typography-3d17fa1-font-size);
	--body-l-medium-font-weight: var(--e-global-typography-3d17fa1-font-weight);
	--body-l-medium-text-transform: var(--e-global-typography-3d17fa1-text-transform);
	--body-l-medium-font-style: var(--e-global-typography-3d17fa1-font-style);
	--body-l-medium-text-decoration: var(--e-global-typography-3d17fa1-text-decoration);
	--body-l-medium-line-height: var(--e-global-typography-3d17fa1-line-height);
	--body-l-medium-letter-spacing: var(--e-global-typography-3d17fa1-letter-spacing);

	--body-l-medium-font: var(--body-l-medium-font-weight) var(--body-l-medium-font-size) / var(--body-l-medium-line-height) var(--body-l-medium-font-family);

	--body-m-regular-font-family: var(--e-global-typography-5eb7557-font-family);
	--body-m-regular-font-size: var(--e-global-typography-5eb7557-font-size);
	--body-m-regular-font-weight: var(--e-global-typography-5eb7557-font-weight);
	--body-m-regular-text-transform: var(--e-global-typography-5eb7557-text-transform);
	--body-m-regular-font-style: var(--e-global-typography-5eb7557-font-style);
	--body-m-regular-text-decoration: var(--e-global-typography-5eb7557-text-decoration);
	--body-m-regular-line-height: var(--e-global-typography-5eb7557-line-height);
	--body-m-regular-letter-spacing: var(--e-global-typography-5eb7557-letter-spacing);

	--body-m-regular-font: var(--body-m-regular-font-weight) var(--body-m-regular-font-size) / var(--body-m-regular-line-height) var(--body-m-regular-font-family);

	--body-m-medium-font-family: var(--e-global-typography-90ed99e-font-family);
	--body-m-medium-font-size: var(--e-global-typography-90ed99e-font-size);
	--body-m-medium-font-weight: var(--e-global-typography-90ed99e-font-weight);
	--body-m-medium-text-transform: var(--e-global-typography-90ed99e-text-transform);
	--body-m-medium-font-style: var(--e-global-typography-90ed99e-font-style);
	--body-m-medium-text-decoration: var(--e-global-typography-90ed99e-text-decoration);
	--body-m-medium-line-height: var(--e-global-typography-90ed99e-line-height);
	--body-m-medium-letter-spacing: var(--e-global-typography-90ed99e-letter-spacing);

	--body-m-medium-font: var(--body-m-medium-font-weight) var(--body-m-medium-font-size) / var(--body-m-medium-line-height) var(--body-m-medium-font-family);

	--body-s-regular-font-family: var(--e-global-typography-3b41b1b-font-family);
	--body-s-regular-font-size: var(--e-global-typography-3b41b1b-font-size);
	--body-s-regular-font-weight: var(--e-global-typography-3b41b1b-font-weight);
	--body-s-regular-text-transform: var(--e-global-typography-3b41b1b-text-transform);
	--body-s-regular-font-style: var(--e-global-typography-3b41b1b-font-style);
	--body-s-regular-text-decoration: var(--e-global-typography-3b41b1b-text-decoration);
	--body-s-regular-line-height: var(--e-global-typography-3b41b1b-line-height);
	--body-s-regular-letter-spacing: var(--e-global-typography);

	--body-s-regular-font: var(--body-s-regular-font-weight) var(--body-s-regular-font-size) / var(--body-s-regular-line-height) var(--body-s-regular-font-family);

	--body-s-medium-font-family: var(--e-global-typography-a5350a3-font-family);
	--body-s-medium-font-size: var(--e-global-typography-a5350a3-font-size);
	--body-s-medium-font-weight: var(--e-global-typography-a5350a3-font-weight);
	--body-s-medium-text-transform: var(--e-global-typography-a5350a3-text-transform);
	--body-s-medium-font-style: var(--e-global-typography-a5350a3-font-style);
	--body-s-medium-text-decoration: var(--e-global-typography-a5350a3-text-decoration);
	--body-s-medium-line-height: var(--e-global-typography-a5350a3-line-height);
	--body-s-medium-letter-spacing: var(--e-global-typography-a5350a3-letter-spacing);

	--body-s-medium-font: var(--body-s-medium-font-weight) var(--body-s-medium-font-size) / var(--body-s-medium-line-height) var(--body-s-medium-font-family);			
	}
</style>
<style>
html,
body {
		--white: var(--e-global-color-primary);
		--black: var(--e-global-color-secondary);
		--transparent: var(--e-global-color-text);
		--gold-120: var(--e-global-color-3b0c067);
		--gold-100: var(--e-global-color-c442edd);
		--gold-80: var(--e-global-color-32c9961);
		--gold-60: var(--e-global-color-c56fa00);
		--gold-40: var(--e-global-color-62896ce);
		--gold-20: var(--e-global-color-f909b76);
		--gold-10: var(--e-global-color-13911f0);
		--gold-05: var(--e-global-color-4636613);
		--space-100: var(--e-global-color-8611160);
		--space-80: var(--e-global-color-a0d4d64);
		--space-60: var(--e-global-color-c4572d3);
		--space-40: var(--e-global-color-acc846a);
		--space-20: var(--e-global-color-1406ec1);
		--space-10: var(--e-global-color-388c9b9);
		--space-05: var(--e-global-color-8312410);
		--arctic-120: var(--e-global-color-ed7a765);
		--arctic-100: var(--e-global-color-f97dbcb);
		--arctic-80: var(--e-global-color-f0e72c9);
		--arctic-60: var(--e-global-color-6b21e76);
		--arctic-40: var(--e-global-color-c1ed425);
		--arctic-20: var(--e-global-color-9358a89);
		--arctic-10: var(--e-global-color-34c09f1);
		--arctic-05: var(--e-global-color-d9105b0);
		--purple-100: var(--e-global-color-1e8e11d);
		--purple-80: var(--e-global-color-698da75);
		--purple-60: var(--e-global-color-53f77a8);
		--purple-40: var(--e-global-color-93bc0ab);
		--purple-20: var(--e-global-color-75e6f6f);
		--green-100: var(--e-global-color-588da55);
		--green-80: var(--e-global-color-c039f3c);
		--green-60: var(--e-global-color-e7cc9a3);
		--green-40: var(--e-global-color-443ec07);
		--green-20: var(--e-global-color-00e8d3f);
		--pink-100: var(--e-global-color-350b195);
		--pink-80: var(--e-global-color-e70896c);
		--pink-60: var(--e-global-color-3ffea92);
		--pink-40: var(--e-global-color-ea489dd);
		--pink-20: var(--e-global-color-948cdea);
		--red-100: var(--e-global-color-82244fd);
		--red-80: var(--e-global-color-40c2569);
		--red-60: var(--e-global-color-0a16203);
		--red-40: var(--e-global-color-f7f360a);
		--red-20: var(--e-global-color-581e77a);
		--loomi-01: var(--e-global-color-abcab04);
		--loomi-02: var(--e-global-color-cc1f652);
		--loomi-03: var(--e-global-color-016cf82);
		--loomi-4: var(--e-global-color-465cf52);
		--loomi-5: var(--e-global-color-f32aeb9);
		--loomi-6: var(--e-global-color-3d15ffa);
		--loomi-7: var(--e-global-color-8f84ef1);
		--loomi-8: var(--e-global-color-1705769);
}
</style>

<style>
	.elementor-search-field {
		display: block;
		position: relative;
		width: 258px;
	}
	
	.elementor-search-field > input {
		display: flex;
		height: 48px;
		padding: 10px 46px 10px 32px;
		border-radius: 99px;
		border: 1px solid var(--space-20);
		background: var(--white);
	}
	
	.elementor-search-field > svg {
		display: block;
		position: absolute;
		width: 24px;
		height: 24px;
		top: 12px;
		right: 20px;
		color: var(--arctic-100);
	}

	@media (max-width: 1024px) {
		.elementor-search-field {
			width: 100%;
		}
	}
</style>
<style>
	.elementor-integrations-categories h3,
	.elementor-partners-categories h3,
	.elementor-partners-regions h3,
	.elementor-partners-tiers h3,
	.elementor-partners-core-capabilities h3 {
		margin: 0 0 32px 0;
	}
	
	.elementor-partners-categories > h3,
	.elementor-integrations-categories > h3,
	.elementor-integrations-categories h3 {
		font: var(--h5-medium-font);
	}
	
	.elementor-partners-regions h3,
	.elementor-partners-tiers h3,
	.elementor-partners-core-capabilities h3 {
		color: var(--space-60);
		font: var(--body-xl-medium-font);
	}
	
	.elementor-integrations-categories .elementor-integrations-categories-container,
	.elementor-partners-categories .elementor-partners-categories-container,
	.elementor-partners-regions .elementor-partners-regions-container,
	.elementor-partners-tiers .elementor-partners-tiers-container,
	.elementor-partners-core-capabilities .elementor-partners-core-capabilities-container {
		display: flex;
		flex-direction: column;
	}
	
	.elementor-integrations-categories .elementor-integrations-categories-container a,
	.elementor-partners-categories .elementor-partners-categories-container a,
	.elementor-partners-regions .elementor-partners-regions-container a,
	.elementor-partners-tiers .elementor-partners-tiers-container a,
	.elementor-partners-core-capabilities .elementor-partners-core-capabilities-container a {
		display: inline-block;
		padding: 8px;
		margin: 0 0 8px 0;
		color: var(--space-100);
		font: var(--body-xl-regular-font);
		border-radius: 8px;
		transition: .4s;
	}
	
	.elementor-integrations-categories .elementor-integrations-categories-container a:hover,
	.elementor-integrations-categories .elementor-integrations-categories-container a.active,
	.elementor-partners-categories .elementor-partners-categories-container a:hover,
	.elementor-partners-categories .elementor-partners-categories-container a.active,
	.elementor-partners-regions .elementor-partners-regions-container a:hover,
	.elementor-partners-regions .elementor-partners-regions-container a.active,
	.elementor-partners-tiers .elementor-partners-tiers-container a:hover,
	.elementor-partners-tiers .elementor-partners-tiers-container a.active,
	.elementor-partners-core-capabilities .elementor-partners-core-capabilities-container a:hover,
	.elementor-partners-core-capabilities .elementor-partners-core-capabilities-container a.active {
		background: var(--arctic-10);
	}
	
	.elementor-integrations-categories .elementor-integrations-categories-container .elementor-integrations-categories-count,
	.elementor-partners-categories .elementor-partners-categories-container .elementor-partners-categories-count,
	.elementor-partners-regions .elementor-partners-regions-container .elementor-partners-regions-count,
	.elementor-partners-tiers .elementor-partners-tiers-container .elementor-partners-tiers-count,
	.elementor-partners-core-capabilities .elementor-partners-core-capabilities-container .elementor-partners-core-capabilities-count {
		color: var(--space-60);
		padding: 0 0 0 4px;
	}
</style>
<style>
	select.custom-fancy-select {
		display: none;
	}

	.custom-fancy-select-container {
		display: block;
		position: relative;
	}

	.custom-fancy-select-container .select-title {
		display: block;
		min-width: 258px;
		padding: 10px 32px;
		padding-right: 48px;
		border-radius: 99px;
		border: 1px solid var(--space-20);
		background: var(--white);
		color: var(--space-100);
		font-family: "Bloomreach Sans";
		font-size: 16px;
		font-style: normal;
		font-weight: 500;
		line-height: 26px;
		white-space: normal;
		text-align: left;
	}
	.custom-fancy-select-container .select-title.empty {
		color: var(--space-60);
	}
	.custom-fancy-select-container .select-title span {
		color: var(--space-60);
	}

	.custom-fancy-select-container .select-arrow {
		display: block;
		position: absolute;
		width: 16px;
		top: 13px;
		right: 32px;
		transition: transform 0.3s;
	}
	.custom-fancy-select-container.open .select-arrow {
		transform: rotate(180deg);
	}

	.custom-fancy-select-container .select-options {
		display: none;
		position: absolute;
		top: calc(100% + 8px);
		left: 0;
		right: 0;
		z-index: 100;
		list-style: none;
		padding: 0;
		margin: 0;
		border-radius: 16px;
		border: 1px solid var(--space-20);
		background: var(--white);
	}
	.custom-fancy-select-container.open .select-options {
		display: block;
	}

	.custom-fancy-select-container .select-options li {
		display: flex;
		padding: 12px 32px;
		align-items: flex-start;
		gap: 10px;
		align-self: stretch;
		color: var(--space-100);
		font-family: "Bloomreach Sans";
		font-size: 16px;
		font-style: normal;
		font-weight: 400;
		line-height: 26px;
	}
	.custom-fancy-select-container .select-options li span {
		color: var(--space-60);
	}

	.custom-fancy-select-container .select-options li.selected,
	.custom-fancy-select-container .select-options li:hover,
	.custom-fancy-select-container .select-options li:focus {
		color: var(--arctic-100);
	}
	.custom-fancy-select-container .select-options li.selected span,
	.custom-fancy-select-container .select-options li:hover span,
	.custom-fancy-select-container .select-options li:focus span {
		color: var(--space-60);
	}

	@media (max-width: 1024px) {
		.custom-fancy-select-container .select-title {
			width: 100%;
		}
	}
</style>
<style>
	.custom-loop-grid-css.elementor-widget-loop-grid .elementor-widget-container .e-load-more-spinner {
		margin-top: var(--load-more—spacing,32px);
	}
	.custom-loop-grid-css.elementor-widget-loop-grid .elementor-widget-container .e-load-more-spinner i {
		display: none !important;
		color: #FFD500 !important;
	}
	.loop-grid-loading .custom-loop-grid-css.elementor-widget-loop-grid .elementor-widget-container .e-load-more-spinner i {
		display: flex !important;
	}
	.custom-loop-grid-css.elementor-widget-loop-grid .elementor-button-link .e-load-more-spinner i {
		color: white !important;
	}
	.custom-loop-grid-css.elementor-widget-loop-grid.e-load-more-pagination-loading .elementor-button-link .e-load-more-spinner i {
		display: flex !important;
	}
	.custom-loop-grid-css.loop-grid-load-more-button {
		display: flex;
		background-color: #019ACE;
		border-color: #019ACE;
		outline: none;
		align-items: center;
    justify-content: center;
	}
	.custom-loop-grid-css.loop-grid-load-more-button:hover,
	.custom-loop-grid-css.loop-grid-load-more-button:focus {
		background-color: var(--arctic-120) !important;
    border-color: var(--arctic-120) !important;
    color: var(--white) !important;
	}
	.custom-loop-grid-css .loop-grid-load-more-spinner {
		position: absolute;
		display: none !important;
		color: #FFD500 !important;
	}
	.custom-loop-grid-css .loop-grid-load-more-spinner > span {
		display: flex;
		align-items: center;
		justify-content: center;
		height: 26px;
	}
	.custom-loop-grid-css.loop-grid-loading .loop-grid-load-more-text {
		opacity: 0;
	}
	.custom-loop-grid-css.loop-grid-loading .loop-grid-load-more-spinner {
		display: flex !important;
	}
	.custom-loop-grid-css .plug-n-play-channel-chip {
		padding: 4px 8px;
    border-radius: 24px;
    margin: 4px 0;
    color: var(--white);
    font-size: 14px;
    font-style: normal;
    font-weight: 500;
    line-height: 20px;
	}
</style>
<style id='hubspot-form-styles'>
	/* Layout */

	.bloomreach_hs_form form, .bloomreach_hs_form form .hs-dependent-field {
		display: flex;
		flex-wrap: wrap;
		column-gap: 8px;
		row-gap: 8px;
	}

	.bloomreach_hs_form form .hs-form-field {
		position: relative;
	}

	.bloomreach_hs_form form .hs-fieldtype-text {
		width: calc(50% - 4px);
	}

	.bloomreach_hs_form form .hs-fieldtype-textarea,
	.bloomreach_hs_form form .hs-recaptcha,
	.bloomreach_hs_form form .hs-fieldtype-select,
	.bloomreach_hs_form form .hs-dependent-field,
	.bloomreach_hs_form form .hs-fieldtype-phonenumber {
		width: 100%;
	}

	.bloomreach_hs_form form .hs-recaptcha {
		margin: 0;
	}

	@media (max-width: 1024px) {
		.bloomreach_hs_form form {
			column-gap: 0;
		}

		.bloomreach_hs_form form .hs-fieldtype-text {
			width: 100%;
		}   
	}

	/* Inputs / Textarea / Select */

	.bloomreach_hs_form form .hs-fieldtype-select select {
		height: 48px;
		-moz-appearance: none; 
		-webkit-appearance: none;
		appearance: none;
	}

	.bloomreach_hs_form form .hs-fieldtype-select:after {
		content: "";
		background-image: url(/wp-content/uploads/2024/04/bloomreach-chevron-down-3.svg);
		display: flex;
		width: 16px;
		height: 16px;
		background-size: contain;
		position: absolute;
		top: 16px;
		right: 8px;
		pointer-events: none;
	}

	.bloomreach_hs_form form .hs-fieldtype-text input,
	.bloomreach_hs_form form .hs-fieldtype-phonenumber input,
	.bloomreach_hs_form form .hs-fieldtype-textarea textarea,
	.bloomreach_hs_form form .hs-fieldtype-select select,
	.bloomreach_hs_form form .hs-fieldtype-file input {
		border-radius: 16px;
		background: var( --white );
		border: 1px solid var( --space-20 );
		font: var( --body-l-regular-font );
		color: var( --space-100 );
		width: 100%;
		transition: .4s;
	}

	.bloomreach_hs_form form .hs-fieldtype-text input,
	.bloomreach_hs_form form .hs-fieldtype-phonenumber input,
	.bloomreach_hs_form form .hs-fieldtype-textarea textarea {
		padding: 10px 16px;
	}

	.bloomreach_hs_form form .hs-fieldtype-text input:focus,
	.bloomreach_hs_form form .hs-fieldtype-phonenumber input:focus,
	.bloomreach_hs_form form .hs-fieldtype-textarea textarea:focus,
	.bloomreach_hs_form form .hs-fieldtype-select select:focus,
	.bloomreach_hs_form form .hs-fieldtype-file input:focus 
	{
		outline: none;
		border: 1px solid var( --arctic-100 );
	}

	.bloomreach_hs_form form .hs-fieldtype-text input:hover,
	.bloomreach_hs_form form .hs-fieldtype-phonenumber input:hover,
	.bloomreach_hs_form form .hs-fieldtype-textarea textarea:hover,
	.bloomreach_hs_form form .hs-fieldtype-select select:hover,
	.bloomreach_hs_form form .hs-fieldtype-file input:hover {
		border: 1px solid var( --arctic-100 );
	}

	.bloomreach_hs_form form .hs-fieldtype-text > label,
	.bloomreach_hs_form form .hs-fieldtype-phonenumber > label,
	.bloomreach_hs_form form .hs-fieldtype-textarea > label,
	.bloomreach_hs_form form .hs-fieldtype-select > label,
	.bloomreach_hs_form form .hs-fieldtype-file > label {
		font: var( --body-l-regular-font );
		color: var( --space-40 );
		position: absolute;
		left: 16px;
		top: 11px;
		background-color: var( --white );
		width: calc(100% - 32px);
		pointer-events: none;
		transition: .4s;
		white-space: nowrap;
	}

	.bloomreach_hs_form form .hs-fieldtype-text > label::first-letter,
	.bloomreach_hs_form form .hs-fieldtype-phonenumber > label::first-letter,
	.bloomreach_hs_form form .hs-fieldtype-textarea > label::first-letter,
	.bloomreach_hs_form form .hs-fieldtype-select > label::first-letter,
	.bloomreach_hs_form form .hs-fieldtype-file >label::first-letter {
		text-transform: uppercase;
	}

	.bloomreach_hs_form form .hs-form-field-active > label {
		opacity: 0;
	}

	.bloomreach_hs_form form .hs-form-booleancheckbox > label {
		opacity: 1 !important;
	}

	.bloomreach_hs_form form .hs-error-msgs li {
		display: flex;
	}

	.bloomreach_hs_form form .hs-error-msg {
		font: var( --body-s-regular-font );
		color: var( --red-100 );
		padding-left: 16px;
		margin-top: 4px;
	}

	.bloomreach_hs_form form .submitted-message p {
		font: var( --body-l-regular-font );
		color: var( --space-100 );
	}

	@media (max-width: 1024px) {
		.bloomreach_hs_form form .hs-fieldtype-select select {
			height: 50px;
		}

		.bloomreach_hs_form form .hs-fieldtype-text input,
		.bloomreach_hs_form form .hs-fieldtype-phonenumber input,
		.bloomreach_hs_form form .hs-fieldtype-textarea textarea,
		.bloomreach_hs_form form .hs-fieldtype-select select,
		.bloomreach_hs_form form .hs-fieldtype-file input {
			border-radius: 10px;
			font: var( --body-m-regular-font );
		}

		.bloomreach_hs_form form .hs-fieldtype-text input,
		.bloomreach_hs_form form .hs-fieldtype-phonenumber input,
		.bloomreach_hs_form form .hs-fieldtype-textarea textarea {
			padding: 14px 16px;
		}

		.bloomreach_hs_form form .hs-fieldtype-text > label,
		.bloomreach_hs_form form .hs-fieldtype-phonenumber > label,
		.bloomreach_hs_form form .hs-fieldtype-textarea > label {
			top: 15px;
			font: var( --body-m-regular-font );
		}
	}

	/* File Input */

	.bloomreach_hs_form form .hs-fieldtype-file > label {
		z-index: 1;
		left: 52px;
		width: calc(100% - 54px);
	}

	.bloomreach_hs_form form .hs-fieldtype-file .input {
		position: relative;
	}

	.bloomreach_hs_form form .hs-fieldtype-file .input:after {
		content: "";
		display: flex;
		background-image: url(/wp-content/uploads/2024/06/br_upload.svg);
		width: 40px;
		height: 40px;
		background-size: 24px;
		background-position: center center;
		background-repeat: no-repeat;
		pointer-events: none;
		background-color: var(--gold-100);
		position: absolute;
		left: 4px;
		top: 4px;
		border-radius: 12px;
		transition: .4s;
	}

	.bloomreach_hs_form form .hs-fieldtype-file .input:hover:after {
		background-color: var(--gold-80);
	}

	.bloomreach_hs_form form .hs-fieldtype-file input {
		height: 48px;
		padding: 10px 16px 10px 52px;
		display: flex;
		align-items: center;
	}

	.bloomreach_hs_form form .hs-fieldtype-file input::-webkit-file-upload-button {
		height: 0;
		width: 0;
		opacity: 0;
		overflow: hidden;
		padding: 0;
		margin: 0;
	}

	@media (max-width: 1024px) {
		.bloomreach_hs_form form .hs-fieldtype-file > label {
			z-index: 1;
			left: 54px;
			width: calc(100% - 56px);
		}

		.bloomreach_hs_form form .hs-fieldtype-file .input:after {
			width: 42px;
			height: 42px;
			border-radius: 8px;
		}

		.bloomreach_hs_form form .hs-fieldtype-file input {
			height: 50px;
			padding: 14px 16px 14px 54px;
		}
	}

	/* Submit Button */

	.bloomreach_hs_form form .hs_submit .hs-button {
		color: var( --space-100 );
		background-color: var( --gold-100 );
		border: none;
	}

	.bloomreach_hs_form form .hs_submit .hs-button:hover {
		background-color: var( --gold-80 );
	}

	@media (max-width: 1024px) {
		.bloomreach_hs_form form .hs_submit,
		.bloomreach_hs_form form .hs_submit .hs-button {
			width: 100%;
		}
	}

	/* Legal Consent / Checkboxes / Radio */

	.bloomreach_hs_form form .inputs-list {
		padding: 0;
		list-style: none;
	}

	.bloomreach_hs_form form .inputs-list label,
	.bloomreach_hs_form form .hs-fieldtype-checkbox label,
	.bloomreach_hs_form form .hs-fieldtype-radio label {
		display: flex;
		gap: 8px;
	}

	.bloomreach_hs_form form .inputs-list span,
	.bloomreach_hs_form form .hs-fieldtype-checkbox span,
	.bloomreach_hs_form form .hs-fieldtype-radio span {
		margin: 0;
		display: flex;
		align-items: center;
	}

	.bloomreach_hs_form form .legal-consent-container p,
	.bloomreach_hs_form form .hs-form-booleancheckbox-display span {
		font: var( --body-s-regular-font );
		color: var( --space-60 );
	}

	.bloomreach_hs_form form .hs-form-checkbox-display span,
	.bloomreach_hs_form form .hs-fieldtype-radio span {
		font: var( --body-m-regular-font );
		color: var( --space-100 );
	}

	.bloomreach_hs_form form .legal-consent-container p strong {
		font-weight: 400;
	}

	.bloomreach_hs_form form .legal-consent-container p a {
		font: inherit;
		color: inherit;
		text-decoration: underline;
	}

	.bloomreach_hs_form form .hs-fieldtype-checkbox label input.hs-input,
	.bloomreach_hs_form form .hs-fieldtype-booleancheckbox label input.hs-input,
	.bloomreach_hs_form form .hs-fieldtype-radio label input.hs-input {
		width: 18px;
		min-width: 18px;
		height: 18px;
		position: relative;
		appearance: none;
		-webkit-appearance: none;
		-moz-appearance: none;
		cursor: pointer;
	}

	.bloomreach_hs_form form .hs-fieldtype-checkbox label input.hs-input:focus,
	.bloomreach_hs_form form .hs-fieldtype-booleancheckbox label input.hs-input:focus,
	.bloomreach_hs_form form .hs-fieldtype-radio label input.hs-input:focus {
		outline: none !important;
	}

	.bloomreach_hs_form form .hs-fieldtype-checkbox label input.hs-input:before,
	.bloomreach_hs_form form .hs-fieldtype-booleancheckbox label input.hs-input:before,
	.bloomreach_hs_form form .hs-fieldtype-radio label input.hs-input:before {
		content: "";
		width: 18px;
		min-width: 18px;
		height: 18px;
		border: 2px solid var(--space-40);
		background-color: var(--white);
		border-radius: 2px;
		position: absolute;
		top: 0;
		left: 0;
		pointer-events: none;
		transition: .4s;
	}

	.bloomreach_hs_form form .hs-fieldtype-checkbox label input.hs-input:after,
	.bloomreach_hs_form form .hs-fieldtype-booleancheckbox label input.hs-input:after,
	.bloomreach_hs_form form .hs-fieldtype-radio label input.hs-input:after {
		content: "";
		width: 12px;
		height: 8px;
		border-left: 2px solid var(--white);
		border-bottom: 2px solid var(--white);
		position: absolute;
		left: 3px;
		top: 3px;
		transform: rotate(-45deg);
		opacity: 0;
		pointer-events: none;
		transition: .4s;	
	}

	.bloomreach_hs_form form .hs-fieldtype-checkbox label:hover input.hs-input:before,
	.bloomreach_hs_form form .hs-fieldtype-booleancheckbox label:hover input.hs-input:before,
	.bloomreach_hs_form form .hs-fieldtype-radio label:hover input.hs-input:before {
		border: 2px solid var(--arctic-100);
	}

	.bloomreach_hs_form form .hs-fieldtype-checkbox label input.hs-input:checked:before,
	.bloomreach_hs_form form .hs-fieldtype-booleancheckbox label input.hs-input:checked:before,
	.bloomreach_hs_form form .hs-fieldtype-radio label input.hs-input:checked:before {
		border: 2px solid var(--arctic-100);
		background-color: var(--arctic-100);
	}

	.bloomreach_hs_form form .hs-fieldtype-checkbox label input.hs-input:checked:after,
	.bloomreach_hs_form form .hs-fieldtype-booleancheckbox label input.hs-input:checked:after,
	.bloomreach_hs_form form .hs-fieldtype-radio label input.hs-input:checked:after {
		opacity: 1;
	}

	/* Pricing - Packages / ESG / Careers */

	.bloomreach_hs_form .hs_discovery_packages,
	.bloomreach_hs_form .hs_engagement_packages {
		margin-top: 0px;
	}

	.bloomreach_hs_form .hs_discovery_packages > label,
	.bloomreach_hs_form .hs_engagement_packages > label,
	.bloomreach_hs_form .hs_esg_options > label {
		margin-bottom: 16px;
		font: var( --body-l-medium-font );
		color: var( --space-100 );
		opacity: 1 !important;
	}

	.bloomreach_hs_form .hs_discovery_packages ul,
	.bloomreach_hs_form .hs_engagement_packages ul,
	.bloomreach_hs_form .hs_esg_options ul,
	.bloomreach_hs_form .hs_department ul {
		display: flex;
		flex-direction: row;
		flex-wrap: wrap;
		gap: 16px;
	}

	.bloomreach_hs_form .hs_discovery_packages ul li,
	.bloomreach_hs_form .hs_engagement_packages ul li,
	.bloomreach_hs_form .hs_esg_options ul li,
	.bloomreach_hs_form .hs_department ul li {
		width: calc(50% - 8px);
	}

	/* Get a demo / ESG / Careers */

	.bloomreach_hs_form .hs_module_interest___multi_choice > label,
	.bloomreach_hs_form .hs_esg_options > label,
	.bloomreach_hs_form .hs_department > label {
		opacity: 1 !important;
		gap: 0 !important;
	}

	.bloomreach_hs_form .hs_module_interest___multi_choice > label span,
	.bllomreach_hs_form .hs_esg_options > label span,
	.bloomreach_hs_form .hs_department > label span {
		margin-bottom: 16px;
		font: var( --body-l-medium-font );
		color: var( --space-100 );
	}

	.bloomreach_hs_form .hs_module_interest___multi_choice ul {
		display: flex;
		flex-direction: row;
		flex-wrap: wrap;
		gap: 16px;
	}

	.bloomreach_hs_form .hs_module_interest___multi_choice ul li {
		width: calc(50% - 8px);
	}

	/* Submit message */

	.bloomreach_hs_form .submitted-message p {
		font: var( --body-l-medium-font );
		color: var( --space-100 );
	}

	/* Errors */

	.hs-error-msg {
		opacity: 1 !important;
	}

	/* 2col fieldset forms */
	fieldset {
		display: flex;
		width: 100%;
		max-width: none !important;
		gap: 10px;
	}
	@media (max-width: 480px){
		fieldset {
			flex-wrap: wrap;
		}
	}
	fieldset .input {
		margin: 0 !important;
	}
	fieldset .input > input {
		width: 100% !important;
	}
	fieldset > div.hs-form-field {
		flex-basis: 100%;
	}
	@media (max-width: 480px){
		fieldset > div.hs-form-field {
			width: 100% !important;
		}
	}

	.bloomreach_hs_form form textarea {
		display: block;
	}
	.bloomreach_hs_form form legend.hs-field-desc {
		display: none !important;
	}
	
</style>
<style>
	.accordition-with-image.elementor-widget-n-accordion .e-n-accordion {
		display: flex;
    flex-direction: column;
	}
	
	.accordition-with-image.elementor-widget-n-accordion .e-n-accordion .e-n-accordion-item {
		padding-bottom: 12px;
		padding-top: 12px;
		border-top: 1px solid #D9D9D9;
	}
	.accordition-with-image.elementor-widget-n-accordion .e-n-accordion .e-n-accordion-item:first-child {
		padding-top: 0;
		border-top: none;
	}
	.accordition-with-image.elementor-widget-n-accordion .e-n-accordion .e-n-accordion-item:last-child {
		padding-bottom: 0;
	}
	
	.accordition-with-image.elementor-widget-n-accordion .e-n-accordion-item-title {
		border: none;
	}
	
	.accordition-with-image.elementor-widget-n-accordion .e-n-accordion-item-title {
		padding: 0;
	}
	
	.accordition-with-image.elementor-widget-n-accordion .e-n-accordion-item-title .e-n-accordion-item-title-text i {
		display: inline-flex;
		width: 24px;
		height: 24px;
		margin-top: -4px;
		margin-right: 12px;
		color: var(--space-100);
		vertical-align: middle;
	}
	
	.accordition-with-image.elementor-widget-n-accordion .e-n-accordion-item .e-n-accordion-item-title-icon .e-closed {
		transform: rotate(180deg);
	}
	
	.accordition-with-image.elementor-widget-n-accordion .e-n-accordion-item .e-n-accordion-item-title-icon span {
		display: flex;
		width: 48px;
		height: 48px;
		padding: 10px;
		flex-direction: column;
		justify-content: center;
		align-items: center;
		border-radius: 16px;
		border: 1px solid var(--space-10);
	}
	.accordition-with-image.elementor-widget-n-accordion .e-n-accordion-item .e-n-accordion-item-title-icon .e-opened {
		display: none;
	}
	.accordition-with-image.elementor-widget-n-accordion .e-n-accordion-item[open] .e-n-accordion-item-title-icon .e-opened {
		display: flex;
	}
	
	.accordition-with-image.elementor-widget-n-accordion .e-n-accordion-item .e-n-accordion-item-title-icon span>svg {
		color: var(--arctic-100);
		width: 17px;
	}
	
	.accordition-with-image.elementor-widget-n-accordion .e-n-accordion-item > div {
		padding: 16px 0;
		border: 0;
	}
</style>
<style>
    .features-accordion .e-n-accordion-item-title {
        justify-content: space-between;
    }

    .features-accordion .e-n-accordion-item-title-icon {
        padding: 15px;
        border-radius: 16px;
        border: solid 1px var(--space-10, #E5E9EC);
    }

    .features-accordion .e-n-accordion-item:not(:last-of-type) {
        border-bottom: solid 1px #D9D9D9;
    }

    .features-accordion .e-n-accordion-item-title-text {
        gap: 12px;
        display: flex;
        align-items: center;
    }

    @media (max-width: 1024px) {
        .features-accordion .e-n-accordion-item-title-icon {
            padding: 9px;
            border-radius: 6px;
        }
    }
</style>

<script type="rocketlazyloadscript">
    document.addEventListener('DOMContentLoaded', () => {
        document.querySelectorAll('.features-accordion-wrapper').forEach($wrapper => {
            const $featureImage = document.querySelector('.feature-image img');
            const $featureVideo = document.querySelector('.feature-video video');

            if (!$featureImage && !$featureVideo) return;

            const observer = new MutationObserver(mutations => {
                mutations.forEach(({ target }) => {
                    if (target.hasAttribute('open')) {
                        const $image = target.querySelector('img');
                        const $video = target.querySelector('video');

                        if ($image) {
                            if ($featureVideo) $featureVideo.style.display = 'none';
                            $featureImage.src = $image.src;
                            $featureImage.srcset = $image.srcset;
                            $featureImage.style.display = 'block';
                        }

                        if ($video) {
                            if ($featureImage) $featureImage.style.display = 'none';
                            $featureVideo.src = $video.src;
                            $featureVideo.poster = $video.poster;
                            $featureVideo.style.display = 'block';
                        }
                    }
                });
            });

            $wrapper.querySelectorAll('.e-n-accordion-item').forEach(item => {
                observer.observe(item, { attributes: true, attributeFilter: ['open'] });
            });
        });
    });
</script>
<style>
    /* Tabs */

    @media (min-width: 768px) {
        .accordion-tabs .e-n-tabs-heading {
            z-index: 3;
            background-color: var(--white);
            padding-right: 60px;
        }

        .accordion-tabs .e-n-tabs-heading:before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            bottom: 0;
            background-color: var(--white);
            width: 50vw;
            transform: translateX(-100%);
            pointer-events: none;
        }
    }

    .accordion-tabs .e-n-tab-title {
        gap: 32px;
    }

    .accordion-tabs .e-n-tab-title-text {
        order: 1;
        width: 100%;
    }

    .accordion-tabs .e-n-tab-icon {
        order: 2 !important;
    }

    @media (max-width: 1024px) {
        .accordion-tabs .e-n-tabs-heading {
            padding-right: 32px;
        }

        .accordion-tabs .e-n-tab-title-text {
            font: var(--body-l-medium-font);
        }

        .accordion-tabs .e-n-tab-title[aria-selected="true"] .e-n-tab-icon {
            transform: rotate(-90deg);
        }

        .accordion-tabs .e-n-tab-title[aria-selected="false"] .e-n-tab-icon {
            transform: rotate(90deg);
        }
    }

    /* Content */

    .accordion-tabs p:not(:last-child) {
        margin-bottom: 24px;
    }

    .accordion-tabs .e-n-tabs-heading {
        width: min(100%, calc(256px + 32px));
    }
</style>

<script type="rocketlazyloadscript">
  // On non-active accordion tab click, scroll to top
  document.addEventListener('DOMContentLoaded', function () {
    document.querySelectorAll('.elementor-widget-n-tabs .e-n-tab-title').forEach(function (tab) {
      tab.addEventListener('click', function () {
        const isMobile = window.matchMedia('(max-width: 1024px)').matches;
        if (!isMobile) return;

        const header = document.querySelector('.elementor-location-header');
        const adminBar = document.querySelector('#wpadminbar');
        const offset = (header ? header.offsetHeight : 0) + (adminBar ? adminBar.offsetHeight : 0);
        if (tab.getAttribute('aria-selected') === 'false') {
          setTimeout(function () {
            const tabPosition = tab.getBoundingClientRect().top + window.pageYOffset;

            window.scrollTo({
              top: tabPosition - offset,
              behavior: 'smooth'
            });
          }, 360);
        }
      });
    });
  });
</script>
<style>
	.elementor-plug-n-play-matrix .elementor-plug-n-play-matrix__title h2 {
		color: var(--space-100);
		text-align: center;
		font-family: "Bloomreach Sans";
		font-size: 50px;
		font-style: normal;
		font-weight: 500;
		line-height: 63px;
		padding-bottom: 24px;
		margin: 0;
	}
	
	.elementor-plug-n-play-matrix .elementor-plug-n-play-matrix__description p {
		color: var(--space-100);
		text-align: center;
		font-family: "Bloomreach Sans";
		font-size: 20px;
		font-style: normal;
		font-weight: 400;
		line-height: 29px;
		padding-bottom: 30px;
		margin: 0;
	}
	
	.elementor-plug-n-play-matrix .elementor-plug-n-play-matrix__grid {
		margin-bottom: 50px;
	}
	
	.elementor-plug-n-play-matrix .elementor-plug-n-play-matrix__grid-container { 
		position: relative;
		overflow-x: scroll;
		padding-top: 120px;
		padding-bottom: 120px;
		margin-top: -90px;
		margin-bottom: -90px;
		scrollbar-width: none;
		-ms-overflow-style: none;
	}
	.elementor-plug-n-play-matrix .elementor-plug-n-play-matrix__grid-container::-webkit-scrollbar {
		width: 0;
  	background: transparent;
	}
	
	.elementor-plug-n-play-matrix .elementor-plug-n-play-matrix__grid-the-matrix {
		display: flex;
		justify-content: center;
		align-items: center;
		position: relative;
		width: 3530px;
		height: 780px;
		background: white;
		border-radius: 20px;
		box-shadow: 0 2rem 8rem rgba(12, 39, 64, .07) !important;
	}
	
	.elementor-plug-n-play-matrix .elementor-plug-n-play-matrix__grid-the-matrix-col {
		display: flex;
		flex-direction: column;
		justify-content: center;
		align-items: center;
		width: 100px;
		height: 780px;
	}
	.elementor-plug-n-play-matrix .elementor-plug-n-play-matrix__grid-the-matrix-col.col-items {
		flex: 1;
	}
	
	.elementor-plug-n-play-matrix .elementor-plug-n-play-matrix__grid-the-matrix-row {
		display: flex;
		flex-direction: row;
		justify-content: center;
		align-items: center;
    width: 100%;
		height: 95px;
	}
	.elementor-plug-n-play-matrix .elementor-plug-n-play-matrix__grid-the-matrix-row.row-items {
		position: relative;
		flex: 1;
	}
	
	.elementor-plug-n-play-matrix .elementor-plug-n-play-matrix__grid-the-matrix-legend-vertical {
		display: inline-block;
		font-size: 20px;
    font-weight: 500;
    color: #002840;
    font-family: "Bloomreach Sans";
		transform: rotate(270deg);
	}
	
	.elementor-plug-n-play-matrix .elementor-plug-n-play-matrix__grid-the-matrix-legend-horizontal-col {
		display :flex;
		flex: 1;
		justify-content: center;
		align-items: center;
	}
	
	.elementor-plug-n-play-matrix .elementor-plug-n-play-matrix__grid-the-matrix-legend-horizontal {
		display: inline-block;
		font-size: 20px;
    font-weight: 500;
    color: #002840;
    font-family: "Bloomreach Sans";
	}
	
	.elementor-plug-n-play-matrix .elementor-plug-n-play-matrix__grid-the-matrix-items-bg {
		position: absolute;
		width: 100%;
		height: 100%;
		opacity: .1;
		background-size: 74px 53.63px;
    background-image: linear-gradient(to right, #0c2740 1px, transparent 1px), linear-gradient(to bottom, #0c2740 1px, transparent 1px);
    border-bottom: 1px solid #0c2740;
    border-right: 1px solid #0c2740;
	}
	
	.elementor-plug-n-play-matrix .elementor-plug-n-play-matrix__grid-the-matrix-items-dash-first,
	.elementor-plug-n-play-matrix .elementor-plug-n-play-matrix__grid-the-matrix-items-dash-second {
		position: absolute;
		display: block;
		width: 1px;
		height: 100%;
    background-image: linear-gradient(to bottom, #000 70%, rgba(255, 255, 255, 0) 0);
    background-position: left;
    background-size: 1px 10px;
    background-repeat: repeat-y;
		left: 1110px;
	}
	
	.elementor-plug-n-play-matrix .elementor-plug-n-play-matrix__grid-the-matrix-items-dash-second {
		left: 2220px;
	}
	
	.elementor-plug-n-play-matrix .elementor-plug-n-play-matrix__grid-the-matrix-items {
		position: absolute;
		width: 100%;
		height: 100%;
		overflow: hidden;
	}
	
	.elementor-plug-n-play-matrix .elementor-plug-n-play-matrix__grid-the-matrix-item {
		display: inline-block;
		font-size: 11.5px;
		line-height: 16px;
    font-weight: 500;
    font-family: "Bloomreach Sans";
		color: white;
    position: absolute;
		border-radius: 5px;
		text-align: center;
		padding: 5px 10px;
	}
	
	.elementor-plug-n-play-matrix__grid .elementor-plug-n-play-matrix__grid-scroll-container {
		width: 100%;
		height: 2px;
		border: none;
		border-radius: 1px;
		background-color: #00284019;
		margin-top: 9px;
	}
	
	.elementor-plug-n-play-matrix__grid .elementor-plug-n-play-matrix__grid-scroll {
		width: calc(100% - 396px);
		height: 2px;
		border: none !important;
		background-color: transparent !important;
		margin-left: 198px;
	}
	
	.elementor-plug-n-play-matrix__grid .elementor-plug-n-play-matrix__grid-scroll-handle {
		display: flex;
		justify-content: center;
		align-items: center;
		width: 396px !important;
		height: 18px !important;
		background: #002840 !important;
		border: none !important;
		border-radius: 500px !important;
		top: -9px !important;
		margin-left: -198px !important;
	}
	
	.elementor-plug-n-play-matrix__grid .elementor-plug-n-play-matrix__grid-scroll-handle span {
		font-size: 7px;
		color: white;
		opacity: 0.4;
    letter-spacing: 2px;
	}
	
	.elementor-plug-n-play-matrix .elementor-plug-n-play-matrix__grid-filter {
		display: flex;
		flex-direction: column;
		padding: 32px;
		border-radius: 24px;
		background-color: #f6fbff;
	}
	
	.elementor-plug-n-play-matrix .elementor-plug-n-play-matrix__grid-filter h5 {
		font-size: 20px;
		color: #002840;
		font-weight: 500;
    font-family: "Bloomreach Sans";
	}
	
	.elementor-plug-n-play-matrix .elementor-plug-n-play-matrix__grid-filter .elementor-plug-n-play-matrix__grid-filter-row {
		display: flex;
		flex-direction: row;
		margin-bottom: 20px;
	}
	
	.elementor-plug-n-play-matrix .elementor-plug-n-play-matrix__grid-filter .elementor-plug-n-play-matrix__grid-filter-col {
		flex: 1;
	}
	
	.elementor-plug-n-play-matrix .elementor-plug-n-play-matrix__grid-filter .elementor-plug-n-play-matrix__search-row {
		justify-content: space-between;
	}
	
	.elementor-plug-n-play-matrix .elementor-plug-n-play-matrix__grid-filter .elementor-plug-n-play-matrix__grid-filter-search {
		display: flex;
    flex-direction: row;
    gap: 16px;
	}
	
	.elementor-plug-n-play-matrix .elementor-plug-n-play-matrix__grid-filter .elementor-plug-n-play-matrix__grid-filter-search input {
		width: 272px;
		height: 30px;
		border: 1px solid transparent;
		border-radius: 5px;
		outline: none;
		padding: 4px 8px;
		font-size: 14px;
		color: #495057;
		font-weight: 400;
		text-align: right;
		background-color: #fff;
		transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out;
	}
	.elementor-plug-n-play-matrix .elementor-plug-n-play-matrix__grid-filter .elementor-plug-n-play-matrix__grid-filter-search input:hover,
	.elementor-plug-n-play-matrix .elementor-plug-n-play-matrix__grid-filter .elementor-plug-n-play-matrix__grid-filter-search input:focus {
		border-color: #bbb;
	}
	
	.elementor-plug-n-play-matrix .elementor-plug-n-play-matrix__grid-filter .elementor-plug-n-play-matrix__grid-filter-search button {
		display: flex;
		justify-content: center;
		align-items: center;
		width: 30px;
		height: 30px;
		padding: 0;
		border: none;
		margin: 0;
		background: transparent;
		outline: none;
	}
	
	.elementor-plug-n-play-matrix .elementor-plug-n-play-matrix__grid-filter .elementor-plug-n-play-matrix__grid-filter-search svg {
		width: 17px;
		height: 17px;
		color: #00b2db;
	}
	
	.elementor-plug-n-play-matrix .elementor-plug-n-play-matrix__grid-filter .elementor-plug-n-play-matrix__grid-filter-label {
		display: inline-block;
		color: var(--space-100);
		font-family: "Bloomreach Sans";
		font-size: 12px;
		font-weight: 500;
		margin: 0;
		margin-bottom: 20px;
	}
	
	.elementor-plug-n-play-matrix .elementor-plug-n-play-matrix__grid-filter .elementor-plug-n-play-matrix__grid-filter-options {
    display: flex;
    flex-direction: row;
    flex-wrap: wrap;
		gap: 10px;
	}
	
	.elementor-plug-n-play-matrix .elementor-plug-n-play-matrix__grid-filter .elementor-plug-n-play-matrix__grid-filter-options a {
		display: inline-flex;
		color: var(--e-global-color-f97dbcb);
		font-family: "Bloomreach Sans";
		font-size: 13px;
		line-height: 1.5;
		font-weight: 500;
		padding: 7px 10px;
		background: white;
		border: 1px solid #4baedb80;
		border-radius: 25px;
		transition: background 0.3s, color 0.3s;
	}
	.elementor-plug-n-play-matrix .elementor-plug-n-play-matrix__grid-filter .elementor-plug-n-play-matrix__grid-filter-options a:hover,
	.elementor-plug-n-play-matrix .elementor-plug-n-play-matrix__grid-filter .elementor-plug-n-play-matrix__grid-filter-options a:focus {
		background-color: #e5f3fc;
	}
	.elementor-plug-n-play-matrix .elementor-plug-n-play-matrix__grid-filter .elementor-plug-n-play-matrix__grid-filter-options a.active {
		color: white;
		background: var(--e-global-color-f97dbcb);
	}
	
	.elementor-plug-n-play-matrix .elementor-plug-n-play-matrix__grid-filter .elementor-plug-n-play-matrix__channels a i.dot {
		display: flex;
		width: 12px;
		height: 12px;
		border-radius: 12px;
		margin-top: 3px;
		margin-right: 8px;
	}
	
	.elementor-plug-n-play-matrix .elementor-plug-n-play-matrix__grid-filter .elementor-plug-n-play-matrix__grid-filter-options a i {
		display: none;
		height: 14px;
		margin-right: 8px;
		margin-top: 2px;
	}
	.elementor-plug-n-play-matrix .elementor-plug-n-play-matrix__grid-filter .elementor-plug-n-play-matrix__grid-filter-options a.active i {
		display: flex;
	}
	
	.elementor-plug-n-play-matrix .elementor-plug-n-play-matrix__grid-filter .elementor-plug-n-play-matrix__grid-filter-options label {
		font-family: "Bloomreach Sans";
    font-size: 16px;
    font-weight: 400;
    color: #002840;
    -webkit-text-size-adjust: none;
    vertical-align: baseline;
	}
	
	.elementor-plug-n-play-matrix .elementor-plug-n-play-matrix__grid-filter .elementor-plug-n-play-matrix__grid-filter-options label input {
		margin-right: 4px;
	}
	
	.elementor-plug-n-play-matrix .elementor-plug-n-play-matrix__grid-filter .elementor-plug-n-play-matrix__grid-filter-dynamic-content {
		overflow: hidden;
	}
	
	.elementor-plug-n-play-matrix .elementor-plug-n-play-matrix__grid-filter .elementor-plug-n-play-matrix__grid-filter-dynamic-toggle {
		position: relative;
		border-top: 1px solid #dee4e8;
		margin-top: 15px;
	}
	
	.elementor-plug-n-play-matrix .elementor-plug-n-play-matrix__grid-filter .elementor-plug-n-play-matrix__grid-filter-dynamic-toggle button,
	.elementor-plug-n-play-matrix .elementor-plug-n-play-matrix__grid-filter .elementor-plug-n-play-matrix__grid-filter-dynamic-toggle button:hover,
	.elementor-plug-n-play-matrix .elementor-plug-n-play-matrix__grid-filter .elementor-plug-n-play-matrix__grid-filter-dynamic-toggle button:focus {
    display: block;
		padding: 0 20px;
    border: none;
    margin: 0 auto;
		margin-top: -15px;
		font-family: "Bloomreach Sans";
    font-size: 16px;
    font-weight: 400;
    color: #002840;
    -webkit-text-size-adjust: none;
    vertical-align: baseline;
		background: #f6fbff;
		outline: none;
	}
	
	.elementor-plug-n-play-matrix .elementor-plug-n-play-matrix__grid-filter .elementor-plug-n-play-matrix__grid-filter-dynamic-toggle button span {
		vertical-align: middle;
	}
	
	.elementor-plug-n-play-matrix .elementor-plug-n-play-matrix__grid-filter .elementor-plug-n-play-matrix__grid-filter-dynamic-toggle button i {
		display: inline-flex;
		width: 13px;
		height: 6px;
		color: #00b2db;
		margin-left: 6px;
		transition: transform 0.3s;
	}
	
	.elementor-plug-n-play-matrix .elementor-plug-n-play-matrix__grid-filter .open .elementor-plug-n-play-matrix__grid-filter-dynamic-toggle button i {
		transform: rotate(180deg);
	}
	
	@media (max-width: 1024px) {
		.elementor-plug-n-play-matrix .elementor-plug-n-play-matrix__grid {
			display: none;
		}
		
		.elementor-plug-n-play-matrix .elementor-plug-n-play-matrix__grid-filter {
			display: none;
		}
	}
</style>
<style>
	
	/* Sticky */
	
	.br_library_filter_wrap {
		position: sticky;
		top: 93px;
		transition: .4s;
		z-index: 6;
	}

	.sticky_header_active .br_library_filter_wrap {
		top: 65px;
	}

	#wpadminbar ~ .elementor .br_library_filter_wrap {
		top: 125px;
	}
	
	.sticky_header_active #wpadminbar ~ .elementor .br_library_filter_wrap {
		top: 97px;
	}
	
	@media (max-width: 1024px) {
		.br_library_filter_wrap {
			top: 64px;
		}
		
		.sticky_header_active .br_library_filter_wrap {
			top: 48px;
		}
		
		#wpadminbar ~ .elementor .br_library_filter_wrap {
			top: 96px;
		}

		.sticky_header_active #wpadminbar ~ .elementor .br_library_filter_wrap {
			top: 80px;
		}
	}
	
	/* Flayout Opening */
	
	body:has(.posts-filter__button--filter:hover),
	body:has(.posts-filter__button--search:hover),
	body:has(.posts-filter__flyout:hover) {
		overflow: hidden;
	}

	.br_library_filter .posts-filter__flyout {
		opacity: 0;
		transition: .4s;
		pointer-events: none;
	}

	.br_library_filter:has(.posts-filter__button--filter:hover) .posts-filter__flyout--filter,
	.br_library_filter:has(.posts-filter__button--search:hover) .posts-filter__flyout--search,
	.br_library_filter .posts-filter__flyout--filter:hover,
	.br_library_filter .posts-filter__flyout--search:hover {
		opacity: 1;
		pointer-events: initial;
	}
	
	.br_library_filter:has(.posts-filter__button--filter:hover) .posts-filter__flyout--search,
	.br_library_filter:has(.posts-filter__button--search:hover) .posts-filter__flyout--filter {
		display: none;
	}

	body:has(.posts-filter__button--filter:hover):after,
	body:has(.posts-filter__button--search:hover):after,
	body:has(.posts-filter__flyout:hover):after {
		transition: opacity .8s;
		opacity: .8;
		z-index: 5;
	}
	
	/* Flyout Closing */
	
	.br_library_filter:has(#apply-button:hover) .posts-filter__flyout--filter {
		opacity: 0;
		animation-name: pe_delay;
		animation-duration: 0s;
		animation-timing-function: linear;
		animation-fill-mode: both;
		animation-delay: .5s;
	}
	
	body:has(#apply-button:hover):after {
		opacity: 0;
	}
	
	@keyframes pe_delay {
		0% {pointer-events: initial}
		100% {pointer-events: none}
	}

	/* General Layout & Style */

	.br_library_filter .posts-filter {
		background-color: var(--space-05);
		justify-content: center;
		align-items: stretch;
		padding: 0 15px;
	}

	.br_library_filter .posts-filter__chevron {
		width: 40px;
		min-width: 40px;
		display: flex;
		align-items: center;
		justify-content: center;
		background-color: var(--transparent);
		cursor: pointer;
		transition: .4s;
	}
	
	.br_library_filter .posts-filter__chevron:hover {
		background-color: var(--white);
	}
	
	.br_library_filter .posts-filter__chevron.disabled {
		opacity: .4;
		pointer-events: none;
	}
	
	.br_library_filter .posts-filter__taxonomy-list-wrapper {
		display: flex;
		width: calc(100% - 280px);
		max-width: 1020px;
	}
	
	.br_library_filter .posts-filter__taxonomy-list {
		max-width: 1020px;
		width: 100%;
		overflow: auto;
		gap: 32px;
	}

	.br_library_filter .posts-filter__taxonomy-list::-webkit-scrollbar {
		display: none;
	}
	
	.br_library_filter .posts-filter__buttons {
		border-left: 1px solid var(--space-20);
		max-width: 200px;
	}
	
	@media (max-width: 767px) {
		.br_library_filter .posts-filter {
			background-color: var(--white);
			border-bottom: 1px solid var(--space-05);
			padding: 0;
			flex-wrap: wrap;
		}
		
		.br_library_filter .posts-filter__taxonomy-list-wrapper {
			width: calc(100% - 80px);
			height: 66px;
		}
		
		.br_library_filter .posts-filter__buttons {
			max-width: initial;
			width: 100%;
			border-top: 1px solid var(--space-05);
			border-left: none;
		}
	}

	/* Main Taxonomy */
	
	.br_library_filter .posts-filter__chevron i {
		color: var(--space-60);
		transition: .4s;
	}
	
	.br_library_filter .posts-filter__chevron:hover i {
		color: var(--arctic-100);
	}

	.br_library_filter .posts-filter__taxonomy-list li {
		display: flex;
		transition: .4s;
	}

	.br_library_filter .posts-filter__taxonomy-list a {
		word-break: keep-all;
		white-space: nowrap;
		display: flex;
		align-items: center;
		justify-content: center;
		position: relative;
	}

	.br_library_filter .posts-filter__taxonomy-list a:after {
		content: "";
		display: flex;
		height: 2px;
		width: 0;
		background-color: var(--arctic-100);
		position: absolute;
		bottom: 0;
		transition: .4s;
	}

	.br_library_filter .posts-filter__taxonomy-list a:hover:after,
	.br_library_filter .posts-filter__taxonomy-list li.posts-filter__taxonomy-item.active a:after {
		width: 100%;
	}

	/* Filter & Search Buttons */

	.br_library_filter .posts-filter__buttons .posts-filter__button {
		padding: 20px 16px;
		color: var(--space-100);
		display: flex;
		align-items: center;
		gap: 8px;
	}

	.br_library_filter .posts-filter__buttons .posts-filter__button:hover {
		background-color: var(--white) !important;
	}
	
	.br_library_filter:has(.posts-filter__flyout--filter:hover) .posts-filter__button--filter,
	.br_library_filter:has(.posts-filter__flyout--search:hover) .posts-filter__button--search {
		background-color: var(--white) !important;
	}
	
	.br_library_filter .posts-filter__button:focus {
		outline: none !important;
	}
	
	@media (max-width: 767px) {
		.br_library_filter .posts-filter__buttons .posts-filter__button {
			background-color: var(--space-05) !important;
			width: 100%;
			justify-content: center;
		}
	}

	/* Flyouts */

	.br_library_filter .posts-filter__flyout {
		width: 100%;
		padding: 40px 15px;
		margin: 0 auto;
		position: absolute;
		justify-content: center;
		left: 0;
		max-height: 400px;
		overflow: auto;
		background-color: var(--white);
		z-index: 1;
	}
	
	.br_library_filter .posts-filter__flyout::-webkit-scrollbar {
		overflow: visible;
		width: 12px;
	}
	.br_library_filter .posts-filter__flyout::-webkit-scrollbar-button {
		height: 0;
		width: 0;
	}
	
	.br_library_filter .posts-filter__flyout::-webkit-scrollbar-track {
		background-color: var(--transparent);
		transition: .4s;
	}
	
	.br_library_filter .posts-filter__flyout::-webkit-scrollbar-track:hover {
		background-color: var(--transparent);
	}
	
	.br_library_filter .posts-filter__flyout::-webkit-scrollbar-track:active {
		background-color: var(--transparent);
	}
	
	.br_library_filter .posts-filter__flyout::-webkit-scrollbar-thumb {
		background-color: var(--arctic-100);
		border-radius: 99px;
		border-top: 4px solid var(--transparent);
		border-bottom: 4px solid var(--transparent);
		border-left: 4px solid var(--transparent);
		border-right: 4px solid var(--transparent);
		background-clip: content-box;
		transition: .4s;
	}
	
	.br_library_filter .posts-filter__flyout::-webkit-scrollbar-thumb:hover {
		background-color: var(--arctic-120);
	}
	
	.br_library_filter .posts-filter__flyout::-webkit-scrollbar-thumb:active {
		background-color: var(--arctic-120);
	}
	
	@media (max-width: 1024px) {
		.br_library_filter .posts-filter__flyout {
			padding: 40px 16px;
		}
	}
	
	@media (max-width: 767px) {
		.br_library_filter .posts-filter__flyout {
			max-height: initial;
			height: calc(100svh - 197px);
			padding: 16px;
			align-items: flex-start;
		}
		
		.sticky_header_active .br_library_filter .posts-filter__flyout {
			height: calc(100svh - 181px);
		}
	}

	/* Taxonomy Lists */

	.br_library_filter .posts-filter__flyout--filter {
		column-gap: 64px;
		row-gap: 32px;
		flex-wrap: wrap;
	}
	
	.br_library_filter .posts-filter__columns,
	.br_library_filter .posts-filter__reset-button-wrapper {
		width: 100%;
		max-width: 1300px;
		display: flex;
		flex-wrap: wrap;
		gap: 64px;
		transform: translateX(12px);
	}
	
	.br_library_filter .posts-filter__columns .posts-filter__button--back {
		display: none;
	}
	
	.br_library_filter .posts-filter__reset-button-wrapper #reset-button,
	.br_library_filter .posts-filter__reset-button-wrapper #reset-button:focus,
	.br_library_filter .posts-filter__reset-button-wrapper #apply-button,
	.br_library_filter .posts-filter__reset-button-wrapper #apply-button:focus {
		font: var(--body-l-medium-font);
		border: 1px solid var(--arctic-100);
		color: var(--space-100);
		border-radius: 99px;
		padding: 10px 32px;
		outline: none !important;
		transition: .4s;
	}
	
	.br_library_filter .posts-filter__reset-button-wrapper #reset-button:hover {
		background-color: var(--transparent) !important;
	}
	
	.br_library_filter .posts-filter__reset-button-wrapper #apply-button:hover {
		background-color: var(--arctic-100) !important;
		color: var(--white);
	}
	
	.br_library_filter .posts-filter__reset-button-wrapper #apply-button {
		display: none;
	}

	.br_library_filter .posts-filter__column {
		width: calc(33.33% - 42.66px);
		max-width: 390.67px;
		padding-right: 64px;
		display: flex;
		flex-direction: column;
		gap: 16px;
	}

	.br_library_filter .posts-filter__column:not(:last-child) {
		border-right: 1px solid var(--space-20);
	}

	.br_library_filter ul {
		list-style: none;
		padding: 0;
	}

	.br_library_filter .posts-filter__flyout ul li ul {
		padding-left: 16px;
	}
	
	.br_library_filter .posts-filter__flyout .posts-filter__term-list {
		display: flex;
		flex-direction: column;
	}
	
	.br_library_filter .posts-filter__child-term-list {
		display: flex !important;
		flex-direction: column;
		overflow: hidden;
		max-height: 0px;
		height: auto !important;
		opacity: 0;
		transform: translate3d(0,0,0);
		-webkit-transform: translate3d(0,0,0);
		-moz-transform: translate3d(0,0,0);
		transition: .4s;
	}
	
	.br_library_filter .posts-filter__term-wrapper:has(.posts-filter__toggle-child.expanded) + .posts-filter__child-term-list {
		max-height: 999px;
		opacity: 1;
		transition: 1s;
	}

	.br_library_filter .posts-filter__term-label {
		width: 100%;
		display: flex;
		gap: 8px;
		align-items: center;
		padding: 2px 32px 2px 0;
		margin: 6px 0;
		cursor: pointer;
	}

	.br_library_filter .posts-filter__term-label span {
		transition: .4s;
	}

	.br_library_filter .posts-filter__term-label .posts-filter__term-name {
		width: 100%;
	}

	.br_library_filter .posts-filter__term-label .posts-filter__term-count {
		padding: 3px 8px;
		background-color: var(--space-05);
		border-radius: 99px;
	}

	.br_library_filter .posts-filter__term-label input {
		width: 18px;
		min-width: 18px;
		height: 18px;
		appearance: none;
		-webkit-appearance: none;
		-moz-appearance: none;
		cursor: pointer;
	}

	.br_library_filter .posts-filter__checkmark {
		width: 18px;
		min-width: 18px;
		height: 18px;
		border: 2px solid var(--space-40);
		background-color: var(--transparent);
		border-radius: 2px;
		position: absolute;
		pointer-events: none;
	}

	.br_library_filter .posts-filter__checkmark:after {
		content: "";
		width: 12px;
		height: 8px;
		border-left: 2px solid var(--white);
		border-bottom: 2px solid var(--white);
		position: absolute;
		left: 1px;
		top: 1px;
		transform: rotate(-45deg);
		opacity: 0;
		pointer-events: none;
		transition: .4s;
	}
	
	.br_library_filter .posts-filter__term-label:hover .posts-filter__checkmark {
		border: 2px solid var(--arctic-100);
	}

	.br_library_filter .posts-filter__term-label input:checked ~ span {
		color: var(--arctic-100) !important;
	}

	.br_library_filter .posts-filter__term-label input:checked ~ .posts-filter__checkmark {
		border: 2px solid var(--arctic-100);
		background-color: var(--arctic-100);
	}

	.br_library_filter .posts-filter__term-label input:checked ~ .posts-filter__checkmark:after {
		opacity: 1;
	}
	
	.br_library_filter .posts-filter__term-item--disabled {
		opacity: .3;
		cursor: not-allowed;
	}
	
	.br_library_filter .posts-filter__term-item--disabled label {
		pointer-events: none;
	}
	
	.br_library_filter .posts-filter__term-wrapper {
		position: relative;
	}
	
	.br_library_filter .posts-filter__toggle-child {
		width: 24px;
		height: 30px;
		position: absolute;
		top: 0;
		right: 0;
		color: var(--space-60);
		display: flex;
		align-items: center;
		justify-content: center;
		transition: .4s;
	}
	
	.br_library_filter .posts-filter__toggle-child:hover {
		color: var(--arctic-100);
	}

	.br_library_filter .posts-filter__toggle-child.expanded {
		transform: rotate(180deg) translate3d(0,0,0);
		-webkit-transform: rotate(180deg) translate3d(0,0,0);
		-moz-transform: rotate(180deg) translate3d(0,0,0);
	}
	
	@media (max-width: 767px) {
		/*
		.br_library_filter .posts-filter__columns .posts-filter__button--back {
			display: flex;
		}
		*/
		
		.br_library_filter .posts-filter__columns {
			flex-direction: column;
			gap: 32px;
		}
		
		.br_library_filter .posts-filter__columns,
		.br_library_filter .posts-filter__reset-button-wrapper {
			transform: translateX(0);
		}
		
		.br_library_filter .posts-filter__reset-button-wrapper {
			align-items: center;
		}
		
		.br_library_filter .posts-filter__column {
			max-width: initial;
			width: 100%;
			padding-right: 0;
			border-right: none !important;
		}
		
		.br_library_filter .posts-filter__reset-button-wrapper #reset-button,
		.br_library_filter .posts-filter__reset-button-wrapper #reset-button:focus {
			padding: 0;
			color: var(--arctic-100);
			text-decoration: underline;
			border-radius: 0;
			border: none;
		}
		
		.br_library_filter .posts-filter__reset-button-wrapper #apply-button {
			display: flex;
			justify-content: center;
			flex-grow: 1;
		}
	}
	
	/* Skeleton */
	
	.br_library_filter .posts-filter__loading-skeleton {
		display: flex;
		position: relative;
		align-items: center;
		max-width: 1300px;
		width: 100%;
		transform: translateX(12px);
	}
	
	.br_library_filter .posts-filter__loading-skeleton .posts-filter__term-results {
		display: flex;
		flex-direction: column;
		width: 100%;
		gap: 16px;
	}
	
	.br_library_filter .posts-filter__loading-skeleton .posts-filter__term-results h4 {
		width: 100%;
		max-width: 200px;
		height: 29px;
		overflow: hidden;
		position: relative;
		background-color: var(--space-05);
	}
	
	.br_library_filter .posts-filter__loading-skeleton .posts-filter__term-results ul,
	.br_library_filter .posts-filter__loading-skeleton .posts-filter__term-results a {
		display: flex;
		align-items: center;
		gap: 16px;
		width: 100%;
	}
	
	.br_library_filter .posts-filter__loading-skeleton .posts-filter__term-results ul {
		flex-direction: column;
	}
	
	.br_library_filter .posts-filter__loading-skeleton .posts-filter__term-results ul:not(:last-child) {
		margin-bottom: 16px;
	}
	
	.br_library_filter .posts-filter__loading-skeleton .posts-filter__term-results ul li {
		width: 100%;
	}
	
	.br_library_filter .posts-filter__loading-skeleton .posts-filter__term-results .skeleton-img {
		width: 50px;
		min-width: 50px;
		height: 40px;
		overflow: hidden;
		position: relative;
		background-color: var(--space-05);
	}
	
	.br_library_filter .posts-filter__loading-skeleton .posts-filter__term-results .skeleton-title {
		width: 100%;
		max-width: 300px;
		height: 26px;
		overflow: hidden;
		position: relative;
		background-color: var(--space-05);
	}
	
	@keyframes skeleton_gradient {
    100% {
      transform: translateX(100%);
    }
  }
	
	.br_library_filter .posts-filter__loading-skeleton .posts-filter__term-results h4:after,
	.br_library_filter .posts-filter__loading-skeleton .posts-filter__term-results .skeleton-img:after,
	.br_library_filter .posts-filter__loading-skeleton .posts-filter__term-results .skeleton-title:after {
		content: "";
		position: absolute;
		top: 0;
		right: 0;
		bottom: 0;
		left: 0;
		transform: translateX(-100%);
		background: linear-gradient(90deg, rgba(255,255,255,0), rgba(255,255,255,.2) 20%, rgba(255,255,255,.4) 60%, rgba(255,255,255,0));
    animation: skeleton_gradient 2s infinite;
	}	
	
	@media (max-width: 767px) {
		.br_library_filter .posts-filter__loading-skeleton {
			transform: translateX(0);
		}
	}
	
	/* Search */

	.br_library_filter .posts-filter__flyout--search {
		flex-wrap: wrap;
		gap: 32px;
	}

	.br_library_filter .posts-filter__search-wrapper {
		display: flex;
		position: relative;
		align-items: center;
		max-width: 1300px;
		width: 100%;
		transform: translateX(12px);
	}

	.br_library_filter .posts-filter__search-wrapper i {
		position: absolute;
		color: var(--space-100);
	}

	.br_library_filter .posts-filter__search-wrapper i:first-child {
		left: 16px;
		pointer-events: none;
	}

	.br_library_filter .posts-filter__search-wrapper i:last-child {
		right: 16px;
	}

	.br_library_filter .posts-filter__search-wrapper input {
		border: none;
		border-radius: 0;
		border-bottom: 1px solid var(--space-20);
		padding: 16px 56px;
		font: var(--body-l-regular-font);
		color: var(--space-100);
	}

	.br_library_filter .posts-filter__search-wrapper input:hover,
	.br_library_filter .posts-filter__search-wrapper input:focus
	{
		border-bottom: 1px solid var(--arctic-100);
	}

	.br_library_filter .posts-filter__search-wrapper input:focus {
		outline: none !important;
	}

	.br_library_filter .posts-filter__search-results {
		display: flex;
		flex-direction: column;
		gap: 32px;
		max-width: 1300px;
		width: 100%;
		transform: translateX(12px);
	}

	.br_library_filter .posts-filter__search-results .posts-filter__term-results {
		display: flex;
		flex-direction: column;
		gap: 16px;
	}

	.br_library_filter .posts-filter__search-results .posts-filter__term-results h4 {
		font: var(--body-2xl-medium-font);
		color: var(--space-100);
	}

	.br_library_filter .posts-filter__search-results .posts-filter__term-results ul {
		display: flex;
		flex-direction: column;
		gap: 16px;
	}

	.br_library_filter .posts-filter__search-results .posts-filter__term-results ul li a {
		display: flex;
		align-items: center;
		gap: 16px;
	}

	.br_library_filter .posts-filter__search-results .posts-filter__term-results ul li a .posts-filter__thumbnail {
		display: flex;
	}

	.br_library_filter .posts-filter__search-results .posts-filter__term-results ul li a .posts-filter__thumbnail img {
		width: 50px;
		min-width: 50px;
		height: 40px;
		object-fit: cover;
		border-radius: 2px;
	}

	.br_library_filter .posts-filter__search-results .posts-filter__term-results ul li a .posts-filter__title {
		color: var(--space-100);
		font: var(--body-l-regular-font);
	}

	.br_library_filter .posts-filter__search-results .posts-filter__see-all {
		padding: 0;
		color: var(--arctic-100);
		border-radius: 0;
		border: none;
		text-decoration: underline;
		display: flex;
		align-items: center;
	}

	.br_library_filter .posts-filter__search-results .posts-filter__see-all:after {
		content: "";
		display: flex;
		width: 24px;
		height: 24px;
		background-image: url(/wp-content/uploads/2024/05/chevron-right-2.svg);
		background-repeat: no-repeat;
		background-position: center center;
		background-size: contain;
	}

	.br_library_filter .posts-filter__search-results .posts-filter__see-all:hover {
		background-color: var(--transparent);
	}
	
	.br_library_filter .posts-filter__search-results .posts-filter__see-all:focus {
		outline: none !important;
	}
	
	.br_library_filter .posts-filter__search-results p {
		color: var(--space-100);
		font: var(--body-m-regular-font);
	}
	
	@media (max-width: 767px) {
		.br_library_filter .posts-filter__search-wrapper {
			transform: translateX(0);
		}
	}
</style>
	<!-- Start cookieyes banner -->
	<script id="cookieyes" type="text/javascript" src="https://cdn-cookieyes.com/client_data/c88632efa159eb88df89125a/script.js"></script>
	<!-- End cookieyes banner -->
<script type="rocketlazyloadscript">
	document.addEventListener('DOMContentLoaded', function() {
    const boxItems = document.querySelectorAll('.box_item');

    function handleHoverEvents() {
        if (window.innerWidth >= 1025) {
            boxItems.forEach(box => {
                const videoContainer = box.querySelector('.box_media_video');
                if (videoContainer) {
                    const video = videoContainer.querySelector('video');
                    if (video) {
                        box.addEventListener('mouseenter', playVideo);
                        box.addEventListener('mouseleave', pauseVideo);
                    }
                }
            });
        } else {
            boxItems.forEach(box => {
                box.removeEventListener('mouseenter', playVideo);
                box.removeEventListener('mouseleave', pauseVideo);
            });
        }
    }

    function playVideo(event) {
        const video = event.currentTarget.querySelector('.box_media_video video');
        if (video) {
            video.play();
        }
    }

    function pauseVideo(event) {
        const video = event.currentTarget.querySelector('.box_media_video video');
        if (video) {
            video.pause();
        }
    }

    // Initial check
    handleHoverEvents();

    // Re-check on window resize
    window.addEventListener('resize', handleHoverEvents);
});

</script>

<style>
	
	.media-accordion-wrapper {
		gap: 40px;
	}
	
	.media-accordion {
		display: flex;
		flex-direction: column;
	}
	
	.media-accordion .accordion-title{
		display: flex;
		gap:12px;
		align-items: center;
	}
	
	.media-accordion .accordion-text h3{
		margin-bottom:8px;
		
	}
	
	.media-accordion .accordion-title i {
		font-size:20px;
	}
	
	.media-accordion .accordion-item:not(:last-child) {
		border-bottom: 1px solid var(--space-10, #E5E9EC)
	}
	
	.media-accordion .accordion-item .accordion-header {
		padding: 12px 0;
		display: flex;
		align-items: center;
		justify-content: space-between;
		cursor: pointer;
	}
	
	.media-accordion .accordion-item .accordion-header .accordion-chevron {
		display: flex;
		align-items: center;
		justify-content: center;
		border-radius: 16px;
		border: solid 1px var(--space-10, #E5E9EC);
		width: 48px;
		height: 48px;
	}
	
	.media-accordion .accordion-item .accordion-header .accordion-chevron i {
		transition: .4s;
	}
	
	.media-accordion .accordion-item .accordion-header.active .accordion-chevron i {
		transform: rotate(180deg) translate3d(0,0,0);
		-webkit-transform: rotate(180deg) translate3d(0,0,0);
		-moz-transform: rotate(180deg) translate3d(0,0,0);
	}
	
	.media-accordion .accordion-item .accordion-content {
		padding-bottom: 16px;
	}
	
	.media-accordion .accordion-item .accordion-content .accordion-text {
		margin-bottom: 16px;
	}
	
	.media-accordion .accordion-item .accordion-content .accordion-text + a {
		display: inline-flex;
		align-items: center;
	}
	
	.media-accordion .accordion-item .accordion-content .accordion-text + a:after {
		content: "";
		background-image: url(/wp-content/uploads/2024/05/chevron-right-2.svg);
		background-size: contain;
		background-position: center center;
		background-repeat: no-repeat;
		width: 24px;
		height: 24px;
	}
	
	.media-accordion .accordion-item .accordion-content .accordion-text p:not(:last-child) {
		margin-bottom: 16px;
	}
	
	.media-accordion .accordion-media-container video {
		border-radius: 20px;
	}
	
	@media (max-width: 1024px) {
		.media-accordion .accordion-item .accordion-header {
			padding: 20px 0;
		}
		
		.media-accordion .accordion-item .accordion-header .accordion-chevron {
			width: 36px;
			height: 36px;
			border-radius: 8px;
		}
		
		.media-accordion .accordion-item .accordion-content {
			padding-bottom: 20px;
		}
		
		.media-accordion .accordion-media-container {
			margin-top: 24px;
		}
	}
	
	@media (max-width: 767px){
		.media-accordion-wrapper > .accordion-media-container{
			display: none;
		}
	}
	
</style>
<!-- Google Tag Manager -->
<script type="rocketlazyloadscript">(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-K3VM2P');</script>
<!-- End Google Tag Manager -->
<style>
body #q-messenger-frame.qlfd-disable-pointer-events {
    pointer-events: all !important;
}
</style>
<link rel="stylesheet" href="/wp-content/plugins/elementor-pro/assets/css/widget-nav-menu.min.css">
<style>
.grecaptcha-badge {
    visibility: hidden;
    height: 0 !important;
}
.hs_recaptcha {
    margin: 0 !important;
    order: 20 !important;
}
</style>

<script type="rocketlazyloadscript">
window.addEventListener('message', event => {
	if(event.data.type === 'hsFormCallback' && event.data.eventName === 'onFormReady') {
		let recaptcha_html = '<div style="color:#667e8c;font-size:10px;line-height:1.2;">This site is protected by reCAPTCHA and the Google <a href="https://policies.google.com/privacy">Privacy Policy</a> and <a href="https://policies.google.com/terms">Terms of Service</a> apply.</div>';
		document.querySelectorAll('.hs_recaptcha').forEach(element => {
			if(!element.textContent.includes('reCAPTCHA')){
			    element.insertAdjacentHTML('beforeend', recaptcha_html);
			}
		});
	}
});
</script>
<script type="rocketlazyloadscript">void 0===window.navatticQueue&&(window.navatticQueue=[],window.navattic=new Proxy({},{get:function n(t,u,e){return function(){for(var n=arguments.length,t=Array(n),e=0;e<n;e++)t[e]=arguments[e];return navatticQueue.push({function:u,arguments:t})}}}));</script>
<script type="rocketlazyloadscript" data-minify="1" async data-rocket-src="https://www.bloomreach.com/wp-content/cache/min/1/sdk.js?ver=1742555262" data-key="pkey_cm34kcntu00chrs3b96le76ay"></script>
<link rel="icon" href="https://www.bloomreach.com/wp-content/uploads/2024/04/favicon.png" sizes="32x32" />
<link rel="icon" href="https://www.bloomreach.com/wp-content/uploads/2024/04/favicon.png" sizes="192x192" />
<link rel="apple-touch-icon" href="https://www.bloomreach.com/wp-content/uploads/2024/04/favicon.png" />
<meta name="msapplication-TileImage" content="https://www.bloomreach.com/wp-content/uploads/2024/04/favicon.png" />
<noscript><style id="rocket-lazyload-nojs-css">.rll-youtube-player, [data-lazy-src]{display:none !important;}</style></noscript><meta name="generator" content="WP Rocket 3.18.3" data-wpr-features="wpr_delay_js wpr_defer_js wpr_minify_js wpr_preload_fonts wpr_lazyload_images wpr_lazyload_iframes wpr_oci wpr_image_dimensions wpr_minify_css wpr_preload_links wpr_desktop" /></head>
<body class="wp-singular products-template-default single single-products postid-3401 wp-custom-logo wp-embed-responsive wp-theme-hello-elementor wp-child-theme-hello-theme-child-master theme-default elementor-default elementor-kit-13 elementor-page elementor-page-3401">


<a class="skip-link screen-reader-text" href="#content">Skip to content</a>

		<div data-elementor-type="header" data-elementor-id="99" class="elementor elementor-99 elementor-location-header" data-elementor-post-type="elementor_library">
			<div class="elementor-element elementor-element-0486b18 sticky_header br_header e-flex e-con-boxed e-con e-parent" data-id="0486b18" data-element_type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}" data-category="topnav">
					<div class="e-con-inner">
		<div class="elementor-element elementor-element-d4b8c6a e-con-full header_logo_wrap e-flex e-con e-child" data-id="d4b8c6a" data-element_type="container">
				<div class="elementor-element elementor-element-d71e3e2 elementor-widget__width-initial elementor-absolute header_icon elementor-view-default elementor-widget elementor-widget-icon" data-id="d71e3e2" data-element_type="widget" data-settings="{&quot;_position&quot;:&quot;absolute&quot;}" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<a class="elementor-icon" href="https://www.bloomreach.com/en">
			<svg xmlns="http://www.w3.org/2000/svg" width="34" height="35" viewBox="0 0 34 35" fill="none"><path d="M34 17.8794C34 14.4942 33.003 11.1851 31.135 8.3704C29.267 5.55574 26.612 3.36198 23.5056 2.06654C20.3993 0.771095 16.9812 0.432138 13.6835 1.09255C10.3858 1.75296 7.35668 3.38307 4.97919 5.77674C2.6017 8.17041 0.982604 11.2201 0.326656 14.5402C-0.329293 17.8604 0.00737257 21.3018 1.29406 24.4292C2.58075 27.5567 4.75968 30.2298 7.55531 32.1105C10.351 33.9912 13.6377 34.995 17 34.995C21.5087 34.995 25.8327 33.1918 29.0208 29.982C32.2089 26.7722 34 22.4187 34 17.8794Z" fill="#FFD500"></path><path d="M20.2431 14.5512L19.4388 16.64C19.8696 16.9213 20.2228 17.31 20.465 17.7693C20.7072 18.2286 20.8304 18.7433 20.8229 19.2646C20.8054 19.842 20.623 20.4016 20.2982 20.8749C19.9734 21.3483 19.5201 21.7148 18.994 21.9296C18.4679 22.1443 17.8917 22.1981 17.3361 22.0842C16.7805 21.9703 16.2695 21.6937 15.8658 21.2884C15.462 20.883 15.183 20.3664 15.063 19.8019C14.943 19.2374 14.9871 18.6494 15.19 18.1101C15.3929 17.5707 15.7457 17.1034 16.2052 16.7653C16.6647 16.4272 17.211 16.2331 17.7772 16.2066L18.533 14.0707C17.8142 13.9531 17.079 13.9958 16.3781 14.1959C15.6771 14.3959 15.027 14.7485 14.4726 15.2293C13.9183 15.7102 13.4728 16.3078 13.167 16.981C12.8612 17.6543 12.7022 18.3871 12.7011 19.129H12.6944V24.5035H14.9989V23.6528C15.8699 24.2136 16.8812 24.5062 17.9114 24.4954C19.0786 24.5115 20.2164 24.1221 21.1376 23.3915C22.0588 22.6609 22.7086 21.6325 22.9801 20.4755C23.2516 19.3185 23.1286 18.1017 22.6313 17.0254C22.1341 15.9491 21.2922 15.0773 20.2442 14.5535" fill="#002840"></path><path d="M12.6944 14.003C13.3404 13.3143 14.1109 12.7668 14.961 12.3924V8.98242H12.6944V14.003Z" fill="#002840"></path></svg>			</a>
		</div>
				</div>
				</div>
				<div class="elementor-element elementor-element-8a400d5 elementor-widget__width-initial header_logo elementor-view-default elementor-widget elementor-widget-icon" data-id="8a400d5" data-element_type="widget" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<a class="elementor-icon" href="https://www.bloomreach.com/en">
			<svg xmlns="http://www.w3.org/2000/svg" width="332" height="72" viewBox="0 0 332 72" fill="none"><g clip-path="url(#clip0_25_3185)"><path d="M119.81 17.27V49.84H114.59V17.27H119.81Z" fill="#002840"></path><path d="M213.68 36.38V49.84H208.47V37.25C208.508 36.5444 208.404 35.8384 208.162 35.1744C207.921 34.5104 207.547 33.902 207.064 33.386C206.582 32.87 206 32.4569 205.353 32.1716C204.707 31.8863 204.009 31.7348 203.303 31.726C202.596 31.7172 201.895 31.8514 201.242 32.1206C200.589 32.3897 199.996 32.7882 199.501 33.2921C199.006 33.796 198.617 34.3948 198.359 35.0527C198.101 35.7105 197.979 36.4137 198 37.12V49.84H192.79V37.25C192.843 36.5388 192.745 35.8244 192.502 35.1538C192.259 34.4832 191.877 33.8715 191.382 33.3587C190.886 32.846 190.287 32.4439 189.625 32.1787C188.963 31.9135 188.253 31.7913 187.54 31.82C186.835 31.8261 186.139 31.9738 185.493 32.2541C184.846 32.5345 184.263 32.9418 183.777 33.452C183.291 33.9622 182.913 34.5649 182.664 35.2242C182.415 35.8835 182.302 36.586 182.33 37.29V49.84H177.12V27.44H182.33V30C183.154 29.0416 184.178 28.276 185.331 27.7576C186.484 27.2391 187.736 26.9805 189 27C190.464 26.9664 191.914 27.298 193.218 27.9649C194.522 28.6318 195.64 29.6131 196.47 30.82C197.38 29.6188 198.558 28.6475 199.911 27.9841C201.264 27.3207 202.753 26.9836 204.26 27C205.507 26.9496 206.751 27.1574 207.914 27.6104C209.077 28.0635 210.134 28.7519 211.019 29.6326C211.903 30.5133 212.596 31.5673 213.054 32.7284C213.512 33.8895 213.725 35.1327 213.68 36.38Z" fill="#002840"></path><path d="M230.78 27V32.52C225.78 32.17 223.23 34.78 223.23 38.21V49.84H218V27.44H223.21V30.61C224.115 29.4736 225.267 28.558 226.579 27.9326C227.89 27.3072 229.327 26.9883 230.78 27Z" fill="#002840"></path><path d="M254.41 40.51H236.78C237.113 42.0132 237.965 43.3508 239.187 44.2873C240.409 45.2239 241.922 45.6993 243.46 45.63C244.736 45.6795 246.001 45.368 247.108 44.7312C248.216 44.0944 249.121 43.1581 249.72 42.03L254.06 43.85C253.125 45.7933 251.656 47.4302 249.825 48.5689C247.994 49.7077 245.876 50.3012 243.72 50.28C236.6 50.28 231.72 45.11 231.72 38.64C231.686 37.1081 231.962 35.5851 232.53 34.1621C233.099 32.7392 233.949 31.4457 235.029 30.3589C236.109 29.2721 237.398 28.4145 238.817 27.8374C240.237 27.2602 241.758 26.9754 243.29 27C249.72 27 255.71 32.34 254.41 40.51ZM236.82 36.56H249.72C249.368 35.1563 248.556 33.9107 247.415 33.021C246.273 32.1314 244.867 31.6488 243.42 31.65C241.928 31.6076 240.466 32.069 239.268 32.9599C238.071 33.8507 237.208 35.1189 236.82 36.56Z" fill="#002840"></path><path d="M280.81 27.44V49.84H275.59V46.84C274.677 47.9399 273.527 48.8196 272.227 49.4135C270.927 50.0074 269.509 50.3002 268.08 50.27C261.83 50.27 257.18 45.49 257.18 38.63C257.18 31.77 261.83 27 268.08 27C269.509 26.9699 270.927 27.2626 272.227 27.8565C273.527 28.4504 274.677 29.3301 275.59 30.43V27.43L280.81 27.44ZM275.59 38.64C275.626 37.7494 275.483 36.8606 275.168 36.0268C274.853 35.193 274.373 34.4313 273.757 33.7872C273.141 33.143 272.401 32.6298 271.582 32.278C270.763 31.9263 269.881 31.7433 268.99 31.74C265.17 31.74 262.48 34.82 262.48 38.64C262.48 42.46 265.17 45.55 268.99 45.55C269.882 45.5454 270.764 45.3611 271.583 45.0083C272.402 44.6555 273.141 44.1412 273.757 43.4963C274.373 42.8514 274.853 42.0891 275.168 41.2547C275.483 40.4203 275.626 39.5311 275.59 38.64Z" fill="#002840"></path><path d="M284.45 38.64C284.461 35.9467 285.403 33.3401 287.116 31.2616C288.829 29.1831 291.208 27.7605 293.849 27.2345C296.491 26.7086 299.233 27.1117 301.611 28.3756C303.989 29.6395 305.858 31.6865 306.9 34.17L302.08 35.82C301.574 34.6545 300.745 33.6584 299.69 32.9495C298.636 32.2406 297.4 31.8487 296.13 31.82C292.22 31.82 289.66 34.82 289.66 38.64C289.587 40.1902 290.07 41.7156 291.023 42.9402C291.977 44.1649 293.337 45.0081 294.858 45.3173C296.378 45.6265 297.96 45.3814 299.315 44.6263C300.671 43.8711 301.712 42.6558 302.25 41.2L306.94 43C306.082 45.1882 304.573 47.0599 302.616 48.362C300.659 49.6641 298.35 50.3336 296 50.28C294.468 50.3089 292.945 50.0269 291.525 49.4511C290.105 48.8752 288.816 48.0174 287.736 46.9294C286.657 45.8415 285.809 44.546 285.244 43.1213C284.679 41.6966 284.409 40.1721 284.45 38.64Z" fill="#002840"></path><path d="M331.82 36.86V49.86H326.61V37.68C326.658 36.909 326.544 36.1365 326.275 35.4124C326.006 34.6883 325.588 34.0287 325.048 33.4764C324.507 32.924 323.857 32.4912 323.14 32.2059C322.422 31.9206 321.652 31.7891 320.88 31.82C320.098 31.8065 319.322 31.9541 318.6 32.2537C317.878 32.5534 317.226 32.9986 316.684 33.5615C316.141 34.1245 315.721 34.7932 315.448 35.5258C315.176 36.2585 315.057 37.0395 315.1 37.82V49.84H309.89V17.27H315.1V30.35C315.975 29.2981 317.071 28.4524 318.31 27.8733C319.55 27.2942 320.902 26.996 322.27 27C327.44 27 331.82 30.65 331.82 36.86Z" fill="#002840"></path><path d="M92.28 29V17.27H87.07V49.84H92.28V48.25C94.189 49.4529 96.4037 50.0812 98.66 50.06C100.161 50.0653 101.65 49.7906 103.05 49.25C105.088 48.3182 106.815 46.8193 108.024 44.9323C109.233 43.0453 109.873 40.85 109.868 38.6089C109.863 36.3678 109.212 34.1755 107.995 32.2942C106.777 30.4129 105.043 28.9221 103 28C101.608 27.4684 100.13 27.1973 98.64 27.2C96.3907 27.1734 94.1818 27.7986 92.28 29ZM98.05 45.43C96.8654 45.4463 95.6994 45.1345 94.681 44.5292C93.6627 43.9238 92.8317 43.0484 92.28 42C91.7351 40.9602 91.4505 39.8039 91.4505 38.63C91.4505 37.4561 91.7351 36.2997 92.28 35.26C92.8289 34.2078 93.6588 33.3284 94.6773 32.7194C95.6959 32.1103 96.8633 31.7956 98.05 31.81C98.9348 31.8123 99.8101 31.9919 100.624 32.3382C101.438 32.6845 102.175 33.1905 102.79 33.8263C103.405 34.4621 103.887 35.2147 104.206 36.0398C104.526 36.8649 104.677 37.7456 104.65 38.63C104.678 39.5152 104.528 40.397 104.209 41.2232C103.891 42.0495 103.409 42.8034 102.794 43.4402C102.178 44.0771 101.441 44.584 100.627 44.9309C99.8118 45.2778 98.9356 45.4578 98.05 45.46V45.43Z" fill="#002840"></path><path d="M123.67 38.64C123.636 36.2973 124.3 33.9974 125.577 32.0331C126.854 30.0687 128.687 28.5285 130.841 27.6085C132.996 26.6885 135.376 26.4303 137.678 26.8666C139.98 27.3029 142.1 28.4141 143.769 30.0588C145.438 31.7034 146.579 33.8073 147.049 36.1028C147.519 38.3982 147.295 40.7814 146.406 42.9494C145.518 45.1173 144.004 46.9719 142.059 48.2772C140.113 49.5826 137.823 50.2798 135.48 50.28C133.931 50.3276 132.388 50.0603 130.945 49.4943C129.501 48.9284 128.188 48.0755 127.084 46.9874C125.98 45.8992 125.108 44.5984 124.521 43.1636C123.935 41.7289 123.645 40.1899 123.67 38.64ZM135.48 45.46C136.365 45.4577 137.24 45.2781 138.054 44.9318C138.868 44.5855 139.605 44.0795 140.22 43.4437C140.835 42.8079 141.317 42.0553 141.636 41.2302C141.956 40.4051 142.107 39.5244 142.08 38.64C142.08 37.7733 141.909 36.915 141.578 36.1143C141.246 35.3135 140.76 34.586 140.147 33.9731C139.534 33.3602 138.806 32.8741 138.006 32.5424C137.205 32.2107 136.347 32.04 135.48 32.04C134.613 32.04 133.755 32.2107 132.954 32.5424C132.154 32.8741 131.426 33.3602 130.813 33.9731C130.2 34.586 129.714 35.3135 129.382 36.1143C129.051 36.915 128.88 37.7733 128.88 38.64C128.849 39.5254 128.997 40.408 129.315 41.2349C129.633 42.0619 130.114 42.8162 130.73 43.4529C131.346 44.0895 132.085 44.5954 132.901 44.9402C133.717 45.2851 134.594 45.4619 135.48 45.46Z" fill="#002840"></path><path d="M149.89 38.64C149.854 36.2949 150.517 33.9922 151.794 32.0248C153.071 30.0575 154.904 28.5145 157.061 27.5922C159.217 26.67 161.599 26.41 163.904 26.8456C166.208 27.2811 168.331 28.3924 170.002 30.0381C171.673 31.6838 172.817 33.7894 173.288 36.087C173.759 38.3846 173.536 40.7704 172.646 42.9407C171.757 45.1111 170.243 46.9678 168.295 48.2748C166.348 49.5817 164.055 50.2797 161.71 50.28C160.16 50.3275 158.617 50.0602 157.173 49.4944C155.729 48.9286 154.415 48.0759 153.311 46.9879C152.206 45.8999 151.333 44.5992 150.745 43.1644C150.157 41.7295 149.866 40.1904 149.89 38.64ZM161.71 45.46C162.595 45.4577 163.47 45.2781 164.284 44.9318C165.098 44.5855 165.835 44.0795 166.45 43.4437C167.065 42.8079 167.547 42.0552 167.866 41.2302C168.186 40.4051 168.337 39.5243 168.31 38.64C168.31 37.7733 168.139 36.915 167.808 36.1143C167.476 35.3135 166.99 34.586 166.377 33.9731C165.764 33.3602 165.036 32.8741 164.236 32.5424C163.435 32.2107 162.577 32.04 161.71 32.04C160.843 32.04 159.985 32.2107 159.184 32.5424C158.384 32.8741 157.656 33.3602 157.043 33.9731C156.43 34.586 155.944 35.3135 155.612 36.1143C155.281 36.915 155.11 37.7733 155.11 38.64C155.079 39.5254 155.227 40.408 155.545 41.2349C155.863 42.0618 156.344 42.8162 156.96 43.4528C157.577 44.0895 158.315 44.5954 159.131 44.9402C159.947 45.2851 160.824 45.4619 161.71 45.46Z" fill="#002840"></path><path d="M35.94 71.88C55.7891 71.88 71.88 55.7891 71.88 35.94C71.88 16.0909 55.7891 0 35.94 0C16.0909 0 0 16.0909 0 35.94C0 55.7891 16.0909 71.88 35.94 71.88Z" fill="#FFD500"></path><path d="M43.22 28.47L41.46 33C42.3966 33.6093 43.1631 34.4464 43.6878 35.4329C44.2125 36.4193 44.4782 37.5228 44.46 38.64C44.46 40.3321 43.7878 41.9549 42.5913 43.1513C41.3949 44.3478 39.7721 45.02 38.08 45.02C36.3879 45.02 34.7651 44.3478 33.5687 43.1513C32.3722 41.9549 31.7 40.3321 31.7 38.64C31.6625 37.8006 31.7917 36.962 32.0801 36.1728C32.3686 35.3836 32.8106 34.6593 33.3806 34.0419C33.9506 33.4245 34.6372 32.9262 35.4009 32.5757C36.1647 32.2252 36.9902 32.0295 37.83 32L39.48 27.4C37.9037 27.143 36.2904 27.2323 34.7521 27.6618C33.2138 28.0912 31.7875 28.8505 30.5723 29.8868C29.3571 30.9231 28.3821 32.2116 27.7151 33.6628C27.0481 35.1139 26.7052 36.6929 26.71 38.29V49.84H31.71V48C33.6165 49.2096 35.8323 49.8416 38.09 49.82C40.6473 49.8552 43.1403 49.0187 45.1589 47.4483C47.1775 45.8779 48.6013 43.6671 49.1961 41.1797C49.7908 38.6924 49.5211 36.0766 48.4313 33.7629C47.3415 31.4492 45.4965 29.5755 43.2 28.45L43.22 28.47Z" fill="#002840"></path><path d="M26.69 27.92C28.1166 26.466 29.8156 25.3073 31.69 24.51V17.27H26.69V27.92Z" fill="#002840"></path></g><defs><clipPath id="clip0_25_3185"><rect width="331.82" height="71.87" fill="white"></rect></clipPath></defs></svg>			</a>
		</div>
				</div>
				</div>
				</div>
				<div class="elementor-element elementor-element-7d3a2f5 e-n-menu-none elementor-hidden-tablet elementor-hidden-mobile e-full_width e-n-menu-layout-horizontal elementor-widget elementor-widget-n-menu" data-id="7d3a2f5" data-element_type="widget" data-settings="{&quot;menu_items&quot;:[{&quot;item_title&quot;:&quot;Products&quot;,&quot;_id&quot;:&quot;87a9d66&quot;,&quot;item_dropdown_content&quot;:&quot;yes&quot;,&quot;__dynamic__&quot;:null,&quot;item_link&quot;:{&quot;url&quot;:&quot;&quot;,&quot;is_external&quot;:&quot;&quot;,&quot;nofollow&quot;:&quot;&quot;,&quot;custom_attributes&quot;:&quot;&quot;},&quot;item_icon&quot;:{&quot;value&quot;:&quot;&quot;,&quot;library&quot;:&quot;&quot;},&quot;item_icon_active&quot;:null,&quot;element_id&quot;:&quot;&quot;},{&quot;item_title&quot;:&quot;Solutions&quot;,&quot;_id&quot;:&quot;2ca1434&quot;,&quot;item_dropdown_content&quot;:&quot;yes&quot;,&quot;__dynamic__&quot;:null,&quot;item_link&quot;:{&quot;url&quot;:&quot;&quot;,&quot;is_external&quot;:&quot;&quot;,&quot;nofollow&quot;:&quot;&quot;,&quot;custom_attributes&quot;:&quot;&quot;},&quot;item_icon&quot;:{&quot;value&quot;:&quot;&quot;,&quot;library&quot;:&quot;&quot;},&quot;item_icon_active&quot;:null,&quot;element_id&quot;:&quot;&quot;},{&quot;item_title&quot;:&quot;Resources&quot;,&quot;_id&quot;:&quot;1dc401c&quot;,&quot;item_dropdown_content&quot;:&quot;yes&quot;,&quot;__dynamic__&quot;:null,&quot;item_link&quot;:{&quot;url&quot;:&quot;&quot;,&quot;is_external&quot;:&quot;&quot;,&quot;nofollow&quot;:&quot;&quot;,&quot;custom_attributes&quot;:&quot;&quot;},&quot;item_icon&quot;:{&quot;value&quot;:&quot;&quot;,&quot;library&quot;:&quot;&quot;},&quot;item_icon_active&quot;:null,&quot;element_id&quot;:&quot;&quot;},{&quot;_id&quot;:&quot;2b81c3c&quot;,&quot;item_title&quot;:&quot;Pricing&quot;,&quot;item_dropdown_content&quot;:&quot;yes&quot;,&quot;__dynamic__&quot;:null,&quot;item_link&quot;:{&quot;url&quot;:&quot;&quot;,&quot;is_external&quot;:&quot;&quot;,&quot;nofollow&quot;:&quot;&quot;,&quot;custom_attributes&quot;:&quot;&quot;},&quot;item_icon&quot;:{&quot;value&quot;:&quot;&quot;,&quot;library&quot;:&quot;&quot;},&quot;item_icon_active&quot;:null,&quot;element_id&quot;:&quot;&quot;},{&quot;_id&quot;:&quot;c7ed034&quot;,&quot;item_title&quot;:&quot;About Us&quot;,&quot;item_dropdown_content&quot;:&quot;yes&quot;,&quot;__dynamic__&quot;:null,&quot;item_link&quot;:{&quot;url&quot;:&quot;&quot;,&quot;is_external&quot;:&quot;&quot;,&quot;nofollow&quot;:&quot;&quot;,&quot;custom_attributes&quot;:&quot;&quot;},&quot;item_icon&quot;:{&quot;value&quot;:&quot;&quot;,&quot;library&quot;:&quot;&quot;},&quot;item_icon_active&quot;:null,&quot;element_id&quot;:&quot;&quot;}],&quot;item_position_horizontal&quot;:&quot;center&quot;,&quot;open_animation&quot;:&quot;fadeIn&quot;,&quot;breakpoint_selector&quot;:&quot;none&quot;,&quot;menu_item_title_distance_from_content&quot;:{&quot;unit&quot;:&quot;px&quot;,&quot;size&quot;:34,&quot;sizes&quot;:[]},&quot;content_width&quot;:&quot;full_width&quot;,&quot;item_layout&quot;:&quot;horizontal&quot;,&quot;open_on&quot;:&quot;hover&quot;,&quot;horizontal_scroll&quot;:&quot;disable&quot;,&quot;menu_item_title_distance_from_content_tablet&quot;:{&quot;unit&quot;:&quot;px&quot;,&quot;size&quot;:&quot;&quot;,&quot;sizes&quot;:[]},&quot;menu_item_title_distance_from_content_mobile&quot;:{&quot;unit&quot;:&quot;px&quot;,&quot;size&quot;:&quot;&quot;,&quot;sizes&quot;:[]}}" data-widget_type="mega-menu.default">
				<div class="elementor-widget-container">
			<link rel="stylesheet" href="https://www.bloomreach.com/wp-content/plugins/elementor-pro/assets/css/widget-mega-menu.min.css?ver=1728985997">		<nav class="e-n-menu" data-widget-number="131" aria-label="Menu">
					<button class="e-n-menu-toggle" id="menu-toggle-131" aria-haspopup="true" aria-expanded="false" aria-controls="menubar-131" aria-label="Menu Toggle">
			<span class="e-n-menu-toggle-icon e-open">
				<i class="eicon-menu-bar"></i>			</span>
			<span class="e-n-menu-toggle-icon e-close">
				<i class="eicon-close"></i>			</span>
		</button>
					<div class="e-n-menu-wrapper" id="menubar-131" aria-labelledby="menu-toggle-131">
				<ul class="e-n-menu-heading">
								<li class="e-n-menu-item">
				<div id="e-n-menu-title-1311" class="e-n-menu-title">
					<div class="e-n-menu-title-container">												<span class="e-n-menu-title-text">
							Products						</span>
					</div>											<button id="e-n-menu-dropdown-icon-1311" class="e-n-menu-dropdown-icon e-focus" data-tab-index="1" aria-haspopup="true" aria-expanded="false" aria-controls="e-n-menu-content-1311" >
							<span class="e-n-menu-dropdown-icon-opened">
																<span class="elementor-screen-only">Close Products</span>
							</span>
							<span class="e-n-menu-dropdown-icon-closed">
								<svg xmlns="http://www.w3.org/2000/svg" width="11" height="10" viewBox="0 0 11 10" fill="none"><g clip-path="url(#clip0_277_10)"><path d="M5.5 7.91625C5.33333 7.91625 5.17667 7.85125 5.05875 7.73375L0.591667 3.26709C0.5325 3.20792 0.5 3.12959 0.5 3.04584C0.5 2.9625 0.5325 2.88375 0.591667 2.825C0.650833 2.76584 0.729167 2.73334 0.8125 2.73334C0.895833 2.73334 0.974583 2.76584 1.03333 2.825L5.5 7.29125L9.96667 2.825C10.0258 2.76584 10.1042 2.73334 10.1875 2.73334C10.2708 2.73334 10.3496 2.76584 10.4083 2.825C10.4675 2.88417 10.5 2.9625 10.5 3.04584C10.5 3.12917 10.4675 3.20792 10.4083 3.26667L5.94167 7.73334C5.82417 7.85125 5.66708 7.91625 5.5 7.91625Z" fill="black"></path></g><defs><clipPath id="clip0_277_10"><rect width="10" height="10" fill="white" transform="translate(0.5)"></rect></clipPath></defs></svg>								<span class="elementor-screen-only">Open Products</span>
							</span>
						</button>
									</div>
									<div class="e-n-menu-content">
						<div id="e-n-menu-content-1311" data-tab-index="1" aria-labelledby="e-n-menu-dropdown-icon-1311" class="elementor-element elementor-element-f83dd99 e-flex e-con-boxed e-con e-child" data-id="f83dd99" data-element_type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
					<div class="e-con-inner">
		<div class="elementor-element elementor-element-e4c2fec e-con-full e-flex e-con e-child" data-id="e4c2fec" data-element_type="container" id="nav-products-desktop">
				<div class="elementor-element elementor-element-dbe43d6 elementor-widget__width-inherit elementor-widget elementor-widget-html" data-id="dbe43d6" data-element_type="widget" data-widget_type="html.default">
				<div class="elementor-widget-container">
			<style>
.prodnav {
	width: 100%;
	display: flex;
	align-items: flex-start;
	justify-content: space-between;
}
.prodnav__title {
	width: 100%;
	font-size: 20px;
	font-weight: 500;
}
.prodnav__products {
	width: 600px;
	display: flex;
	flex-direction: column;
	gap: 32px;
}
.prodnav__products_all {
	width: 100%;
	display: grid;
	grid-template-columns: repeat(2, 1fr);
  	gap: 60px;
}
.prodnav__products_all a {
	position: relative;
	border-radius: 16px;
	transition: transform 200ms ease-in-out;
}
.prodnav__products_all a:hover {
	color: #019ace;
	transform: translateX(10px);
}
.prodnav__products_all a:hover .more {
	text-decoration: underline;
}
.prodnav__products_all strong {
	display: block;
	font-size: 16px;
	margin-bottom: 5px;
}
.prodnav__products_all .desc {
	color: #002840;
	font-size: 14px;
}
.prodnav__products_all .more {
	font-size: 14px;
	margin-top: 5px;
}
.prodnav__products_all .new {
	position: absolute;
	top: -28px;
	left: 0;
	display: flex;
	align-items: center;
	color: #002840;
	font-size: 12px;
	font-weight: 500;
	line-height: 1.5;
	border-radius: 30px;
	background: #ffd500;
	padding: 1px 10px 0 7px;
}
.prodnav__products_all .new svg {
	position: relative;
	top: -1px;
	left: -1px;
}
.prodnav__channels {
	width: 450px;
}
.prodnav__channels .prodnav__title {
	margin-bottom: 28px;
}
.prodnav__channels a {
	width: 100%;
	display: block;
	color: #002840;
	font-size: 14px;
	margin-bottom: 10px;
}
.prodnav__channels a {
	width: 100%;
	display: block;
	color: #002840;
	margin-bottom: 10px;
	transition: color 200ms ease-in-out, transform 200ms ease-in-out;
}
.prodnav__channels a:hover {
	color: #019ace;
	transform: translateX(5px);
}
.prodnav__channels svg {
	position: relative;
    top: 4px;
    width: 20px;
    height: 20px;
    margin-right: 7px;
}
.prodnav__channels svg path {
	fill: #99a9b3;
}
.elementor-heading-title {
    padding: 0;
    margin: 0;
    line-height: 1
}

.elementor-widget-heading .elementor-heading-title[class*=elementor-size-]>a {
    color: inherit;
    font-size: inherit;
    line-height: inherit
}

.elementor-widget-heading .elementor-heading-title.elementor-size-small {
    font-size: 15px
}

.elementor-widget-heading .elementor-heading-title.elementor-size-medium {
    font-size: 19px
}

.elementor-widget-heading .elementor-heading-title.elementor-size-large {
    font-size: 29px
}

.elementor-widget-heading .elementor-heading-title.elementor-size-xl {
    font-size: 39px
}

.elementor-widget-heading .elementor-heading-title.elementor-size-xxl {
    font-size: 59px
}
</style>

<div class="prodnav">
	<div class="prodnav__products">
		<div class="prodnav__title">Products</div>
		<div class="prodnav__products_all">
			<a href="/en/products/engagement">
				<strong>Autonomous Marketing</strong>
				<p class="desc">AI-powered marketing automation that personalizes, automates, and converts.</p>
				<p class="more">Learn more</p>
			</a>
			<a href="/en/products/genai-product-discovery">
				<strong>Autonomous Search</strong>
				<p class="desc">AI-native commerce search that maximizes revenue per visitor.</p>
				<p class="more">Learn more</p>
			</a>
			<a target="_blank" href="https://www.bloomreach.com/en/products/clarity">
				<div class="new"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none"><path d="M7.91141 19.501C7.44041 19.501 7.01641 19.24 6.80641 18.819C6.67041 18.546 6.63941 18.234 6.72041 17.941L7.77341 14.077L4.92741 11.23C4.69441 10.997 4.56641 10.687 4.56641 10.358C4.56641 10.028 4.69441 9.718 4.92841 9.485C5.12941 9.284 5.39641 9.157 5.68041 9.13L9.09441 8.788L10.8984 5.181C11.1094 4.761 11.5324 4.5 12.0034 4.5C12.1944 4.5 12.3854 4.545 12.5564 4.631C12.7934 4.75 12.9894 4.947 13.1074 5.184L14.9104 8.79L18.3254 9.132C19.0014 9.198 19.4974 9.803 19.4314 10.48C19.4034 10.765 19.2764 11.032 19.0754 11.233L16.2314 14.077L17.2854 17.94C17.3714 18.26 17.3284 18.593 17.1644 18.879C16.9994 19.166 16.7334 19.37 16.4154 19.456C16.3114 19.485 16.2024 19.499 16.0924 19.499C15.9024 19.499 15.7124 19.454 15.5434 19.37L12.0024 17.599L8.46241 19.371C8.28841 19.457 8.10341 19.501 7.91141 19.501Z" fill="#002840"></path></svg> New</div>
				<strong>Conversational Shopping</strong>
				<p class="desc">AI-driven shopping conversations that scale your best sales associate.</p>
				<p class="more">Learn more</p>
			</a>
			<a href="/en/integrations">
				<strong>Integrations</strong>
				<p class="desc">160+ integrations to make your job easier and more effective. Find yours.</p>
				<p class="more">Browse integrations</p>
			</a>
		</div>
	</div>
	<div class="prodnav__channels">
		<div class="prodnav__title">Channels</div>
		<a href="/en/products/engagement/email-marketing" class="prodnav__ch">
			<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewBox="0 0 16 16">
			  <defs>
			    <clipPath id="clip-web_email_mktg">
			      <rect width="16" height="16"></rect>
			    </clipPath>
			  </defs>
			  <g id="web_email_mktg" data-name="web_email mktg" clip-path="url(#clip-web_email_mktg)">
			    <g id="email-action-unread" transform="translate(-0.754 -1.868)">
			      <path id="Path_3152" data-name="Path 3152" d="M2.35,15.736a1.6,1.6,0,0,1-1.6-1.6V5.6a1.579,1.579,0,0,1,.338-.981L1.1,4.6,1.12,4.58A1.6,1.6,0,0,1,2.35,4h12.8a1.6,1.6,0,0,1,1.231.579A.169.169,0,0,1,16.4,4.6l.013.019a1.58,1.58,0,0,1,.338.98v8.535a1.6,1.6,0,0,1-1.6,1.6Zm-.534-1.6a.534.534,0,0,0,.534.534h12.8a.534.534,0,0,0,.534-.534V5.822L10.512,9.8a2.888,2.888,0,0,1-3.519,0L1.817,5.822ZM7.642,8.956a1.82,1.82,0,0,0,2.218,0l5.058-3.89H2.584Z" transform="translate(0 0)" fill="none"></path>
			    </g>
			  </g>
			</svg>
			Email Marketing
		</a>
		<a href="/en/products/engagement/web-personalization" class="prodnav__ch">
			<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewBox="0 0 16 16">
			  <defs>
			    <clipPath id="clip-web_web_personalization">
			      <rect width="16" height="16"></rect>
			    </clipPath>
			  </defs>
			  <g id="web_web_personalization" data-name="web_web personalization" clip-path="url(#clip-web_web_personalization)">
			    <g id="browser-page-layout" transform="translate(-0.754 -0.97)">
			      <path id="Path_3170" data-name="Path 3170" d="M2.35,16.44a1.6,1.6,0,0,1-1.6-1.6V3.1a1.6,1.6,0,0,1,1.6-1.6H15.158a1.6,1.6,0,0,1,1.6,1.6V14.84a1.6,1.6,0,0,1-1.6,1.6Zm12.807-1.072a.534.534,0,0,0,.534-.534V11.1H7.154v4.264ZM1.818,14.84a.534.534,0,0,0,.534.534H6.088V5.768H1.818Zm13.869-4.8V5.768H7.154v4.268Zm0-5.336V3.1a.534.534,0,0,0-.534-.534H2.35a.534.534,0,0,0-.533.534v1.6Z" transform="translate(0 0)" fill="none"></path>
			    </g>
			  </g>
			</svg>
			Web Personalization
		</a>
		<a href="/en/products/genai-product-discovery/search-intelligence" class="prodnav__ch">
			<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewBox="0 0 16 16">
			  <defs>
			    <clipPath id="clip-web_search_apis">
			      <rect width="16" height="16"></rect>
			    </clipPath>
			  </defs>
			  <g id="web_search_apis" data-name="web_search apis" clip-path="url(#clip-web_search_apis)">
			    <g id="app-window-search-1" transform="translate(-0.013)">
			      <path id="Path_3140" data-name="Path 3140" d="M1.509,14a1.5,1.5,0,0,1-1.5-1.5V1.5A1.5,1.5,0,0,1,1.509,0h12a1.5,1.5,0,0,1,1.5,1.5V5.5a.5.5,0,0,1-1,0v-1.5h-13v8.5a.5.5,0,0,0,.5.5h4a.5.5,0,1,1,0,1ZM14.01,3v-1.5a.5.5,0,0,0-.5-.5h-12a.5.5,0,0,0-.5.5V3Z" fill="none"></path>
			      <path id="Path_3141" data-name="Path 3141" d="M18.759,19.254a.5.5,0,0,1-.353-.147l-2.194-2.194a4,4,0,1,1,.707-.707L19.113,18.4a.5.5,0,0,1-.354.854Zm-5-8.5a3,3,0,1,0,3,3,3,3,0,0,0-3-3Z" transform="translate(-3.249 -3.254)" fill="none"></path>
			    </g>
			  </g>
			</svg>
			Ecommerce Search
		</a>
		<a href="/en/products/genai-product-discovery/categories" class="prodnav__ch">
			<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewBox="0 0 16 16">
			  <defs>
			    <clipPath id="clip-web_merch">
			      <rect width="16" height="16"></rect>
			    </clipPath>
			  </defs>
			  <g id="web_merch" clip-path="url(#clip-web_merch)">
			    <g id="phone-action-cart" transform="translate(-9.607 -0.2)">
			      <path id="Path_3198" data-name="Path 3198" d="M13.29,12.235a1.556,1.556,0,0,1-1.428-.942l-.013-.033L9.728,5.327a1.557,1.557,0,0,1,1.439-2.153h12.4l.941-2.6a.566.566,0,0,1,1.063.387L24.5,3.922l-.008.022-2.642,7.268A1.566,1.566,0,0,1,20.4,12.239ZM12.9,10.86a.426.426,0,0,0,.386.245H20.4a.428.428,0,0,0,.394-.281L23.159,4.3H11.166a.426.426,0,0,0-.391.594l.013.033Z" transform="translate(0 0)" fill="none"></path>
			      <path id="Path_3200" data-name="Path 3200" d="M13.67,12.822a1.061,1.061,0,1,1,1.061-1.061A1.061,1.061,0,0,1,13.67,12.822Z" transform="translate(0.965 3.378)" fill="none"></path>
			      <path id="Path_3202" data-name="Path 3202" d="M17.42,12.822a1.061,1.061,0,1,1,1.061-1.061A1.061,1.061,0,0,1,17.42,12.822Z" transform="translate(2.172 3.378)" fill="none"></path>
			    </g>
			  </g>
			</svg>
			Ecommerce Categories
		</a>
		<a href="/en/products/engagement/mobile-app-marketing" class="prodnav__ch">
			<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewBox="0 0 16 16">
			  <defs>
			    <clipPath id="clip-web_mobile_app">
			      <rect width="16" height="16"></rect>
			    </clipPath>
			  </defs>
			  <g id="web_mobile_app" data-name="web_mobile app" clip-path="url(#clip-web_mobile_app)">
			    <g id="mobile-phone" transform="translate(-1.5)">
			      <path id="Path_3155" data-name="Path 3155" d="M7,16a2.5,2.5,0,0,1-2.5-2.5V2.5A2.5,2.5,0,0,1,7,0h5a2.5,2.5,0,0,1,2.5,2.5v11A2.5,2.5,0,0,1,12,16ZM5.5,13.5A1.5,1.5,0,0,0,7,15h5a1.5,1.5,0,0,0,1.5-1.5V13h-8Zm8-1.5V2.5A1.5,1.5,0,0,0,12,1H7A1.5,1.5,0,0,0,5.5,2.5V12Z" fill="none"></path>
			    </g>
			  </g>
			</svg>
			Mobile App
		</a>
		<a href="/en/products/genai-product-discovery/product-recommendations" class="prodnav__ch">
			<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewBox="0 0 16 16">
			  <defs>
			    <clipPath id="clip-web_product_recs">
			      <rect width="16" height="16"></rect>
			    </clipPath>
			  </defs>
			  <g id="web_product_recs" data-name="web_product recs" clip-path="url(#clip-web_product_recs)">
			    <g id="rating-star" transform="translate(-0.001)">
			      <path id="Path_3142" data-name="Path 3142" d="M12.595,16a1.048,1.048,0,0,1-.468-.112L8,13.845,3.875,15.887a1.026,1.026,0,0,1-.464.11A1.042,1.042,0,0,1,2.4,14.689l1.234-4.48L.308,6.913a1.037,1.037,0,0,1,.644-1.77l4.012-.4L7.067.576A1.033,1.033,0,0,1,8.476.12,1.035,1.035,0,0,1,8.93.574L11.038,4.75l4.02.4a1.036,1.036,0,0,1,.636,1.768l-3.326,3.291L13.6,14.684a1.045,1.045,0,0,1-.739,1.279,1.088,1.088,0,0,1-.267.037ZM8,12.787a.5.5,0,0,1,.222.053l4.352,2.154a.047.047,0,0,0,.021.006c.033-.007.047-.031.041-.053l-1.308-4.753a.5.5,0,0,1,.13-.488l3.533-3.5A.036.036,0,0,0,15,6.182a.038.038,0,0,0-.033-.04l-4.3-.425a.5.5,0,0,1-.4-.272L8.04,1.027a.048.048,0,0,0-.019-.019.043.043,0,0,0-.021,0c-.027.006-.035.013-.041.025L5.733,5.442a.5.5,0,0,1-.4.272l-4.288.425a.044.044,0,0,0-.031.011A.035.035,0,0,0,1,6.176a.033.033,0,0,0,.011.025L4.547,9.7a.5.5,0,0,1,.13.488L3.368,14.949a.041.041,0,0,0,0,.026A.044.044,0,0,0,3.405,15a.04.04,0,0,0,.018,0L7.778,12.84A.506.506,0,0,1,8,12.787Z" transform="translate(0)" fill="none"></path>
			    </g>
			  </g>
			</svg>
			Product Recommendations
		</a>
		<a href="/en/products/engagement/sms-messaging" class="prodnav__ch">
			<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewBox="0 0 16 16">
			  <defs>
			    <clipPath id="clip-web_sms-messaging">
			      <rect width="16" height="16"></rect>
			    </clipPath>
			  </defs>
			  <g id="web_sms-messaging" clip-path="url(#clip-web_sms-messaging)">
			    <g id="phone-chatting" transform="translate(0.25)">
			      <path id="Path_3153" data-name="Path 3153" d="M6.071,16a2.324,2.324,0,0,1-2.322-2.32V6.227L3.518,6H2.829A2.081,2.081,0,0,1,.75,3.922V2.079A2.081,2.081,0,0,1,2.829,0H7.171A2.081,2.081,0,0,1,9.25,2.079V3.921A2.082,2.082,0,0,1,7.171,6H6.25V7.5a.5.5,0,0,1-.852.356l-.65-.64V12h7V8.722L10.6,9.856A.5.5,0,0,1,9.748,9.5V8H9.327a2.085,2.085,0,0,1-1.468-.618.5.5,0,1,1,.709-.7A1.077,1.077,0,0,0,9.327,7h.923a.5.5,0,0,1,.5.5v.8l1.172-1.156A.5.5,0,0,1,12.274,7h1.4a1.081,1.081,0,0,0,1.079-1.079V3.583A1.081,1.081,0,0,0,13.67,2.5H11.249a.5.5,0,1,1,0-1H13.67a2.082,2.082,0,0,1,2.078,2.079V5.921A2.082,2.082,0,0,1,13.67,8H12.75v4.483a.226.226,0,0,1,0,.035v1.161A2.324,2.324,0,0,1,10.426,16ZM4.75,13.679A1.323,1.323,0,0,0,6.071,15h4.356a1.324,1.324,0,0,0,1.322-1.321V13h-7ZM2.829,1A1.081,1.081,0,0,0,1.75,2.079V3.921A1.08,1.08,0,0,0,2.828,5h.9a.5.5,0,0,1,.352.144L5.251,6.3V5.5a.5.5,0,0,1,.5-.5H7.173A1.081,1.081,0,0,0,8.251,3.921V2.079A1.081,1.081,0,0,0,7.171,1Z" transform="translate(0)" fill="none"></path>
			      <circle id="Ellipse_87" data-name="Ellipse 87" cx="0.75" cy="0.75" r="0.75" transform="translate(9.75 4)" fill="none"></circle>
			      <circle id="Ellipse_88" data-name="Ellipse 88" cx="0.75" cy="0.75" r="0.75" transform="translate(12.25 4)" fill="none"></circle>
			      <circle id="Ellipse_89" data-name="Ellipse 89" cx="0.75" cy="0.75" r="0.75" transform="translate(5.583 2.5)" fill="none"></circle>
			      <path id="Path_3154" data-name="Path 3154" d="M4.745,5.25a.749.749,0,0,1-.076-1.5.561.561,0,0,1,.076,0h.083a.749.749,0,0,1-.083,1.5Z" transform="translate(-1.081 -1.25)" fill="none"></path>
			    </g>
			  </g>
			</svg>
			SMS, RCS &amp; WhatsApp
		</a>
		<a href="/en/products/engagement/ads-retargeting" class="prodnav__ch">
			<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewBox="0 0 16 16">
			  <defs>
			    <clipPath id="clip-web_ads-retargeting">
			      <rect width="16" height="16"></rect>
			    </clipPath>
			  </defs>
			  <g id="web_ads-retargeting" clip-path="url(#clip-web_ads-retargeting)">
			    <g id="ads-retargeting" transform="translate(0.5 0.5)">
			      <path id="Path_3156" data-name="Path 3156" d="M4.217,12.279a1.411,1.411,0,0,1-1.325-.942H1.4A1.412,1.412,0,0,1,0,9.924V2.362A1.412,1.412,0,0,1,1.4.942H2.888A1.411,1.411,0,0,1,4.217,0h6.559A1.411,1.411,0,0,1,12.1.942h1.486a1.412,1.412,0,0,1,1.4,1.413V9.911a.467.467,0,1,1-.935,0V2.362a.469.469,0,0,0-.467-.471h-1.4V8.475a.467.467,0,1,1-.935,0V1.413a.469.469,0,0,0-.467-.471H4.217a.469.469,0,0,0-.467.471v9.449a.469.469,0,0,0,.467.471H8.8a.471.471,0,0,1,0,.942ZM1.4,1.889a.469.469,0,0,0-.467.471V9.916a.469.469,0,0,0,.467.471H2.8v-8.5Z" transform="translate(0)" fill="none"></path>
			      <path id="Path_3157" data-name="Path 3157" d="M7.952,4.657a.452.452,0,0,1,0-.9h4.532a.452.452,0,1,1,0,.9Z" transform="translate(-2.722 -1.401)" fill="none"></path>
			      <path id="Path_3158" data-name="Path 3158" d="M7.952,8.4a.452.452,0,0,1,0-.9h4.532a.452.452,0,0,1,0,.9Z" transform="translate(-2.722 -2.803)" fill="none"></path>
			      <path id="Path_3159" data-name="Path 3159" d="M7.952,12.157a.452.452,0,1,1,0-.9H9.764a.452.452,0,1,1,0,.9Z" transform="translate(-2.779 -4.205)" fill="none"></path>
			      <path id="Path_3160" data-name="Path 3160" d="M20.224,20.677a.452.452,0,0,1-.32-.133l-1.192-1.192-.662,1.1a.452.452,0,0,1-.389.221h-.04a.452.452,0,0,1-.383-.289l-1.6-4.165a.452.452,0,0,1,.586-.586l4.168,1.6a.452.452,0,0,1,.07.813l-1.1.662,1.192,1.192a.452.452,0,0,1-.321.774Zm-2.474-1.483.484-.805a.433.433,0,0,1,.063-.082l.01-.01a.437.437,0,0,1,.083-.063l.805-.484-2.35-.9Z" transform="translate(-5.685 -5.68)" fill="none"></path>
			    </g>
			  </g>
			</svg>
			Ad Optimization
		</a>
		<a href="/en/products/engagement/experiments-ab-testing" class="prodnav__ch">
			<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewBox="0 0 16 16">
			  <defs>
			    <clipPath id="clip-web_ab_test">
			      <rect width="16" height="16"></rect>
			    </clipPath>
			  </defs>
			  <g id="web_ab_test" data-name="web_ab test" clip-path="url(#clip-web_ab_test)">
			    <g id="experiments_ab-testing_icon" transform="translate(-975.001 -522.932)">
			      <path id="Path_5" data-name="Path 5" d="M10.718,16.747a1.6,1.6,0,0,1-1.6-1.6V2.347a1.6,1.6,0,0,1,1.6-1.6H14.9a1.6,1.6,0,0,1,1.6,1.6v12.8a1.6,1.6,0,0,1-1.6,1.6Z" transform="translate(974.502 522.185)" fill="none"></path>
			      <path id="Path_6" data-name="Path 6" d="M10.718,16.747a1.6,1.6,0,0,1-1.6-1.6V2.347a1.6,1.6,0,0,1,1.6-1.6H14.9a1.6,1.6,0,0,1,1.6,1.6v12.8a1.6,1.6,0,0,1-1.6,1.6ZM14.9,15.68a.534.534,0,0,0,.534-.534V2.347a.534.534,0,0,0-.534-.534H11.119V15.681ZM10.718,1.814a.534.534,0,0,0-.534.534v12.8a.534.534,0,0,0,.534.534h.4V1.814Z" transform="translate(965.883 522.185)" fill="none"></path>
			    </g>
			  </g>
			</svg>
			A/B Testing &amp; Optimization
		</a>
	</div>
</div>		</div>
				</div>
				</div>
		<a class="elementor-element elementor-element-4527e2a e-con-full loomi_btn e-flex e-con e-child" data-id="4527e2a" data-element_type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}" data-category="products_loomi" href="/en/products/loomi">
		<div class="elementor-element elementor-element-b4e5f91 e-con-full loomi_btn_inner e-flex e-con e-child" data-id="b4e5f91" data-element_type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
		<div class="elementor-element elementor-element-9c144ad e-con-full e-flex e-con e-child" data-id="9c144ad" data-element_type="container">
				<div class="elementor-element elementor-element-97f0297 elementor-widget__width-initial elementor-widget elementor-widget-image" data-id="97f0297" data-element_type="widget" data-widget_type="image.default">
				<div class="elementor-widget-container">
			<style>/*! elementor - v3.23.0 - 05-08-2024 */
.elementor-widget-image{text-align:center}.elementor-widget-image a{display:inline-block}.elementor-widget-image a img[src$=".svg"]{width:48px}.elementor-widget-image img{vertical-align:middle;display:inline-block}</style>										<img width="34" height="35" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%2034%2035'%3E%3C/svg%3E" class="attachment-full size-full wp-image-213" alt="bloomreach-icon" data-lazy-src="https://www.bloomreach.com/wp-content/uploads/2024/04/bloomreach-icon.svg" /><noscript><img width="34" height="35" src="https://www.bloomreach.com/wp-content/uploads/2024/04/bloomreach-icon.svg" class="attachment-full size-full wp-image-213" alt="bloomreach-icon" /></noscript>													</div>
				</div>
		<div class="elementor-element elementor-element-496a588 e-con-full e-flex e-con e-child" data-id="496a588" data-element_type="container">
				<div class="elementor-element elementor-element-81fa4cb elementor-widget elementor-widget-heading" data-id="81fa4cb" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<style>/*! elementor - v3.23.0 - 05-08-2024 */
.elementor-heading-title{padding:0;margin:0;line-height:1}.elementor-widget-heading .elementor-heading-title[class*=elementor-size-]>a{color:inherit;font-size:inherit;line-height:inherit}.elementor-widget-heading .elementor-heading-title.elementor-size-small{font-size:15px}.elementor-widget-heading .elementor-heading-title.elementor-size-medium{font-size:19px}.elementor-widget-heading .elementor-heading-title.elementor-size-large{font-size:29px}.elementor-widget-heading .elementor-heading-title.elementor-size-xl{font-size:39px}.elementor-widget-heading .elementor-heading-title.elementor-size-xxl{font-size:59px}</style><div class="elementor-heading-title elementor-size-default">Powered by</div>		</div>
				</div>
				<div class="elementor-element elementor-element-2f0601c elementor-widget elementor-widget-heading" data-id="2f0601c" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<div class="elementor-heading-title elementor-size-default">Loomi</div>		</div>
				</div>
				</div>
				</div>
		<div class="elementor-element elementor-element-ec37875 e-con-full e-flex e-con e-child" data-id="ec37875" data-element_type="container">
				<div class="elementor-element elementor-element-c65d75c elementor-widget elementor-widget-heading" data-id="c65d75c" data-element_type="widget" id="nav-loomi-ai" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<div class="elementor-heading-title elementor-size-default">Experience AI built for growth</div>		</div>
				</div>
				<div class="elementor-element elementor-element-18eec86 elementor-widget__width-initial elementor-view-default elementor-widget elementor-widget-icon" data-id="18eec86" data-element_type="widget" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"><path d="M20.4375 13.2031L13.5625 19.7656C13.1719 20.1172 12.5859 20.1172 12.2344 19.7266C11.8828 19.3359 11.8828 18.75 12.2734 18.3984L17.4688 13.4375H4.1875C3.64062 13.4375 3.25 13.0469 3.25 12.5C3.25 11.9922 3.64062 11.5625 4.1875 11.5625H17.4688L12.2734 6.64062C11.8828 6.28906 11.8828 5.66406 12.2344 5.3125C12.5859 4.92188 13.2109 4.92188 13.5625 5.27344L20.4375 11.8359C20.6328 12.0312 20.75 12.2656 20.75 12.5C20.75 12.7734 20.6328 13.0078 20.4375 13.2031Z" fill="#0EB4DE"></path></svg>			</div>
		</div>
				</div>
				</div>
				</div>
				</div>
				</a>
					</div>
				</div>
							</div>
							</li>
					<li class="e-n-menu-item">
				<div id="e-n-menu-title-1312" class="e-n-menu-title">
					<div class="e-n-menu-title-container">												<span class="e-n-menu-title-text">
							Solutions						</span>
					</div>											<button id="e-n-menu-dropdown-icon-1312" class="e-n-menu-dropdown-icon e-focus" data-tab-index="2" aria-haspopup="true" aria-expanded="false" aria-controls="e-n-menu-content-1312" >
							<span class="e-n-menu-dropdown-icon-opened">
																<span class="elementor-screen-only">Close Solutions</span>
							</span>
							<span class="e-n-menu-dropdown-icon-closed">
								<svg xmlns="http://www.w3.org/2000/svg" width="11" height="10" viewBox="0 0 11 10" fill="none"><g clip-path="url(#clip0_277_10)"><path d="M5.5 7.91625C5.33333 7.91625 5.17667 7.85125 5.05875 7.73375L0.591667 3.26709C0.5325 3.20792 0.5 3.12959 0.5 3.04584C0.5 2.9625 0.5325 2.88375 0.591667 2.825C0.650833 2.76584 0.729167 2.73334 0.8125 2.73334C0.895833 2.73334 0.974583 2.76584 1.03333 2.825L5.5 7.29125L9.96667 2.825C10.0258 2.76584 10.1042 2.73334 10.1875 2.73334C10.2708 2.73334 10.3496 2.76584 10.4083 2.825C10.4675 2.88417 10.5 2.9625 10.5 3.04584C10.5 3.12917 10.4675 3.20792 10.4083 3.26667L5.94167 7.73334C5.82417 7.85125 5.66708 7.91625 5.5 7.91625Z" fill="black"></path></g><defs><clipPath id="clip0_277_10"><rect width="10" height="10" fill="white" transform="translate(0.5)"></rect></clipPath></defs></svg>								<span class="elementor-screen-only">Open Solutions</span>
							</span>
						</button>
									</div>
									<div class="e-n-menu-content">
						<div id="e-n-menu-content-1312" data-tab-index="2" aria-labelledby="e-n-menu-dropdown-icon-1312" class="elementor-element elementor-element-825c20b e-flex e-con-boxed e-con e-child" data-id="825c20b" data-element_type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
					<div class="e-con-inner">
		<div class="elementor-element elementor-element-38fd954 e-con-full e-flex e-con e-child" data-id="38fd954" data-element_type="container" data-category="solutions_other">
		<a class="elementor-element elementor-element-989ef04 e-con-full menu_box e-flex e-con e-child" data-id="989ef04" data-element_type="container" href="/en/integrations">
		<div class="elementor-element elementor-element-c71ac6c e-con-full e-flex e-con e-child" data-id="c71ac6c" data-element_type="container">
				<div class="elementor-element elementor-element-381eb4c elementor-widget__width-inherit elementor-widget elementor-widget-heading" data-id="381eb4c" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<p class="elementor-heading-title elementor-size-default">Integrations</p>		</div>
				</div>
				<div class="elementor-element elementor-element-fa00660 elementor-widget__width-initial elementor-view-default elementor-widget elementor-widget-icon" data-id="fa00660" data-element_type="widget" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none"><path d="M14.25 5C14.6562 5 15 5.34375 15 5.75V13.25C15 13.6875 14.6562 14 14.25 14C13.8125 14 13.5 13.6875 13.5 13.25V7.5625L6.28125 14.7812C5.96875 15.0938 5.5 15.0938 5.21875 14.7812C4.90625 14.5 4.90625 14.0312 5.21875 13.75L12.4375 6.53125H6.75C6.3125 6.53125 6 6.1875 6 5.78125C6 5.34375 6.3125 5.03125 6.75 5.03125H14.25V5Z" fill="#019ACE"></path></svg>			</div>
		</div>
				</div>
				</div>
				</div>
				<div class="elementor-element elementor-element-dc9f043 elementor-widget elementor-widget-text-editor" data-id="dc9f043" data-element_type="widget" data-widget_type="text-editor.default">
				<div class="elementor-widget-container">
			<style>/*! elementor - v3.23.0 - 05-08-2024 */
.elementor-widget-text-editor.elementor-drop-cap-view-stacked .elementor-drop-cap{background-color:#69727d;color:#fff}.elementor-widget-text-editor.elementor-drop-cap-view-framed .elementor-drop-cap{color:#69727d;border:3px solid;background-color:transparent}.elementor-widget-text-editor:not(.elementor-drop-cap-view-default) .elementor-drop-cap{margin-top:8px}.elementor-widget-text-editor:not(.elementor-drop-cap-view-default) .elementor-drop-cap-letter{width:1em;height:1em}.elementor-widget-text-editor .elementor-drop-cap{float:left;text-align:center;line-height:1;font-size:50px}.elementor-widget-text-editor .elementor-drop-cap-letter{display:inline-block}</style>				<p><span data-sheets-root="1" data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;Use our integrations to easily connect and move data between your technologies and systems.&quot;}" data-sheets-userformat="{&quot;2&quot;:4865,&quot;3&quot;:{&quot;1&quot;:0},&quot;11&quot;:4,&quot;12&quot;:0,&quot;15&quot;:&quot;Montserrat&quot;}">Use our integrations to easily connect and move data between your technologies and systems.</span></p>						</div>
				</div>
				</a>
		<a class="elementor-element elementor-element-170ade6 e-con-full menu_box e-flex e-con e-child" data-id="170ade6" data-element_type="container" href="/en/partners/bloomreach-technology-partners">
		<div class="elementor-element elementor-element-b13818f e-con-full e-flex e-con e-child" data-id="b13818f" data-element_type="container">
				<div class="elementor-element elementor-element-b22d762 elementor-widget__width-inherit elementor-widget elementor-widget-heading" data-id="b22d762" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<p class="elementor-heading-title elementor-size-default">Technology Partners</p>		</div>
				</div>
				<div class="elementor-element elementor-element-c0a51b8 elementor-widget__width-initial elementor-view-default elementor-widget elementor-widget-icon" data-id="c0a51b8" data-element_type="widget" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none"><path d="M14.25 5C14.6562 5 15 5.34375 15 5.75V13.25C15 13.6875 14.6562 14 14.25 14C13.8125 14 13.5 13.6875 13.5 13.25V7.5625L6.28125 14.7812C5.96875 15.0938 5.5 15.0938 5.21875 14.7812C4.90625 14.5 4.90625 14.0312 5.21875 13.75L12.4375 6.53125H6.75C6.3125 6.53125 6 6.1875 6 5.78125C6 5.34375 6.3125 5.03125 6.75 5.03125H14.25V5Z" fill="#019ACE"></path></svg>			</div>
		</div>
				</div>
				</div>
				</div>
				<div class="elementor-element elementor-element-7769160 elementor-widget elementor-widget-text-editor" data-id="7769160" data-element_type="widget" data-widget_type="text-editor.default">
				<div class="elementor-widget-container">
							<p><span data-sheets-root="1" data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;With our partnered solutions, you get access to additional services and technologies to solve customer problems.&quot;}" data-sheets-userformat="{&quot;2&quot;:4865,&quot;3&quot;:{&quot;1&quot;:0},&quot;11&quot;:4,&quot;12&quot;:0,&quot;15&quot;:&quot;Montserrat&quot;}">With our partnered solutions, you get access to additional services and technologies to solve customer problems.</span></p>						</div>
				</div>
				</a>
		<a class="elementor-element elementor-element-10e89f4 e-con-full menu_box e-flex e-con e-child" data-id="10e89f4" data-element_type="container" href="https://www.bloomreach.com/en/partners">
		<div class="elementor-element elementor-element-0a9f02d e-con-full e-flex e-con e-child" data-id="0a9f02d" data-element_type="container">
				<div class="elementor-element elementor-element-7312aad elementor-widget__width-inherit elementor-widget elementor-widget-heading" data-id="7312aad" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<p class="elementor-heading-title elementor-size-default">Become a Partner</p>		</div>
				</div>
				<div class="elementor-element elementor-element-f0a5371 elementor-widget__width-initial elementor-view-default elementor-widget elementor-widget-icon" data-id="f0a5371" data-element_type="widget" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none"><path d="M14.25 5C14.6562 5 15 5.34375 15 5.75V13.25C15 13.6875 14.6562 14 14.25 14C13.8125 14 13.5 13.6875 13.5 13.25V7.5625L6.28125 14.7812C5.96875 15.0938 5.5 15.0938 5.21875 14.7812C4.90625 14.5 4.90625 14.0312 5.21875 13.75L12.4375 6.53125H6.75C6.3125 6.53125 6 6.1875 6 5.78125C6 5.34375 6.3125 5.03125 6.75 5.03125H14.25V5Z" fill="#019ACE"></path></svg>			</div>
		</div>
				</div>
				</div>
				</div>
				<div class="elementor-element elementor-element-d50daaa elementor-widget elementor-widget-text-editor" data-id="d50daaa" data-element_type="widget" data-widget_type="text-editor.default">
				<div class="elementor-widget-container">
							<p><span data-sheets-root="1" data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;Bloomreach is the leader in ecommerce personalization solutions — join our partner ecosystem to unlock limitless potential.&quot;}" data-sheets-userformat="{&quot;2&quot;:4865,&quot;3&quot;:{&quot;1&quot;:0},&quot;11&quot;:4,&quot;12&quot;:0,&quot;15&quot;:&quot;Montserrat&quot;}">Bloomreach is the leader in ecommerce personalization solutions — join our partner ecosystem to unlock limitless potential.</span></p>						</div>
				</div>
				</a>
				</div>
				<div class="elementor-element elementor-element-4102b8c elementor-widget__width-initial elementor-widget elementor-widget-html" data-id="4102b8c" data-element_type="widget" data-widget_type="html.default">
				<div class="elementor-widget-container">
			<div class="megamenu_devider"></div>		</div>
				</div>
		<div class="elementor-element elementor-element-d650528 e-con-full e-flex e-con e-child" data-id="d650528" data-element_type="container" data-category="solutions_industries">
				<div class="elementor-element elementor-element-c25d62a elementor-widget elementor-widget-heading" data-id="c25d62a" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<p class="elementor-heading-title elementor-size-default">For Industries</p>		</div>
				</div>
				<div class="elementor-element elementor-element-e1a059e elementor-nav-menu--dropdown-none wp_menu elementor-widget elementor-widget-nav-menu" data-id="e1a059e" data-element_type="widget" data-settings="{&quot;layout&quot;:&quot;vertical&quot;,&quot;submenu_icon&quot;:{&quot;value&quot;:&quot;&lt;i class=\&quot;\&quot;&gt;&lt;\/i&gt;&quot;,&quot;library&quot;:&quot;&quot;}}" data-widget_type="nav-menu.default">
				<div class="elementor-widget-container">
			<link rel="stylesheet" href="https://www.bloomreach.com/wp-content/plugins/elementor-pro/assets/css/widget-nav-menu.min.css?ver=1728985997">			<nav aria-label="Menu" class="elementor-nav-menu--main elementor-nav-menu__container elementor-nav-menu--layout-vertical e--pointer-none">
				<ul id="menu-1-e1a059e" class="elementor-nav-menu sm-vertical"><li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-753"><a href="/en/industries/retail" class="elementor-item">Retail &#038; Brands</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-754"><a href="/en/industries/travel-hospitality" class="elementor-item">Travel &#038; Hospitality</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-755"><a href="/en/industries/food-beverage" class="elementor-item">Food &#038; Beverage</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-756"><a href="/en/industries/financial-services" class="elementor-item">Financial Services</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-757"><a href="/en/industries/b2b" class="elementor-item">B2B</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-54274"><a href="/en/industries/igaming" class="elementor-item">iGaming</a></li>
</ul>			</nav>
						<nav class="elementor-nav-menu--dropdown elementor-nav-menu__container" aria-hidden="true">
				<ul id="menu-2-e1a059e" class="elementor-nav-menu sm-vertical"><li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-753"><a href="/en/industries/retail" class="elementor-item" tabindex="-1">Retail &#038; Brands</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-754"><a href="/en/industries/travel-hospitality" class="elementor-item" tabindex="-1">Travel &#038; Hospitality</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-755"><a href="/en/industries/food-beverage" class="elementor-item" tabindex="-1">Food &#038; Beverage</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-756"><a href="/en/industries/financial-services" class="elementor-item" tabindex="-1">Financial Services</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-757"><a href="/en/industries/b2b" class="elementor-item" tabindex="-1">B2B</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-54274"><a href="/en/industries/igaming" class="elementor-item" tabindex="-1">iGaming</a></li>
</ul>			</nav>
				</div>
				</div>
				</div>
		<div class="elementor-element elementor-element-4df620d e-con-full e-flex e-con e-child" data-id="4df620d" data-element_type="container" data-category="solutions_customers">
				<div class="elementor-element elementor-element-16f0017 elementor-widget elementor-widget-heading" data-id="16f0017" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<p class="elementor-heading-title elementor-size-default">For Customers</p>		</div>
				</div>
				<div class="elementor-element elementor-element-b74b63d elementor-nav-menu--dropdown-none wp_menu elementor-widget elementor-widget-nav-menu" data-id="b74b63d" data-element_type="widget" data-settings="{&quot;layout&quot;:&quot;vertical&quot;,&quot;submenu_icon&quot;:{&quot;value&quot;:&quot;&lt;i class=\&quot;\&quot;&gt;&lt;\/i&gt;&quot;,&quot;library&quot;:&quot;&quot;}}" data-widget_type="nav-menu.default">
				<div class="elementor-widget-container">
						<nav aria-label="Menu" class="elementor-nav-menu--main elementor-nav-menu__container elementor-nav-menu--layout-vertical e--pointer-none">
				<ul id="menu-1-b74b63d" class="elementor-nav-menu sm-vertical"><li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-758"><a href="https://academy.bloomreach.com/" class="elementor-item">Bloomreach Academy</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-760"><a href="/en/library/use-cases" class="elementor-item">Use Case Library</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-759"><a href="/en/products/engagement/plug-and-play" class="elementor-item">Plug &#038; Play Library</a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-32988"><a href="https://www.bloomreach.com/en/bloomreach-experience-strategy-group" class="elementor-item">Experience Strategy Group</a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-32989"><a href="https://www.bloomreach.com/en/privacy-at-bloomreach" class="elementor-item">Privacy at Bloomreach</a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-32990"><a href="https://www.bloomreach.com/en/security-at-bloomreach" class="elementor-item">Security at Bloomreach</a></li>
</ul>			</nav>
						<nav class="elementor-nav-menu--dropdown elementor-nav-menu__container" aria-hidden="true">
				<ul id="menu-2-b74b63d" class="elementor-nav-menu sm-vertical"><li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-758"><a href="https://academy.bloomreach.com/" class="elementor-item" tabindex="-1">Bloomreach Academy</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-760"><a href="/en/library/use-cases" class="elementor-item" tabindex="-1">Use Case Library</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-759"><a href="/en/products/engagement/plug-and-play" class="elementor-item" tabindex="-1">Plug &#038; Play Library</a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-32988"><a href="https://www.bloomreach.com/en/bloomreach-experience-strategy-group" class="elementor-item" tabindex="-1">Experience Strategy Group</a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-32989"><a href="https://www.bloomreach.com/en/privacy-at-bloomreach" class="elementor-item" tabindex="-1">Privacy at Bloomreach</a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-32990"><a href="https://www.bloomreach.com/en/security-at-bloomreach" class="elementor-item" tabindex="-1">Security at Bloomreach</a></li>
</ul>			</nav>
				</div>
				</div>
				</div>
		<div class="elementor-element elementor-element-c7da88c e-con-full e-flex e-con e-child" data-id="c7da88c" data-element_type="container" data-category="solutions_getting_started">
				<div class="elementor-element elementor-element-513b0c4 elementor-widget elementor-widget-heading" data-id="513b0c4" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<p class="elementor-heading-title elementor-size-default">For Getting Started</p>		</div>
				</div>
				<div class="elementor-element elementor-element-1f12711 elementor-nav-menu--dropdown-none wp_menu elementor-widget elementor-widget-nav-menu" data-id="1f12711" data-element_type="widget" data-settings="{&quot;layout&quot;:&quot;vertical&quot;,&quot;submenu_icon&quot;:{&quot;value&quot;:&quot;&lt;i class=\&quot;\&quot;&gt;&lt;\/i&gt;&quot;,&quot;library&quot;:&quot;&quot;}}" data-widget_type="nav-menu.default">
				<div class="elementor-widget-container">
						<nav aria-label="Menu" class="elementor-nav-menu--main elementor-nav-menu__container elementor-nav-menu--layout-vertical e--pointer-none">
				<ul id="menu-1-1f12711" class="elementor-nav-menu sm-vertical"><li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-765"><a href="https://documentation.bloomreach.com" class="elementor-item">Documentation</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-766"><a href="/en/library/calculators" class="elementor-item">Calculators</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-767"><a href="https://academy.bloomreach.com/" class="elementor-item">Upcoming Free Courses</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-45328"><a href="https://www.bloomreach.com/en/products/tours" class="elementor-item">Product Tours (NEW!)<span class="menu-icon" ><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"><path d="M7.91141 19.501C7.44041 19.501 7.01641 19.24 6.80641 18.819C6.67041 18.546 6.63941 18.234 6.72041 17.941L7.77341 14.077L4.92741 11.23C4.69441 10.997 4.56641 10.687 4.56641 10.358C4.56641 10.028 4.69441 9.718 4.92841 9.485C5.12941 9.284 5.39641 9.157 5.68041 9.13L9.09441 8.788L10.8984 5.181C11.1094 4.761 11.5324 4.5 12.0034 4.5C12.1944 4.5 12.3854 4.545 12.5564 4.631C12.7934 4.75 12.9894 4.947 13.1074 5.184L14.9104 8.79L18.3254 9.132C19.0014 9.198 19.4974 9.803 19.4314 10.48C19.4034 10.765 19.2764 11.032 19.0754 11.233L16.2314 14.077L17.2854 17.94C17.3714 18.26 17.3284 18.593 17.1644 18.879C16.9994 19.166 16.7334 19.37 16.4154 19.456C16.3114 19.485 16.2024 19.499 16.0924 19.499C15.9024 19.499 15.7124 19.454 15.5434 19.37L12.0024 17.599L8.46241 19.371C8.28841 19.457 8.10341 19.501 7.91141 19.501Z" fill="#FFD500"></path></svg></span></a></li>
</ul>			</nav>
						<nav class="elementor-nav-menu--dropdown elementor-nav-menu__container" aria-hidden="true">
				<ul id="menu-2-1f12711" class="elementor-nav-menu sm-vertical"><li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-765"><a href="https://documentation.bloomreach.com" class="elementor-item" tabindex="-1">Documentation</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-766"><a href="/en/library/calculators" class="elementor-item" tabindex="-1">Calculators</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-767"><a href="https://academy.bloomreach.com/" class="elementor-item" tabindex="-1">Upcoming Free Courses</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-45328"><a href="https://www.bloomreach.com/en/products/tours" class="elementor-item" tabindex="-1">Product Tours (NEW!)<span class="menu-icon" ><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"><path d="M7.91141 19.501C7.44041 19.501 7.01641 19.24 6.80641 18.819C6.67041 18.546 6.63941 18.234 6.72041 17.941L7.77341 14.077L4.92741 11.23C4.69441 10.997 4.56641 10.687 4.56641 10.358C4.56641 10.028 4.69441 9.718 4.92841 9.485C5.12941 9.284 5.39641 9.157 5.68041 9.13L9.09441 8.788L10.8984 5.181C11.1094 4.761 11.5324 4.5 12.0034 4.5C12.1944 4.5 12.3854 4.545 12.5564 4.631C12.7934 4.75 12.9894 4.947 13.1074 5.184L14.9104 8.79L18.3254 9.132C19.0014 9.198 19.4974 9.803 19.4314 10.48C19.4034 10.765 19.2764 11.032 19.0754 11.233L16.2314 14.077L17.2854 17.94C17.3714 18.26 17.3284 18.593 17.1644 18.879C16.9994 19.166 16.7334 19.37 16.4154 19.456C16.3114 19.485 16.2024 19.499 16.0924 19.499C15.9024 19.499 15.7124 19.454 15.5434 19.37L12.0024 17.599L8.46241 19.371C8.28841 19.457 8.10341 19.501 7.91141 19.501Z" fill="#FFD500"></path></svg></span></a></li>
</ul>			</nav>
				</div>
				</div>
				</div>
					</div>
				</div>
							</div>
							</li>
					<li class="e-n-menu-item">
				<div id="e-n-menu-title-1313" class="e-n-menu-title">
					<div class="e-n-menu-title-container">												<span class="e-n-menu-title-text">
							Resources						</span>
					</div>											<button id="e-n-menu-dropdown-icon-1313" class="e-n-menu-dropdown-icon e-focus" data-tab-index="3" aria-haspopup="true" aria-expanded="false" aria-controls="e-n-menu-content-1313" >
							<span class="e-n-menu-dropdown-icon-opened">
																<span class="elementor-screen-only">Close Resources</span>
							</span>
							<span class="e-n-menu-dropdown-icon-closed">
								<svg xmlns="http://www.w3.org/2000/svg" width="11" height="10" viewBox="0 0 11 10" fill="none"><g clip-path="url(#clip0_277_10)"><path d="M5.5 7.91625C5.33333 7.91625 5.17667 7.85125 5.05875 7.73375L0.591667 3.26709C0.5325 3.20792 0.5 3.12959 0.5 3.04584C0.5 2.9625 0.5325 2.88375 0.591667 2.825C0.650833 2.76584 0.729167 2.73334 0.8125 2.73334C0.895833 2.73334 0.974583 2.76584 1.03333 2.825L5.5 7.29125L9.96667 2.825C10.0258 2.76584 10.1042 2.73334 10.1875 2.73334C10.2708 2.73334 10.3496 2.76584 10.4083 2.825C10.4675 2.88417 10.5 2.9625 10.5 3.04584C10.5 3.12917 10.4675 3.20792 10.4083 3.26667L5.94167 7.73334C5.82417 7.85125 5.66708 7.91625 5.5 7.91625Z" fill="black"></path></g><defs><clipPath id="clip0_277_10"><rect width="10" height="10" fill="white" transform="translate(0.5)"></rect></clipPath></defs></svg>								<span class="elementor-screen-only">Open Resources</span>
							</span>
						</button>
									</div>
									<div class="e-n-menu-content">
						<div id="e-n-menu-content-1313" data-tab-index="3" aria-labelledby="e-n-menu-dropdown-icon-1313" class="elementor-element elementor-element-eef0a54 e-flex e-con-boxed e-con e-child" data-id="eef0a54" data-element_type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
					<div class="e-con-inner">
		<div class="elementor-element elementor-element-03221fe e-con-full e-flex e-con e-child" data-id="03221fe" data-element_type="container" data-category="resources_case_studies">
				<div class="elementor-element elementor-element-b96850a elementor-widget elementor-widget-heading" data-id="b96850a" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<p class="elementor-heading-title elementor-size-default">Case Studies</p>		</div>
				</div>
				<div class="elementor-element elementor-element-ab08a62 elementor-nav-menu--dropdown-none wp_menu elementor-widget elementor-widget-nav-menu" data-id="ab08a62" data-element_type="widget" data-settings="{&quot;layout&quot;:&quot;vertical&quot;,&quot;submenu_icon&quot;:{&quot;value&quot;:&quot;&lt;i class=\&quot;\&quot;&gt;&lt;\/i&gt;&quot;,&quot;library&quot;:&quot;&quot;}}" data-widget_type="nav-menu.default">
				<div class="elementor-widget-container">
						<nav aria-label="Menu" class="elementor-nav-menu--main elementor-nav-menu__container elementor-nav-menu--layout-vertical e--pointer-none">
				<ul id="menu-1-ab08a62" class="elementor-nav-menu sm-vertical"><li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-768"><a href="/en/case-studies?industry=retail&#038;filter=true" class="elementor-item">Retail &#038; Brands</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-769"><a href="/en/case-studies?industry=travel-and-hospitality&#038;filter=true" class="elementor-item">Travel &#038; Hospitality</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-770"><a href="/en/case-studies?industry=food-and-beverage&#038;filter=true" class="elementor-item">Food &#038; Beverage</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-771"><a href="/en/case-studies?industry=fintech-and-telco&#038;filter=true" class="elementor-item">Fintech &#038; Telco</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-41541"><a href="/en/case-studies?industry=b2b&#038;filter=true" class="elementor-item">B2B</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-773"><a href="/en/case-studies" class="elementor-item">View All Case Studies</a></li>
</ul>			</nav>
						<nav class="elementor-nav-menu--dropdown elementor-nav-menu__container" aria-hidden="true">
				<ul id="menu-2-ab08a62" class="elementor-nav-menu sm-vertical"><li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-768"><a href="/en/case-studies?industry=retail&#038;filter=true" class="elementor-item" tabindex="-1">Retail &#038; Brands</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-769"><a href="/en/case-studies?industry=travel-and-hospitality&#038;filter=true" class="elementor-item" tabindex="-1">Travel &#038; Hospitality</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-770"><a href="/en/case-studies?industry=food-and-beverage&#038;filter=true" class="elementor-item" tabindex="-1">Food &#038; Beverage</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-771"><a href="/en/case-studies?industry=fintech-and-telco&#038;filter=true" class="elementor-item" tabindex="-1">Fintech &#038; Telco</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-41541"><a href="/en/case-studies?industry=b2b&#038;filter=true" class="elementor-item" tabindex="-1">B2B</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-773"><a href="/en/case-studies" class="elementor-item" tabindex="-1">View All Case Studies</a></li>
</ul>			</nav>
				</div>
				</div>
				</div>
		<div class="elementor-element elementor-element-d1bde78 e-con-full e-flex e-con e-child" data-id="d1bde78" data-element_type="container" data-category="resources_optimize">
				<div class="elementor-element elementor-element-231b9eb elementor-widget elementor-widget-heading" data-id="231b9eb" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<p class="elementor-heading-title elementor-size-default">Optimize Performance</p>		</div>
				</div>
				<div class="elementor-element elementor-element-fd05d21 elementor-nav-menu--dropdown-none wp_menu elementor-widget elementor-widget-nav-menu" data-id="fd05d21" data-element_type="widget" data-settings="{&quot;layout&quot;:&quot;vertical&quot;,&quot;submenu_icon&quot;:{&quot;value&quot;:&quot;&lt;i class=\&quot;\&quot;&gt;&lt;\/i&gt;&quot;,&quot;library&quot;:&quot;&quot;}}" data-widget_type="nav-menu.default">
				<div class="elementor-widget-container">
						<nav aria-label="Menu" class="elementor-nav-menu--main elementor-nav-menu__container elementor-nav-menu--layout-vertical e--pointer-none">
				<ul id="menu-1-fd05d21" class="elementor-nav-menu sm-vertical"><li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-774"><a href="/en/topic/ai" class="elementor-item">Leverage Al</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-777"><a href="/en/topic/profitability" class="elementor-item">Increase Profitability</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-775"><a href="/en/topic/personalization" class="elementor-item">Ecommerce Personalization</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-776"><a href="/en/topic/retention-loyalty" class="elementor-item">Retention and Loyalty</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-778"><a href="/en/topic/acquisition" class="elementor-item">Acquire More Customers</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-779"><a href="/en/topic/customer-data" class="elementor-item">Understand Customer Data</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-780"><a href="/en/topic/grow-aov" class="elementor-item">Grow AOV</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-781"><a href="/en/library" class="elementor-item">View More</a></li>
</ul>			</nav>
						<nav class="elementor-nav-menu--dropdown elementor-nav-menu__container" aria-hidden="true">
				<ul id="menu-2-fd05d21" class="elementor-nav-menu sm-vertical"><li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-774"><a href="/en/topic/ai" class="elementor-item" tabindex="-1">Leverage Al</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-777"><a href="/en/topic/profitability" class="elementor-item" tabindex="-1">Increase Profitability</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-775"><a href="/en/topic/personalization" class="elementor-item" tabindex="-1">Ecommerce Personalization</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-776"><a href="/en/topic/retention-loyalty" class="elementor-item" tabindex="-1">Retention and Loyalty</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-778"><a href="/en/topic/acquisition" class="elementor-item" tabindex="-1">Acquire More Customers</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-779"><a href="/en/topic/customer-data" class="elementor-item" tabindex="-1">Understand Customer Data</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-780"><a href="/en/topic/grow-aov" class="elementor-item" tabindex="-1">Grow AOV</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-781"><a href="/en/library" class="elementor-item" tabindex="-1">View More</a></li>
</ul>			</nav>
				</div>
				</div>
				</div>
		<div class="elementor-element elementor-element-bcfecec e-con-full e-flex e-con e-child" data-id="bcfecec" data-element_type="container" data-category="resources_insights">
				<div class="elementor-element elementor-element-39bb18f elementor-widget elementor-widget-heading" data-id="39bb18f" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<p class="elementor-heading-title elementor-size-default">Get Expert Insights</p>		</div>
				</div>
				<div class="elementor-element elementor-element-aa8a585 elementor-nav-menu--dropdown-none wp_menu elementor-widget elementor-widget-nav-menu" data-id="aa8a585" data-element_type="widget" data-settings="{&quot;layout&quot;:&quot;vertical&quot;,&quot;submenu_icon&quot;:{&quot;value&quot;:&quot;&lt;i class=\&quot;\&quot;&gt;&lt;\/i&gt;&quot;,&quot;library&quot;:&quot;&quot;}}" data-widget_type="nav-menu.default">
				<div class="elementor-widget-container">
						<nav aria-label="Menu" class="elementor-nav-menu--main elementor-nav-menu__container elementor-nav-menu--layout-vertical e--pointer-none">
				<ul id="menu-1-aa8a585" class="elementor-nav-menu sm-vertical"><li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-782"><a href="/en/blog" class="elementor-item">Blog</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-783"><a href="/en/library/podcasts" class="elementor-item">Podcasts</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-43922"><a href="/en/library/events" class="elementor-item">Events</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-784"><a href="/en/library/analyst-reports" class="elementor-item">Analyst Reports</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-785"><a href="/en/library/webinars" class="elementor-item">Upcoming Webinars</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-786"><a href="/en/bloomreach-experience-strategy-group" class="elementor-item">Experience Strategy Group</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-55651"><a href="/en/exclusive-insights-from-bloomreach" class="elementor-item">Exclusive Insights from Bloomreach</a></li>
</ul>			</nav>
						<nav class="elementor-nav-menu--dropdown elementor-nav-menu__container" aria-hidden="true">
				<ul id="menu-2-aa8a585" class="elementor-nav-menu sm-vertical"><li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-782"><a href="/en/blog" class="elementor-item" tabindex="-1">Blog</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-783"><a href="/en/library/podcasts" class="elementor-item" tabindex="-1">Podcasts</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-43922"><a href="/en/library/events" class="elementor-item" tabindex="-1">Events</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-784"><a href="/en/library/analyst-reports" class="elementor-item" tabindex="-1">Analyst Reports</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-785"><a href="/en/library/webinars" class="elementor-item" tabindex="-1">Upcoming Webinars</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-786"><a href="/en/bloomreach-experience-strategy-group" class="elementor-item" tabindex="-1">Experience Strategy Group</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-55651"><a href="/en/exclusive-insights-from-bloomreach" class="elementor-item" tabindex="-1">Exclusive Insights from Bloomreach</a></li>
</ul>			</nav>
				</div>
				</div>
				</div>
				<div class="elementor-element elementor-element-2003ad6 elementor-widget__width-initial elementor-widget elementor-widget-html" data-id="2003ad6" data-element_type="widget" data-widget_type="html.default">
				<div class="elementor-widget-container">
			<div class="megamenu_devider"></div>		</div>
				</div>
		<div class="elementor-element elementor-element-9cadf02 e-con-full e-flex e-con e-child" data-id="9cadf02" data-element_type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}" data-category="resources_promo">
				<div class="elementor-element elementor-element-7297179 elementor-widget elementor-widget-image" data-id="7297179" data-element_type="widget" data-widget_type="image.default">
				<div class="elementor-widget-container">
													<img width="424" height="300" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20424%20300'%3E%3C/svg%3E" class="attachment-full size-full wp-image-56978" alt="loyalty-nav-promo" data-lazy-srcset="https://www.bloomreach.com/wp-content/uploads/2024/04/loyalty-nav-promo.jpg 424w, https://www.bloomreach.com/wp-content/uploads/2024/04/loyalty-nav-promo-300x212.jpg 300w" data-lazy-sizes="(max-width: 424px) 100vw, 424px" data-lazy-src="https://www.bloomreach.com/wp-content/uploads/2024/04/loyalty-nav-promo.jpg" /><noscript><img width="424" height="300" src="https://www.bloomreach.com/wp-content/uploads/2024/04/loyalty-nav-promo.jpg" class="attachment-full size-full wp-image-56978" alt="loyalty-nav-promo" srcset="https://www.bloomreach.com/wp-content/uploads/2024/04/loyalty-nav-promo.jpg 424w, https://www.bloomreach.com/wp-content/uploads/2024/04/loyalty-nav-promo-300x212.jpg 300w" sizes="(max-width: 424px) 100vw, 424px" /></noscript>													</div>
				</div>
		<div class="elementor-element elementor-element-8a7f4ac e-con-full e-flex e-con e-child" data-id="8a7f4ac" data-element_type="container">
				<div class="elementor-element elementor-element-f416c61 elementor-widget__width-inherit elementor-widget elementor-widget-heading" data-id="f416c61" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<p class="elementor-heading-title elementor-size-default">Bring Customer Loyalty Back in Style</p>		</div>
				</div>
				<div class="elementor-element elementor-element-578c605 elementor-widget elementor-widget-text-editor" data-id="578c605" data-element_type="widget" data-widget_type="text-editor.default">
				<div class="elementor-widget-container">
							<p>Engage. Retain. Grow.</p>						</div>
				</div>
				</div>
				<div class="elementor-element elementor-element-72536ba button_blue elementor-widget elementor-widget-button" data-id="72536ba" data-element_type="widget" data-widget_type="button.default">
				<div class="elementor-widget-container">
					<div class="elementor-button-wrapper">
			<a class="elementor-button elementor-button-link elementor-size-sm" href="/en/winning-playbook-for-loyalty" target="_blank">
						<span class="elementor-button-content-wrapper">
									<span class="elementor-button-text">Get the Report</span>
					</span>
					</a>
		</div>
				</div>
				</div>
				</div>
					</div>
				</div>
							</div>
							</li>
					<li class="e-n-menu-item">
				<div id="e-n-menu-title-1314" class="e-n-menu-title">
					<div class="e-n-menu-title-container">												<span class="e-n-menu-title-text">
							Pricing						</span>
					</div>											<button id="e-n-menu-dropdown-icon-1314" class="e-n-menu-dropdown-icon e-focus" data-tab-index="4" aria-haspopup="true" aria-expanded="false" aria-controls="e-n-menu-content-1314" >
							<span class="e-n-menu-dropdown-icon-opened">
																<span class="elementor-screen-only">Close Pricing</span>
							</span>
							<span class="e-n-menu-dropdown-icon-closed">
								<svg xmlns="http://www.w3.org/2000/svg" width="11" height="10" viewBox="0 0 11 10" fill="none"><g clip-path="url(#clip0_277_10)"><path d="M5.5 7.91625C5.33333 7.91625 5.17667 7.85125 5.05875 7.73375L0.591667 3.26709C0.5325 3.20792 0.5 3.12959 0.5 3.04584C0.5 2.9625 0.5325 2.88375 0.591667 2.825C0.650833 2.76584 0.729167 2.73334 0.8125 2.73334C0.895833 2.73334 0.974583 2.76584 1.03333 2.825L5.5 7.29125L9.96667 2.825C10.0258 2.76584 10.1042 2.73334 10.1875 2.73334C10.2708 2.73334 10.3496 2.76584 10.4083 2.825C10.4675 2.88417 10.5 2.9625 10.5 3.04584C10.5 3.12917 10.4675 3.20792 10.4083 3.26667L5.94167 7.73334C5.82417 7.85125 5.66708 7.91625 5.5 7.91625Z" fill="black"></path></g><defs><clipPath id="clip0_277_10"><rect width="10" height="10" fill="white" transform="translate(0.5)"></rect></clipPath></defs></svg>								<span class="elementor-screen-only">Open Pricing</span>
							</span>
						</button>
									</div>
									<div class="e-n-menu-content">
						<div id="e-n-menu-content-1314" data-tab-index="4" aria-labelledby="e-n-menu-dropdown-icon-1314" class="elementor-element elementor-element-ab70fb1 nav-pricing-desktop e-flex e-con-boxed e-con e-child" data-id="ab70fb1" data-element_type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
					<div class="e-con-inner">
				<div class="elementor-element elementor-element-4200d5a elementor-widget__width-inherit elementor-widget elementor-widget-html" data-id="4200d5a" data-element_type="widget" data-widget_type="html.default">
				<div class="elementor-widget-container">
			<style>
.pricenav {
	width: 100%;
	display: flex;
	align-items: flex-start;
	justify-content: space-between;
}
.pricenav__title {
	width: 100%;
	font-size: 20px;
	font-weight: 500;
}
.pricenav__products {
	width: 600px;
	display: flex;
	flex-direction: column;
	gap: 32px;
}
.pricenav__products_all {
	width: 100%;
	display: grid;
	grid-template-columns: repeat(2, 1fr);
  	gap: 60px;
}
.pricenav__products_all a {
	position: relative;
	border-radius: 16px;
	transition: transform 200ms ease-in-out;
}
.pricenav__products_all a:hover {
	color: #019ace;
	transform: translateX(10px);
}
.pricenav__products_all a:hover .more {
	text-decoration: underline;
}
.pricenav__products_all strong {
	display: block;
	font-size: 16px;
	margin-bottom: 5px;
}
.pricenav__products_all .desc {
	color: #002840;
	font-size: 14px;
}
.pricenav__products_all .more {
	font-size: 14px;
	margin-top: 5px;
}
.pricenav__products_all .new {
	position: absolute;
	top: -28px;
	left: 0;
	display: flex;
	align-items: center;
	color: #002840;
	font-size: 12px;
	font-weight: 500;
	line-height: 1.5;
	border-radius: 30px;
	background: #ffd500;
	padding: 1px 10px 0 7px;
}
.pricenav__products_all .new svg {
	position: relative;
	top: -1px;
	left: -1px;
}
.pricenav__channels {
	width: 450px;
}
.pricenav__channels .pricenav__title {
	margin-bottom: 28px;
}
.pricenav__channels a {
	width: 100%;
	display: block;
	color: #002840;
	font-size: 14px;
	margin-bottom: 10px;
}
.pricenav__channels a {
	width: 100%;
	display: block;
	color: #002840;
	margin-bottom: 10px;
	transition: color 200ms ease-in-out, transform 200ms ease-in-out;
}
.pricenav__channels a:hover {
	color: #019ace;
	transform: translateX(5px);
}
.pricenav__channels svg {
	position: relative;
    top: 4px;
    width: 20px;
    height: 20px;
    margin-right: 7px;
}
.pricenav__channels svg path {
	fill: #99a9b3;
}
</style>

<div class="pricenav">
	<div class="pricenav__products">
		<div class="pricenav__title">Pricing Packages</div>
		<div class="pricenav__products_all">
			<a href="/en/pricing">
				<strong>View All Packages</strong>
				<p class="desc">Find the package that’s best suited to your business needs.</p>
				<p class="more">View Packages</p>
			</a>
			<a href="/en/pricing/engagement">
				<strong>Autonomous Marketing</strong>
				<p class="desc">Get started with a single channel or the entire platform.</p>
				<p class="more">Get Pricing</p>
			</a>
			<a target="_blank" href="/en/pricing/discovery">
				<strong>Autonomous Search</strong>
				<p class="desc">Get started with a site search or adopt full product discovery suit.</p>
				<p class="more">Get Pricing</p>
			</a>
			<a href="/en/pricing/clarity">
				<div class="new"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none"><path d="M7.91141 19.501C7.44041 19.501 7.01641 19.24 6.80641 18.819C6.67041 18.546 6.63941 18.234 6.72041 17.941L7.77341 14.077L4.92741 11.23C4.69441 10.997 4.56641 10.687 4.56641 10.358C4.56641 10.028 4.69441 9.718 4.92841 9.485C5.12941 9.284 5.39641 9.157 5.68041 9.13L9.09441 8.788L10.8984 5.181C11.1094 4.761 11.5324 4.5 12.0034 4.5C12.1944 4.5 12.3854 4.545 12.5564 4.631C12.7934 4.75 12.9894 4.947 13.1074 5.184L14.9104 8.79L18.3254 9.132C19.0014 9.198 19.4974 9.803 19.4314 10.48C19.4034 10.765 19.2764 11.032 19.0754 11.233L16.2314 14.077L17.2854 17.94C17.3714 18.26 17.3284 18.593 17.1644 18.879C16.9994 19.166 16.7334 19.37 16.4154 19.456C16.3114 19.485 16.2024 19.499 16.0924 19.499C15.9024 19.499 15.7124 19.454 15.5434 19.37L12.0024 17.599L8.46241 19.371C8.28841 19.457 8.10341 19.501 7.91141 19.501Z" fill="#002840"></path></svg> New</div>
				<strong>Conversational Shopping</strong>
				<p class="desc">Start with AI Shopping Assistant or combine it with our products.</p>
				<p class="more">Get Pricing</p>
			</a>
		</div>
	</div>
	<div class="pricenav__channels">
		<div class="pricenav__title">Validate Our Impact</div>
		<a href="/en/request-demo" class="pricenav__ch">
			<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewBox="0 0 16 16">
			  <defs>
			    <clipPath id="clip-web_email_mktg">
			      <rect width="16" height="16"></rect>
			    </clipPath>
			  </defs>
			  <g id="web_email_mktg" data-name="web_email mktg" clip-path="url(#clip-web_email_mktg)">
			    <g id="email-action-unread" transform="translate(-0.754 -1.868)">
			      <path id="Path_3152" data-name="Path 3152" d="M2.35,15.736a1.6,1.6,0,0,1-1.6-1.6V5.6a1.579,1.579,0,0,1,.338-.981L1.1,4.6,1.12,4.58A1.6,1.6,0,0,1,2.35,4h12.8a1.6,1.6,0,0,1,1.231.579A.169.169,0,0,1,16.4,4.6l.013.019a1.58,1.58,0,0,1,.338.98v8.535a1.6,1.6,0,0,1-1.6,1.6Zm-.534-1.6a.534.534,0,0,0,.534.534h12.8a.534.534,0,0,0,.534-.534V5.822L10.512,9.8a2.888,2.888,0,0,1-3.519,0L1.817,5.822ZM7.642,8.956a1.82,1.82,0,0,0,2.218,0l5.058-3.89H2.584Z" transform="translate(0 0)" fill="none"></path>
			    </g>
			  </g>
			</svg>
			Request 30-min Demo
		</a>
		<a href="/en/case-studies" class="pricenav__ch">
			<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewBox="0 0 16 16">
			  <defs>
			    <clipPath id="clip-web_web_personalization">
			      <rect width="16" height="16"></rect>
			    </clipPath>
			  </defs>
			  <g id="web_web_personalization" data-name="web_web personalization" clip-path="url(#clip-web_web_personalization)">
			    <g id="browser-page-layout" transform="translate(-0.754 -0.97)">
			      <path id="Path_3170" data-name="Path 3170" d="M2.35,16.44a1.6,1.6,0,0,1-1.6-1.6V3.1a1.6,1.6,0,0,1,1.6-1.6H15.158a1.6,1.6,0,0,1,1.6,1.6V14.84a1.6,1.6,0,0,1-1.6,1.6Zm12.807-1.072a.534.534,0,0,0,.534-.534V11.1H7.154v4.264ZM1.818,14.84a.534.534,0,0,0,.534.534H6.088V5.768H1.818Zm13.869-4.8V5.768H7.154v4.268Zm0-5.336V3.1a.534.534,0,0,0-.534-.534H2.35a.534.534,0,0,0-.533.534v1.6Z" transform="translate(0 0)" fill="none"></path>
			    </g>
			  </g>
			</svg>
			Case Studies
		</a>
	</div>
</div>		</div>
				</div>
					</div>
				</div>
							</div>
							</li>
					<li class="e-n-menu-item">
				<div id="e-n-menu-title-1315" class="e-n-menu-title">
					<div class="e-n-menu-title-container">												<span class="e-n-menu-title-text">
							About Us						</span>
					</div>											<button id="e-n-menu-dropdown-icon-1315" class="e-n-menu-dropdown-icon e-focus" data-tab-index="5" aria-haspopup="true" aria-expanded="false" aria-controls="e-n-menu-content-1315" >
							<span class="e-n-menu-dropdown-icon-opened">
																<span class="elementor-screen-only">Close About Us</span>
							</span>
							<span class="e-n-menu-dropdown-icon-closed">
								<svg xmlns="http://www.w3.org/2000/svg" width="11" height="10" viewBox="0 0 11 10" fill="none"><g clip-path="url(#clip0_277_10)"><path d="M5.5 7.91625C5.33333 7.91625 5.17667 7.85125 5.05875 7.73375L0.591667 3.26709C0.5325 3.20792 0.5 3.12959 0.5 3.04584C0.5 2.9625 0.5325 2.88375 0.591667 2.825C0.650833 2.76584 0.729167 2.73334 0.8125 2.73334C0.895833 2.73334 0.974583 2.76584 1.03333 2.825L5.5 7.29125L9.96667 2.825C10.0258 2.76584 10.1042 2.73334 10.1875 2.73334C10.2708 2.73334 10.3496 2.76584 10.4083 2.825C10.4675 2.88417 10.5 2.9625 10.5 3.04584C10.5 3.12917 10.4675 3.20792 10.4083 3.26667L5.94167 7.73334C5.82417 7.85125 5.66708 7.91625 5.5 7.91625Z" fill="black"></path></g><defs><clipPath id="clip0_277_10"><rect width="10" height="10" fill="white" transform="translate(0.5)"></rect></clipPath></defs></svg>								<span class="elementor-screen-only">Open About Us</span>
							</span>
						</button>
									</div>
									<div class="e-n-menu-content">
						<div id="e-n-menu-content-1315" data-tab-index="5" aria-labelledby="e-n-menu-dropdown-icon-1315" class="elementor-element elementor-element-7c5a906 e-flex e-con-boxed e-con e-child" data-id="7c5a906" data-element_type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
					<div class="e-con-inner">
		<div class="elementor-element elementor-element-fdde501 e-con-full e-flex e-con e-child" data-id="fdde501" data-element_type="container" data-category="about_bloomreach">
				<div class="elementor-element elementor-element-4ae73d9 elementor-widget elementor-widget-heading" data-id="4ae73d9" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<p class="elementor-heading-title elementor-size-default">About Bloomreach</p>		</div>
				</div>
				<div class="elementor-element elementor-element-7e97a99 elementor-nav-menu--dropdown-none wp_menu elementor-widget elementor-widget-nav-menu" data-id="7e97a99" data-element_type="widget" data-settings="{&quot;layout&quot;:&quot;vertical&quot;,&quot;submenu_icon&quot;:{&quot;value&quot;:&quot;&lt;i class=\&quot;\&quot;&gt;&lt;\/i&gt;&quot;,&quot;library&quot;:&quot;&quot;}}" data-widget_type="nav-menu.default">
				<div class="elementor-widget-container">
						<nav aria-label="Menu" class="elementor-nav-menu--main elementor-nav-menu__container elementor-nav-menu--layout-vertical e--pointer-none">
				<ul id="menu-1-7e97a99" class="elementor-nav-menu sm-vertical"><li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-793"><a href="/en/about-us" class="elementor-item">Our Story</a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-32973"><a href="https://www.bloomreach.com/en/about-us/leadership-team" class="elementor-item">Leadership Team</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-55278"><a href="/en/about-us/impact" class="elementor-item">ESG at Bloomreach</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-60652"><a href="/en/about-us/compliance" class="elementor-item">Compliance</a></li>
<li class="add-careers-counter menu-item menu-item-type-custom menu-item-object-custom menu-item-791"><a href="/en/careers" class="elementor-item">Careers</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-794"><a href="/en/contact-us" class="elementor-item">Contact Us</a></li>
</ul>			</nav>
						<nav class="elementor-nav-menu--dropdown elementor-nav-menu__container" aria-hidden="true">
				<ul id="menu-2-7e97a99" class="elementor-nav-menu sm-vertical"><li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-793"><a href="/en/about-us" class="elementor-item" tabindex="-1">Our Story</a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-32973"><a href="https://www.bloomreach.com/en/about-us/leadership-team" class="elementor-item" tabindex="-1">Leadership Team</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-55278"><a href="/en/about-us/impact" class="elementor-item" tabindex="-1">ESG at Bloomreach</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-60652"><a href="/en/about-us/compliance" class="elementor-item" tabindex="-1">Compliance</a></li>
<li class="add-careers-counter menu-item menu-item-type-custom menu-item-object-custom menu-item-791"><a href="/en/careers" class="elementor-item" tabindex="-1">Careers</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-794"><a href="/en/contact-us" class="elementor-item" tabindex="-1">Contact Us</a></li>
</ul>			</nav>
				</div>
				</div>
				</div>
		<div class="elementor-element elementor-element-b0fb510 e-con-full e-flex e-con e-child" data-id="b0fb510" data-element_type="container" data-category="about_innovation">
				<div class="elementor-element elementor-element-4354d51 elementor-widget elementor-widget-heading" data-id="4354d51" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<p class="elementor-heading-title elementor-size-default">Innovation Hub</p>		</div>
				</div>
				<div class="elementor-element elementor-element-192207d elementor-nav-menu--dropdown-none wp_menu elementor-widget elementor-widget-nav-menu" data-id="192207d" data-element_type="widget" data-settings="{&quot;layout&quot;:&quot;vertical&quot;,&quot;submenu_icon&quot;:{&quot;value&quot;:&quot;&lt;i class=\&quot;\&quot;&gt;&lt;\/i&gt;&quot;,&quot;library&quot;:&quot;&quot;}}" data-widget_type="nav-menu.default">
				<div class="elementor-widget-container">
						<nav aria-label="Menu" class="elementor-nav-menu--main elementor-nav-menu__container elementor-nav-menu--layout-vertical e--pointer-none">
				<ul id="menu-1-192207d" class="elementor-nav-menu sm-vertical"><li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-796"><a href="/en/products/engagement/roadmap" class="elementor-item">What’s New in Marketing Automation</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-797"><a href="/en/products/discovery/whats-new" class="elementor-item">What’s New in Product Discovery</a></li>
</ul>			</nav>
						<nav class="elementor-nav-menu--dropdown elementor-nav-menu__container" aria-hidden="true">
				<ul id="menu-2-192207d" class="elementor-nav-menu sm-vertical"><li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-796"><a href="/en/products/engagement/roadmap" class="elementor-item" tabindex="-1">What’s New in Marketing Automation</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-797"><a href="/en/products/discovery/whats-new" class="elementor-item" tabindex="-1">What’s New in Product Discovery</a></li>
</ul>			</nav>
				</div>
				</div>
				</div>
				<div class="elementor-element elementor-element-d804730 elementor-widget__width-initial elementor-widget elementor-widget-html" data-id="d804730" data-element_type="widget" data-widget_type="html.default">
				<div class="elementor-widget-container">
			<div class="megamenu_devider"></div>		</div>
				</div>
		<div class="elementor-element elementor-element-2e5cf1d e-con-full e-flex e-con e-child" data-id="2e5cf1d" data-element_type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}" data-category="about_promo">
				<div class="elementor-element elementor-element-47123da elementor-widget-mobile__width-inherit elementor-widget__width-initial elementor-widget elementor-widget-vidyard_widget" data-id="47123da" data-element_type="widget" data-widget_type="vidyard_widget.default">
				<div class="elementor-widget-container">
			<img style="width: 100%; margin: auto; display: block;" class="vidyard-player-embed" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%200%200'%3E%3C/svg%3E" data-uuid="Gk9PzrUHP6hoFCoUsWQ3dJ" data-v="4" data-type="lightbox" data-lazy-src="https://play.vidyard.com/Gk9PzrUHP6hoFCoUsWQ3dJ.jpg"/><noscript><img style="width: 100%; margin: auto; display: block;" class="vidyard-player-embed" src="https://play.vidyard.com/Gk9PzrUHP6hoFCoUsWQ3dJ.jpg" data-uuid="Gk9PzrUHP6hoFCoUsWQ3dJ" data-v="4" data-type="lightbox"/></noscript><script type="rocketlazyloadscript">window.vidyardEmbed.api.renderDOMPlayers()</script>		</div>
				</div>
		<div class="elementor-element elementor-element-892d654 e-con-full e-flex e-con e-child" data-id="892d654" data-element_type="container">
				<div class="elementor-element elementor-element-6d5f0dc elementor-widget__width-inherit elementor-widget elementor-widget-heading" data-id="6d5f0dc" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<p class="elementor-heading-title elementor-size-default">Our CEO's Vision for AI in Ecommerce</p>		</div>
				</div>
				<div class="elementor-element elementor-element-23437d8 elementor-widget elementor-widget-text-editor" data-id="23437d8" data-element_type="widget" data-widget_type="text-editor.default">
				<div class="elementor-widget-container">
							<p>Watch Raj, our CEO, discuss the future of AI-powered online shopping at the New York Stock Exchange.</p>						</div>
				</div>
				</div>
				</div>
					</div>
				</div>
							</div>
							</li>
						</ul>
			</div>
		</nav>
				</div>
				</div>
		<div class="elementor-element elementor-element-629c839 e-con-full e-flex e-con e-child" data-id="629c839" data-element_type="container">
				<div class="elementor-element elementor-element-1eb9c3d elementor-nav-menu--dropdown-none elementor-hidden-tablet elementor-hidden-mobile lang_switch_menu elementor-widget elementor-widget-nav-menu" data-id="1eb9c3d" data-element_type="widget" data-settings="{&quot;layout&quot;:&quot;horizontal&quot;,&quot;submenu_icon&quot;:{&quot;value&quot;:&quot;&lt;i class=\&quot;fas fa-caret-down\&quot;&gt;&lt;\/i&gt;&quot;,&quot;library&quot;:&quot;fa-solid&quot;}}" data-widget_type="nav-menu.default">
				<div class="elementor-widget-container">
						<nav aria-label="Menu" class="elementor-nav-menu--main elementor-nav-menu__container elementor-nav-menu--layout-horizontal e--pointer-none">
				<ul id="menu-1-1eb9c3d" class="elementor-nav-menu"><li class="login_dropdown menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-341"><a class="elementor-item">Login</a>
<ul class="sub-menu elementor-nav-menu--dropdown">
	<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-35932"><a href="https://tools.bloomreach.com/login" class="elementor-sub-item">Content / Discovery<span class="menu-icon" ><svg width="36" height="16" viewBox="0 0 36 16" fill="none" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
<g clip-path="url(#clip0_1148_5414)">
<rect width="16" height="16" fill="url(#pattern0_1148_5414)"/>
<rect x="20" width="16" height="16" fill="url(#pattern1_1148_5414)"/>
</g>
<defs>
<pattern id="pattern0_1148_5414" patternContentUnits="objectBoundingBox" width="1" height="1">
<use xlink:href="#image0_1148_5414" transform="scale(0.00714286)"/>
</pattern>
<pattern id="pattern1_1148_5414" patternContentUnits="objectBoundingBox" width="1" height="1">
<use xlink:href="#image1_1148_5414" transform="scale(0.00714286)"/>
</pattern>
<clipPath id="clip0_1148_5414">
<rect width="36" height="16" fill="white"/>
</clipPath>
<image id="image0_1148_5414" width="140" height="140" xlink:href="data:image/png;base64,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"/>
<image id="image1_1148_5414" width="140" height="140" xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAIwAAACMCAYAAACuwEE+AAAAAXNSR0IArs4c6QAAAERlWElmTU0AKgAAAAgAAYdpAAQAAAABAAAAGgAAAAAAA6ABAAMAAAABAAEAAKACAAQAAAABAAAAjKADAAQAAAABAAAAjAAAAAAYZoEnAAAKM0lEQVR4Ae2de3AV1R3Hv0si74s8gk0DMSKvSx4CEnl3jJUWqJQ6bekf/YO2tGPbdBzHPmitpJ0OOlr7R8HRabXjWPtH2xkKU61VEFRsRyggGJBE5TG0BNuopZhESIyG29/ZZMPey9lkN7nJ2d373ZnNOee3Z8/5nc/5zjlnH3djIQtbqg4LpJibZZ+KFCZLWAzLDhNZKJ5FBCfQIv1wRk5rkH5Q4UnZd1ll2B+8qPQzrPSk/5SIZI3kXi37CtkL/J/JnAYJNErdz6pdxLOlL34EEkwqhSGoxxeloo2yz+hLhTwnNASOiScbUIo/WZaMRz4334KREUWNJvfKXu6zbGaLAoEUXpFh4C6rFLv8uNurYLpGlYelsG/5KZB5IkvgIRlt7pDR5mJPLehRMKk3kEAHtkkBy3oqhMdiQiCFHRiGL1nT0ezVIk/BpOpRIlrbLqvspNfJtMeSQD3ysMpK4pSudVrBdI0sB+WE6bqTaIs9gVcxFFW6kWZIZtNlzWLJNLRV7BRLJpzcSc9FO/5oayGjzZcJBnW4T/J8KiMfk7lHYGWXFtJanjYldd2x/UdaDiZym0AKS61yvOxAyBxhNjkHGJKATcCy7711w+gWjFwV3SrWhd1HGCGBTgI3ysyzwoFhC8a+OZdKV5KTgSEJCIEHbI1IpHOEqcdtEi8lGhLwIFAhzxDXqmPOlFTlkZFmEugkkEKVijiCWdlp5V8S8CBgdd5qsWSxu1Aebu/1yEYzCVwiYGHREHlepK6OuJFA7wREK2pKmtN7TuYgAZvAHCWYQsIgAV8ELIylYHyRYqYuAoVD5Nn0WOIgAZ8ERDCQd6y4kYA/AsOUYLiRgG8CFIxvVMyoCFAw1EEgAhRMIFzMTMFQA4EIUDCBcDEzBUMNBCJAwQTCxcz5JhGs3ZzElaM6UDKxzd6vLvjADgvHtZt0y677+SPjsHFLiXE/HAe2/KAOE8d86CSNhUYFs6N2PN5pHqpt/LTC1i4RtWF6USuWJpvwidImbd6BML7ddAVeqg/PU5O29nBMBkYF01NHn2gcAbW7t5FDO7A42Yybys+hqvw9LJ7p+Ztx92l9istXDEK1hcWf0ApG11sX2vOwS6YKtatt1LAOLJGR5yYRT1XZe1g4gALS+ZOLtkgJJrODzn+Qh+cOj7d3dWxC4kOsvbER31z+H8wsupCZneksEAjHxJiFhqgizrZcgV8+XYzk7fOx5K65+O2LhWgNydyfpSYaLyZWgnHT3HPsSnztoSQK1y3Gtx+ZgUMnR7sPM95HArEVjMOjuTUfv36uCPPWV+L678/Dr3YUoaU1zznMMCCB2AvGzePVUwlUPzoDk76xCPduLeF05YbjM55TgnGYtLTlY8Pvp2B69QI8/gLfgXe4+AlzUjAOmLfODcO6h5OYfWcl1E1Ebr0TyGnBOHiOnB6NFRuvQ1XNHBw9PcoxM9QQiPR9GE17+mVSjwIq7rwBX6lqREXJ+X6VFdeTKRhNzz6xm+saDRbbxCnJiwztWgIUjBYLjV4EKBgvMrRrCVAwWiw0ehGgYLzI0K4lQMFosdDoRYCC8SJDu5YABaPFQqMXAQrGiwztWgIUjBYLjV4EKBgvMrRrCVAwWiw0ehGgYLzI0K4lQMFosdDoRYCC8SJDu5YABaPFQqMXAQrGiwztWgIUjBYLjV4EKBgvMrRrCRgVzMxJ/MG8tlc0Rvmfi6HYjL4E/rd7am0I+46NQe0/R+PA8YR8iWEcGs4ODwUcOnE5AUv+xWxItHvJuZPyIaEXj47FU/sn4C8HCy4dyOHY6Uf2olg+6WZ6C6Vg3FCaL+ThqQMF+N3uj2Hnkdz9dSIF41aFz3h9w0jU/GEKtu2b6POM+GRreHQvJk8wP8IYXfQG7c7S4gvYur4OdZv24/ML3g16eqTzh2XRGynBOD3uCOfQL17BsuvOOeZYh2H5KGIkBeMoY+6172PnTw9je80RXDXG/Ld9Hb8GIuQIk0Wqy+f8D3WbD+CW689msdRwFcURJsv9USBfyX767tewad2JLJccjuI4wgxQP9xxyxm88LNajB7eMUA1mCmWI8wAclcfet53/0FMGmf+MnQAm2mk6Egvensipq6k9t5/CMUT2nrKxmMBCcRWMIqDupX+kjyvomgCqqKH7LEWjGr3lKvaZE1zGIVjo33ZzUVvDyrO9qFpH2+179ckhn+U7aIHrTwuegcNdWdF5VefxzMbXhvkWuNXXeynJHeXLZ3VhCduf91tikycU5Khrlpb9TZunf9fQ7X3vVpOSX1n1+8zH6t+I/bPnvoNyaOAnJqSHAbjEx/hN9VvOslIhJySDHfT6hvORmpq4pRkWDCq+ge/fjwEXkTLhZyckpwuUneC7/nyKSfJ0AeBnBaM4vPdzzZgYiLad4F99HPWsuS8YEYMvYjvfe5M1oDGvaCcF4zq4OoVbyHKjw0GU6QUjNBOjOjAd1b+ezC5B66Ll9WBkQ3sCbd9OtyC4WX1wPZ/4NLVaxBLk02Bz8u1EzgluXr8q59sdKUY1RGgYFxU1ix6x5UKV5RrmHD1h+3NmJEduLkinL+k5BomhIJRLq2qjO+P4bKBnFNSBsVV8yiYDCRpSQomDQeg3v+N+++0M5ocKEnBaHAtnNGssdKkCFAwGh1UTmvRWGlSBCgYjQ4qp1IwGiy2iYLRkJl9zfsaK02KAAWj0UHR+PbYff1B08w+mSgYD2xlxec9juS2mYLx6P9Zk/mVch2a0H+nV+c0beYIcIQxxz6SNVMwkew2c05TMObYR7JmCiaS3WbOaQrGHPtI1kzBRLLbzDlNwZhjH8maKZhIdps5p5Vg+NsKc/yjVnOTEgx/WxG1bjPnbyMFYw5+FGumYKLYawZ9tgXT+b+ADXrBqiNDoFZNSdsj4y4dNUsgH3+2lAepo2iAhclmvWHtISfwL6sM16gRBiKWv4bcWbpnnoA9EzmC4bRkvkPC7YHVuXTpnJJS8jJ4PdTityLcXtM7QwSOohSz5YMAF+0RRkVkWvqJIWdYbdgJWKixNSJ+2iOM42+qDn+X+FInzZAEkMIeqxxLHBKda5hLqRonypAEbAJ5uNtNIk0w1izsloOb3RkYz2kCm7s00Q0hbUpSVvk0loU6PCt/l3fnYiQXCeyUhe5yWbuk3I1PG2HUATtDPtZI9Jg7I+M5ReA48vCFTLEoApcJRhmtJFpkhFkl0XdVmltOEVD/ru4ztgY0zdYKRuWzSqFUNlWiT2rOoymeBJ6UPr9WHgGc8GreZWuYzIxda5r7ZMT5YeYxpmNEIIUHUIYf6aYhdyt7FYyTOfU6FqNDrqAsVDo2hjEgkMLLMqqsl6uhPX5a41swqjB7tKnHaon+XPaZysYtsgTelBXsj0Uo24K0IJBg3AXLXWF1JbWyay90H2M8tATU+9vqQfMzsk7Z0hcv+ywYd2UinvmSXib7VLlqV+/VFMvUpcKE7NwGn0CL9IP6r2HqPScVnpT9eRHJvv668n9cV+da6kBQrQAAAABJRU5ErkJggg=="/>
</defs>
</svg>
</span><div class="menu-description">Product Discovery and CMS</div></a></li>
	<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-35933"><a href="https://app.exponea.com/login" class="elementor-sub-item">Engagement Platform<span class="menu-icon" ><svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
<rect width="16" height="16" fill="url(#pattern0_1148_5423)"/>
<defs>
<pattern id="pattern0_1148_5423" patternContentUnits="objectBoundingBox" width="1" height="1">
<use xlink:href="#image0_1148_5423" transform="scale(0.00714286)"/>
</pattern>
<image id="image0_1148_5423" width="140" height="140" xlink:href="data:image/png;base64,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"/>
</defs>
</svg>
</span><div class="menu-description">Please login through the link in your invite email</div></a></li>
</ul>
</li>
<li class="menu-item wpml-ls-slot-24 wpml-ls-item wpml-ls-item-en wpml-ls-current-language wpml-ls-menu-item wpml-ls-first-item menu-item-type-wpml_ls_menu_item menu-item-object-wpml_ls_menu_item menu-item-has-children menu-item-wpml-ls-24-en"><a href="https://www.bloomreach.com/en/products/engagement" title="Switch to EN" class="elementor-item"><span class="wpml-ls-native" lang="en">EN</span></a>
<ul class="sub-menu elementor-nav-menu--dropdown">
	<li class="menu-item wpml-ls-slot-24 wpml-ls-item wpml-ls-item-fr wpml-ls-menu-item menu-item-type-wpml_ls_menu_item menu-item-object-wpml_ls_menu_item menu-item-wpml-ls-24-fr"><a href="https://www.bloomreach.com/fr/produits/engagement" title="Switch to FR" class="elementor-sub-item"><span class="wpml-ls-native" lang="fr">FR</span></a></li>
	<li class="menu-item wpml-ls-slot-24 wpml-ls-item wpml-ls-item-de wpml-ls-menu-item wpml-ls-last-item menu-item-type-wpml_ls_menu_item menu-item-object-wpml_ls_menu_item menu-item-wpml-ls-24-de"><a href="https://www.bloomreach.com/de/produkte/engagement" title="Switch to DE" class="elementor-sub-item"><span class="wpml-ls-native" lang="de">DE</span></a></li>
</ul>
</li>
</ul>			</nav>
						<nav class="elementor-nav-menu--dropdown elementor-nav-menu__container" aria-hidden="true">
				<ul id="menu-2-1eb9c3d" class="elementor-nav-menu"><li class="login_dropdown menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-341"><a class="elementor-item" tabindex="-1">Login</a>
<ul class="sub-menu elementor-nav-menu--dropdown">
	<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-35932"><a href="https://tools.bloomreach.com/login" class="elementor-sub-item" tabindex="-1">Content / Discovery<span class="menu-icon" ><svg width="36" height="16" viewBox="0 0 36 16" fill="none" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
<g clip-path="url(#clip0_1148_5414)">
<rect width="16" height="16" fill="url(#pattern0_1148_5414)"/>
<rect x="20" width="16" height="16" fill="url(#pattern1_1148_5414)"/>
</g>
<defs>
<pattern id="pattern0_1148_5414" patternContentUnits="objectBoundingBox" width="1" height="1">
<use xlink:href="#image0_1148_5414" transform="scale(0.00714286)"/>
</pattern>
<pattern id="pattern1_1148_5414" patternContentUnits="objectBoundingBox" width="1" height="1">
<use xlink:href="#image1_1148_5414" transform="scale(0.00714286)"/>
</pattern>
<clipPath id="clip0_1148_5414">
<rect width="36" height="16" fill="white"/>
</clipPath>
<image id="image0_1148_5414" width="140" height="140" xlink:href="data:image/png;base64,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"/>
<image id="image1_1148_5414" width="140" height="140" xlink:href="data:image/png;base64,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"/>
</defs>
</svg>
</span><div class="menu-description">Product Discovery and CMS</div></a></li>
	<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-35933"><a href="https://app.exponea.com/login" class="elementor-sub-item" tabindex="-1">Engagement Platform<span class="menu-icon" ><svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
<rect width="16" height="16" fill="url(#pattern0_1148_5423)"/>
<defs>
<pattern id="pattern0_1148_5423" patternContentUnits="objectBoundingBox" width="1" height="1">
<use xlink:href="#image0_1148_5423" transform="scale(0.00714286)"/>
</pattern>
<image id="image0_1148_5423" width="140" height="140" xlink:href="data:image/png;base64,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"/>
</defs>
</svg>
</span><div class="menu-description">Please login through the link in your invite email</div></a></li>
</ul>
</li>
<li class="menu-item wpml-ls-slot-24 wpml-ls-item wpml-ls-item-en wpml-ls-current-language wpml-ls-menu-item wpml-ls-first-item menu-item-type-wpml_ls_menu_item menu-item-object-wpml_ls_menu_item menu-item-has-children menu-item-wpml-ls-24-en"><a href="https://www.bloomreach.com/en/products/engagement" title="Switch to EN" class="elementor-item" tabindex="-1"><span class="wpml-ls-native" lang="en">EN</span></a>
<ul class="sub-menu elementor-nav-menu--dropdown">
	<li class="menu-item wpml-ls-slot-24 wpml-ls-item wpml-ls-item-fr wpml-ls-menu-item menu-item-type-wpml_ls_menu_item menu-item-object-wpml_ls_menu_item menu-item-wpml-ls-24-fr"><a href="https://www.bloomreach.com/fr/produits/engagement" title="Switch to FR" class="elementor-sub-item" tabindex="-1"><span class="wpml-ls-native" lang="fr">FR</span></a></li>
	<li class="menu-item wpml-ls-slot-24 wpml-ls-item wpml-ls-item-de wpml-ls-menu-item wpml-ls-last-item menu-item-type-wpml_ls_menu_item menu-item-object-wpml_ls_menu_item menu-item-wpml-ls-24-de"><a href="https://www.bloomreach.com/de/produkte/engagement" title="Switch to DE" class="elementor-sub-item" tabindex="-1"><span class="wpml-ls-native" lang="de">DE</span></a></li>
</ul>
</li>
</ul>			</nav>
				</div>
				</div>
		<div class="elementor-element elementor-element-ca9b2cc e-con-full e-flex e-con e-child" data-id="ca9b2cc" data-element_type="container">
				<div class="elementor-element elementor-element-fa86e17 br_button elementor-widget elementor-widget-button" data-id="fa86e17" data-element_type="widget" data-widget_type="button.default">
				<div class="elementor-widget-container">
					<div class="elementor-button-wrapper">
			<a class="elementor-button elementor-button-link elementor-size-sm" href="/en/products/tours">
						<span class="elementor-button-content-wrapper">
									<span class="elementor-button-text">Explore Tours</span>
					</span>
					</a>
		</div>
				</div>
				</div>
				<div class="elementor-element elementor-element-14e63f7 br_button button_yellow elementor-widget elementor-widget-button" data-id="14e63f7" data-element_type="widget" data-widget_type="button.default">
				<div class="elementor-widget-container">
					<div class="elementor-button-wrapper">
			<a class="elementor-button elementor-button-link elementor-size-sm" href="https://www.bloomreach.com/en/request-demo" id="request-demo-header">
						<span class="elementor-button-content-wrapper">
									<span class="elementor-button-text">Schedule a Demo</span>
					</span>
					</a>
		</div>
				</div>
				</div>
				</div>
		<a class="elementor-element elementor-element-cb52896 e-con-full br_mobile_menu elementor-hidden-desktop e-flex e-con e-child" data-id="cb52896" data-element_type="container" href="#elementor-action%3Aaction%3Dpopup%3Aopen%26settings%3DeyJpZCI6OTc1LCJ0b2dnbGUiOnRydWV9">
				<div class="elementor-element elementor-element-223f06d elementor-widget-tablet__width-initial elementor-widget elementor-widget-html" data-id="223f06d" data-element_type="widget" data-widget_type="html.default">
				<div class="elementor-widget-container">
			<div class="burger_icon">
    <div class="burger_line"></div>
    <div class="burger_line"></div>
    <div class="burger_line"></div>
</div>		</div>
				</div>
				</a>
				</div>
					</div>
				</div>
				</div>
		
<main  id="content" class="site-main post-3401 products type-products status-publish hentry">

	
	<div  class="page-content">
				<div  data-elementor-type="wp-post" data-elementor-id="3401" class="elementor elementor-3401" data-elementor-post-type="products">
				<div class="elementor-element elementor-element-cb696fa e-flex e-con-boxed e-con e-parent" data-id="cb696fa" data-element_type="container">
					<div class="e-con-inner">
		<div class="elementor-element elementor-element-cc42dd5 e-con-full e-flex e-con e-child" data-id="cc42dd5" data-element_type="container">
		<div class="elementor-element elementor-element-1b0bd03 e-con-full e-flex e-con e-child" data-id="1b0bd03" data-element_type="container">
				<div class="elementor-element elementor-element-691f8b7 elementor-widget elementor-widget-heading" data-id="691f8b7" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<h1 class="elementor-heading-title elementor-size-default">The Future of Marketing Automation is Autonomous</h1>		</div>
				</div>
				<div class="elementor-element elementor-element-14930ac elementor-widget elementor-widget-text-editor" data-id="14930ac" data-element_type="widget" data-widget_type="text-editor.default">
				<div class="elementor-widget-container">
							<p>Unify your data, personalize every journey, and let AI-powered agents autonomously execute campaigns in real time across 13+ channels—driving higher LTV while you focus on strategy, not workflows.</p>						</div>
				</div>
				</div>
		<div class="elementor-element elementor-element-0a4324d e-con-full e-flex e-con e-child" data-id="0a4324d" data-element_type="container">
				<div class="elementor-element elementor-element-174ae3c elementor-widget elementor-widget-bloomreach_buttons" data-id="174ae3c" data-element_type="widget" data-widget_type="bloomreach_buttons.default">
				<div class="elementor-widget-container">
			<div></div>        <a class="br-cta "  href="/en/request-demo"><strong>Schedule a Demo</strong><span></span></a>
        		</div>
				</div>
				<div class="elementor-element elementor-element-7470b6a elementor-widget elementor-widget-bloomreach_buttons" data-id="7470b6a" data-element_type="widget" data-widget_type="bloomreach_buttons.default">
				<div class="elementor-widget-container">
			<div></div>        <a class="br-cta  br-cta--secondary"  href="#clxyqseks00000ajvcyhjcdq3"><strong>Take Interactive Tour</strong><span></span></a>
        		</div>
				</div>
				</div>
				</div>
		<div class="elementor-element elementor-element-23a6aa6 e-con-full e-flex e-con e-child" data-id="23a6aa6" data-element_type="container">
				<div class="elementor-element elementor-element-e387f0e elementor-widget elementor-widget-video" data-id="e387f0e" data-element_type="widget" data-settings="{&quot;video_type&quot;:&quot;hosted&quot;,&quot;autoplay&quot;:&quot;yes&quot;,&quot;play_on_mobile&quot;:&quot;yes&quot;,&quot;mute&quot;:&quot;yes&quot;,&quot;loop&quot;:&quot;yes&quot;}" data-widget_type="video.default">
				<div class="elementor-widget-container">
			<style>/*! elementor - v3.23.0 - 05-08-2024 */
.elementor-widget-video .elementor-widget-container{overflow:hidden;transform:translateZ(0)}.elementor-widget-video .elementor-wrapper{aspect-ratio:var(--video-aspect-ratio)}.elementor-widget-video .elementor-wrapper iframe,.elementor-widget-video .elementor-wrapper video{height:100%;width:100%;display:flex;border:none;background-color:#000}@supports not (aspect-ratio:1/1){.elementor-widget-video .elementor-wrapper{position:relative;overflow:hidden;height:0;padding-bottom:calc(100% / var(--video-aspect-ratio))}.elementor-widget-video .elementor-wrapper iframe,.elementor-widget-video .elementor-wrapper video{position:absolute;top:0;right:0;bottom:0;left:0}}.elementor-widget-video .elementor-open-inline .elementor-custom-embed-image-overlay{position:absolute;top:0;right:0;bottom:0;left:0;background-size:cover;background-position:50%}.elementor-widget-video .elementor-custom-embed-image-overlay{cursor:pointer;text-align:center}.elementor-widget-video .elementor-custom-embed-image-overlay:hover .elementor-custom-embed-play i{opacity:1}.elementor-widget-video .elementor-custom-embed-image-overlay img{display:block;width:100%;aspect-ratio:var(--video-aspect-ratio);-o-object-fit:cover;object-fit:cover;-o-object-position:center center;object-position:center center}@supports not (aspect-ratio:1/1){.elementor-widget-video .elementor-custom-embed-image-overlay{position:relative;overflow:hidden;height:0;padding-bottom:calc(100% / var(--video-aspect-ratio))}.elementor-widget-video .elementor-custom-embed-image-overlay img{position:absolute;top:0;right:0;bottom:0;left:0}}.elementor-widget-video .e-hosted-video .elementor-video{-o-object-fit:cover;object-fit:cover}.e-con-inner>.elementor-widget-video,.e-con>.elementor-widget-video{width:var(--container-widget-width);--flex-grow:var(--container-widget-flex-grow)}</style>		<div class="e-hosted-video elementor-wrapper elementor-open-inline">
					<video class="elementor-video" src="https://www.bloomreach.com/wp-content/uploads/2024/10/Animation-for-Engagement-pillar-SD.mp4" autoplay="" loop="" muted="muted" playsinline="" controlsList="nodownload"></video>
				</div>
				</div>
				</div>
				<div class="elementor-element elementor-element-9ae2183 elementor-widget__width-initial elementor-absolute no_border_radius elementor-widget elementor-widget-image" data-id="9ae2183" data-element_type="widget" data-settings="{&quot;_position&quot;:&quot;absolute&quot;}" data-widget_type="image.default">
				<div class="elementor-widget-container">
													<img fetchpriority="high" decoding="async" width="1267" height="266" src="https://www.bloomreach.com/wp-content/uploads/2024/04/bloomreach_pattern.svg" class="attachment-full size-full wp-image-1276" alt="bloomreach_pattern" />													</div>
				</div>
				</div>
					</div>
				</div>
		<div class="elementor-element elementor-element-c16bb31 e-flex e-con-boxed e-con e-parent" data-id="c16bb31" data-element_type="container">
					<div class="e-con-inner">
				<div class="elementor-element elementor-element-5b4d5e9 elementor-widget elementor-widget-heading" data-id="5b4d5e9" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<h2 class="elementor-heading-title elementor-size-default">Join over 1,400 fast-growing brands and enterprises</h2>		</div>
				</div>
		<div class="elementor-element elementor-element-5b2bc18 e-con-full logo-1 infinity-on-mobile infinity-on-tablet e-flex e-con e-child" data-id="5b2bc18" data-element_type="container">
				<div class="elementor-element elementor-element-672906c gallery-spacing-custom no_border_radius elementor-widget elementor-widget-image-gallery" data-id="672906c" data-element_type="widget" data-widget_type="image-gallery.default">
				<div class="elementor-widget-container">
			<style>/*! elementor - v3.23.0 - 05-08-2024 */
.elementor-image-gallery .gallery-item{display:inline-block;text-align:center;vertical-align:top;width:100%;max-width:100%;margin:0 auto}.elementor-image-gallery .gallery-item img{margin:0 auto}.elementor-image-gallery .gallery-item .gallery-caption{margin:0}.elementor-image-gallery figure img{display:block}.elementor-image-gallery figure figcaption{width:100%}.gallery-spacing-custom .elementor-image-gallery .gallery-icon{padding:0}@media (min-width:768px){.elementor-image-gallery .gallery-columns-2 .gallery-item{max-width:50%}.elementor-image-gallery .gallery-columns-3 .gallery-item{max-width:33.33%}.elementor-image-gallery .gallery-columns-4 .gallery-item{max-width:25%}.elementor-image-gallery .gallery-columns-5 .gallery-item{max-width:20%}.elementor-image-gallery .gallery-columns-6 .gallery-item{max-width:16.666%}.elementor-image-gallery .gallery-columns-7 .gallery-item{max-width:14.28%}.elementor-image-gallery .gallery-columns-8 .gallery-item{max-width:12.5%}.elementor-image-gallery .gallery-columns-9 .gallery-item{max-width:11.11%}.elementor-image-gallery .gallery-columns-10 .gallery-item{max-width:10%}}@media (min-width:480px) and (max-width:767px){.elementor-image-gallery .gallery.gallery-columns-2 .gallery-item,.elementor-image-gallery .gallery.gallery-columns-3 .gallery-item,.elementor-image-gallery .gallery.gallery-columns-4 .gallery-item,.elementor-image-gallery .gallery.gallery-columns-5 .gallery-item,.elementor-image-gallery .gallery.gallery-columns-6 .gallery-item,.elementor-image-gallery .gallery.gallery-columns-7 .gallery-item,.elementor-image-gallery .gallery.gallery-columns-8 .gallery-item,.elementor-image-gallery .gallery.gallery-columns-9 .gallery-item,.elementor-image-gallery .gallery.gallery-columns-10 .gallery-item{max-width:50%}}@media (max-width:479px){.elementor-image-gallery .gallery.gallery-columns-2 .gallery-item,.elementor-image-gallery .gallery.gallery-columns-3 .gallery-item,.elementor-image-gallery .gallery.gallery-columns-4 .gallery-item,.elementor-image-gallery .gallery.gallery-columns-5 .gallery-item,.elementor-image-gallery .gallery.gallery-columns-6 .gallery-item,.elementor-image-gallery .gallery.gallery-columns-7 .gallery-item,.elementor-image-gallery .gallery.gallery-columns-8 .gallery-item,.elementor-image-gallery .gallery.gallery-columns-9 .gallery-item,.elementor-image-gallery .gallery.gallery-columns-10 .gallery-item{max-width:100%}}</style>		<div class="elementor-image-gallery">
			<div id='gallery-1' class='gallery galleryid-3401 gallery-columns-1 gallery-size-full'><figure class='gallery-item'>
			<div class='gallery-icon landscape'>
				<img decoding="async" width="600" height="600" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20600%20600'%3E%3C/svg%3E" class="attachment-full size-full" alt="Logo-ΓCo-RedBull" data-lazy-srcset="https://www.bloomreach.com/wp-content/uploads/2024/10/Logo-ΓCo-RedBull.png 600w, https://www.bloomreach.com/wp-content/uploads/2024/10/Logo-ΓCo-RedBull-300x300.png 300w, https://www.bloomreach.com/wp-content/uploads/2024/10/Logo-ΓCo-RedBull-150x150.png 150w" data-lazy-sizes="(max-width: 600px) 100vw, 600px" data-lazy-src="https://www.bloomreach.com/wp-content/uploads/2024/10/Logo-ΓCo-RedBull.png" /><noscript><img decoding="async" width="600" height="600" src="https://www.bloomreach.com/wp-content/uploads/2024/10/Logo-ΓCo-RedBull.png" class="attachment-full size-full" alt="Logo-ΓCo-RedBull" srcset="https://www.bloomreach.com/wp-content/uploads/2024/10/Logo-ΓCo-RedBull.png 600w, https://www.bloomreach.com/wp-content/uploads/2024/10/Logo-ΓCo-RedBull-300x300.png 300w, https://www.bloomreach.com/wp-content/uploads/2024/10/Logo-ΓCo-RedBull-150x150.png 150w" sizes="(max-width: 600px) 100vw, 600px" /></noscript>
			</div></figure><figure class='gallery-item'>
			<div class='gallery-icon landscape'>
				<img decoding="async" width="600" height="250" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20600%20250'%3E%3C/svg%3E" class="attachment-full size-full" alt="boohooMan, logo" data-lazy-src="https://www.bloomreach.com/wp-content/uploads/2024/05/boohooman-black-ΓCo-3.svg" /><noscript><img decoding="async" width="600" height="250" src="https://www.bloomreach.com/wp-content/uploads/2024/05/boohooman-black-ΓCo-3.svg" class="attachment-full size-full" alt="boohooMan, logo" /></noscript>
			</div></figure><figure class='gallery-item'>
			<div class='gallery-icon landscape'>
				<img decoding="async" width="600" height="250" src="https://www.bloomreach.com/wp-content/uploads/2024/06/benefit-black.svg" class="attachment-full size-full" alt="benefit san francisco" />
			</div></figure><figure class='gallery-item'>
			<div class='gallery-icon landscape'>
				<img decoding="async" width="600" height="600" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20600%20600'%3E%3C/svg%3E" class="attachment-full size-full" alt="Logo-ΓCo-Pandora" data-lazy-srcset="https://www.bloomreach.com/wp-content/uploads/2024/10/Logo-ΓCo-Pandora.png 600w, https://www.bloomreach.com/wp-content/uploads/2024/10/Logo-ΓCo-Pandora-300x300.png 300w, https://www.bloomreach.com/wp-content/uploads/2024/10/Logo-ΓCo-Pandora-150x150.png 150w" data-lazy-sizes="(max-width: 600px) 100vw, 600px" data-lazy-src="https://www.bloomreach.com/wp-content/uploads/2024/10/Logo-ΓCo-Pandora.png" /><noscript><img decoding="async" width="600" height="600" src="https://www.bloomreach.com/wp-content/uploads/2024/10/Logo-ΓCo-Pandora.png" class="attachment-full size-full" alt="Logo-ΓCo-Pandora" srcset="https://www.bloomreach.com/wp-content/uploads/2024/10/Logo-ΓCo-Pandora.png 600w, https://www.bloomreach.com/wp-content/uploads/2024/10/Logo-ΓCo-Pandora-300x300.png 300w, https://www.bloomreach.com/wp-content/uploads/2024/10/Logo-ΓCo-Pandora-150x150.png 150w" sizes="(max-width: 600px) 100vw, 600px" /></noscript>
			</div></figure><figure class='gallery-item'>
			<div class='gallery-icon landscape'>
				<img decoding="async" width="600" height="600" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20600%20600'%3E%3C/svg%3E" class="attachment-full size-full" alt="Logo-ΓCo-Burger-King" data-lazy-srcset="https://www.bloomreach.com/wp-content/uploads/2024/10/Logo-ΓCo-Burger-King.png 600w, https://www.bloomreach.com/wp-content/uploads/2024/10/Logo-ΓCo-Burger-King-300x300.png 300w, https://www.bloomreach.com/wp-content/uploads/2024/10/Logo-ΓCo-Burger-King-150x150.png 150w" data-lazy-sizes="(max-width: 600px) 100vw, 600px" data-lazy-src="https://www.bloomreach.com/wp-content/uploads/2024/10/Logo-ΓCo-Burger-King.png" /><noscript><img decoding="async" width="600" height="600" src="https://www.bloomreach.com/wp-content/uploads/2024/10/Logo-ΓCo-Burger-King.png" class="attachment-full size-full" alt="Logo-ΓCo-Burger-King" srcset="https://www.bloomreach.com/wp-content/uploads/2024/10/Logo-ΓCo-Burger-King.png 600w, https://www.bloomreach.com/wp-content/uploads/2024/10/Logo-ΓCo-Burger-King-300x300.png 300w, https://www.bloomreach.com/wp-content/uploads/2024/10/Logo-ΓCo-Burger-King-150x150.png 150w" sizes="(max-width: 600px) 100vw, 600px" /></noscript>
			</div></figure><figure class='gallery-item'>
			<div class='gallery-icon landscape'>
				<img decoding="async" width="600" height="600" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20600%20600'%3E%3C/svg%3E" class="attachment-full size-full" alt="Logo-ΓCo-Miele" data-lazy-srcset="https://www.bloomreach.com/wp-content/uploads/2024/10/Logo-ΓCo-Miele.png 600w, https://www.bloomreach.com/wp-content/uploads/2024/10/Logo-ΓCo-Miele-300x300.png 300w, https://www.bloomreach.com/wp-content/uploads/2024/10/Logo-ΓCo-Miele-150x150.png 150w" data-lazy-sizes="(max-width: 600px) 100vw, 600px" data-lazy-src="https://www.bloomreach.com/wp-content/uploads/2024/10/Logo-ΓCo-Miele.png" /><noscript><img decoding="async" width="600" height="600" src="https://www.bloomreach.com/wp-content/uploads/2024/10/Logo-ΓCo-Miele.png" class="attachment-full size-full" alt="Logo-ΓCo-Miele" srcset="https://www.bloomreach.com/wp-content/uploads/2024/10/Logo-ΓCo-Miele.png 600w, https://www.bloomreach.com/wp-content/uploads/2024/10/Logo-ΓCo-Miele-300x300.png 300w, https://www.bloomreach.com/wp-content/uploads/2024/10/Logo-ΓCo-Miele-150x150.png 150w" sizes="(max-width: 600px) 100vw, 600px" /></noscript>
			</div></figure><figure class='gallery-item'>
			<div class='gallery-icon landscape'>
				<img decoding="async" width="600" height="600" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20600%20600'%3E%3C/svg%3E" class="attachment-full size-full" alt="Logo-ΓCo-TravelPass" data-lazy-srcset="https://www.bloomreach.com/wp-content/uploads/2024/10/Logo-ΓCo-TravelPass.png 600w, https://www.bloomreach.com/wp-content/uploads/2024/10/Logo-ΓCo-TravelPass-300x300.png 300w, https://www.bloomreach.com/wp-content/uploads/2024/10/Logo-ΓCo-TravelPass-150x150.png 150w" data-lazy-sizes="(max-width: 600px) 100vw, 600px" data-lazy-src="https://www.bloomreach.com/wp-content/uploads/2024/10/Logo-ΓCo-TravelPass.png" /><noscript><img decoding="async" width="600" height="600" src="https://www.bloomreach.com/wp-content/uploads/2024/10/Logo-ΓCo-TravelPass.png" class="attachment-full size-full" alt="Logo-ΓCo-TravelPass" srcset="https://www.bloomreach.com/wp-content/uploads/2024/10/Logo-ΓCo-TravelPass.png 600w, https://www.bloomreach.com/wp-content/uploads/2024/10/Logo-ΓCo-TravelPass-300x300.png 300w, https://www.bloomreach.com/wp-content/uploads/2024/10/Logo-ΓCo-TravelPass-150x150.png 150w" sizes="(max-width: 600px) 100vw, 600px" /></noscript>
			</div></figure>
		</div>
		</div>
				</div>
				</div>
				<div class="elementor-element elementor-element-04b6147 elementor-hidden-desktop elementor-hidden-tablet elementor-hidden-mobile elementor-widget elementor-widget-html" data-id="04b6147" data-element_type="widget" data-widget_type="html.default">
				<div class="elementor-widget-container">
			<script type="rocketlazyloadscript">
    (() => {
        const $wrapper = document.currentScript.closest('.logo-1');

        const isInfinityOnMobile = $wrapper.classList.contains('infinity-on-mobile');
        const isInfinityOnTablet = $wrapper.classList.contains('infinity-on-tablet');
        const isInfinityOnDesktop = $wrapper.classList.contains('infinity-on-desktop');
        const isInfinityOnWidescreen = $wrapper.classList.contains('infinity-on-widescreen');

        const isMobile = window.matchMedia('(max-width: 767px)').matches;
        if (isMobile && !isInfinityOnMobile) return;

        const isTablet = window.matchMedia('(min-width: 768px) and (max-width: 1024px)').matches;
        if (isTablet && !isInfinityOnTablet) return;

        const isDesktop = window.matchMedia('(min-width: 1025px)').matches;
        if (isDesktop && !isInfinityOnDesktop) return;

        const $container = $wrapper.querySelector('.elementor-image-gallery');
        const $gallery = $container.querySelector('.gallery');

        const galleryWidth = $gallery.offsetWidth;

        // Duplicate gallery
        $container.insertAdjacentHTML('beforeend', $gallery.outerHTML);

        const $gallery2 = $wrapper.querySelector('.gallery:last-child');

        // Remove ID from the second gallery
        $gallery2.removeAttribute('id');

        let position = 0;

        const updatePosition = time => {
            position += 1;

            // Reset position if it's greater than the container width
            if (position >= galleryWidth) position -= galleryWidth;

            // Move the galleries to create a seamless loop
            $container.style.transform = `translateX(${-position}px)`;

            requestAnimationFrame(updatePosition);
        }

        // Start the animation loop
        requestAnimationFrame(updatePosition);
    })();    
</script>		</div>
				</div>
				</div>
					</div>
				</div>
		<div class="elementor-element elementor-element-e8cc206 e-flex e-con-boxed e-con e-parent" data-id="e8cc206" data-element_type="container">
					<div class="e-con-inner">
		<div class="elementor-element elementor-element-e1f4c5b e-con-full e-flex e-con e-child" data-id="e1f4c5b" data-element_type="container">
				<div class="elementor-element elementor-element-bbe1336 elementor-widget elementor-widget-heading" data-id="bbe1336" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<h2 class="elementor-heading-title elementor-size-default">Transform Your Marketing With Unified Data and AI Agents</h2>		</div>
				</div>
				<div class="elementor-element elementor-element-d5efc31 elementor-widget elementor-widget-text-editor" data-id="d5efc31" data-element_type="widget" data-widget_type="text-editor.default">
				<div class="elementor-widget-container">
							<p>Stop managing disconnected tools. Bloomreach Engagement unifies your data and powers AI-driven execution—so every campaign, every interaction, and every journey happens in real time, at scale.</p>						</div>
				</div>
				</div>
				<div class="elementor-element elementor-element-8cdfa7c elementor-widget__width-inherit elementor-widget elementor-widget-media-accordion" data-id="8cdfa7c" data-element_type="widget" data-widget_type="media-accordion.default">
				<div class="elementor-widget-container">
			            <div class="media-accordion-wrapper">
                <div class="media-accordion">
                                            <div class="accordion-item" data-index="0">
                            <div class="accordion-header active"
                                id="accordion-0">
                                <div class="accordion-title">
                                                                        <h3>Access All Your Customer Insights in One Place</h3>
                                </div>
                                <span class="accordion-chevron">
                                    <i aria-hidden="true" class="icon icon-arrow-down-1"></i>                                </span>
                            </div>
                            <div class="accordion-content" style="display:block;">
                                <div class="accordion-text">
                                    <p>Our customer data engine allows you to centralize your online and offline customer data to gain a complete view of their interactions and preferences. This empowers you to make data-driven decisions that lead to better marketing outcomes.</p>                                </div>
                                
                                <div class="accordion-media-container">
                                                    <video
                    autoplay muted playsinline                                        muted                                    >
                    <source src="https://www.bloomreach.com/wp-content/uploads/2024/10/animation-Understand-Your-Customers.mp4" type="video/mp4">
                    Your browser does not support the video tag.                </video>
                                                </div>
                            </div>
                        </div>
                                            <div class="accordion-item" data-index="1">
                            <div class="accordion-header "
                                id="accordion-1">
                                <div class="accordion-title">
                                                                        <h3>Deliver Hyper-Personalized Experiences at Scale With Loomi AI </h3>
                                </div>
                                <span class="accordion-chevron">
                                    <i aria-hidden="true" class="icon icon-arrow-down-1"></i>                                </span>
                            </div>
                            <div class="accordion-content" style="display:none;">
                                <div class="accordion-text">
                                    <p>Use cutting-edge technology to quickly create, personalize, and optimize cross-channel campaigns based on real-time insights, ensuring they stay relevant and impactful.</p>                                </div>
                                
                                <div class="accordion-media-container">
                                                    <video
                    autoplay muted playsinline                                        muted                                    >
                    <source src="https://www.bloomreach.com/wp-content/uploads/2024/10/01_Loomi_eCommerce.mp4" type="video/mp4">
                    Your browser does not support the video tag.                </video>
                                                </div>
                            </div>
                        </div>
                                            <div class="accordion-item" data-index="2">
                            <div class="accordion-header "
                                id="accordion-2">
                                <div class="accordion-title">
                                                                        <h3>Create Seamless Omnichannel Journeys Across 13+ Channels</h3>
                                </div>
                                <span class="accordion-chevron">
                                    <i aria-hidden="true" class="icon icon-arrow-down-1"></i>                                </span>
                            </div>
                            <div class="accordion-content" style="display:none;">
                                <div class="accordion-text">
                                    <p>Design and scale unified customer journeys with our drag-and-drop workflow builder. Easily integrate new channels and ensure consistent messaging across every touchpoint for a smooth customer experience.</p>                                </div>
                                
                                <div class="accordion-media-container">
                                                    <video
                    autoplay muted playsinline                                        muted                                    >
                    <source src="https://www.bloomreach.com/wp-content/uploads/2024/10/animation-Run-Profitable-Campaigns.mp4" type="video/mp4">
                    Your browser does not support the video tag.                </video>
                                                </div>
                            </div>
                        </div>
                                            <div class="accordion-item" data-index="3">
                            <div class="accordion-header "
                                id="accordion-3">
                                <div class="accordion-title">
                                                                        <h3>Gain Independence From IT and Take Control With Advanced Reporting and Analytics</h3>
                                </div>
                                <span class="accordion-chevron">
                                    <i aria-hidden="true" class="icon icon-arrow-down-1"></i>                                </span>
                            </div>
                            <div class="accordion-content" style="display:none;">
                                <div class="accordion-text">
                                    <p>Gain full ownership of your data without relying on IT. Bloomreach’s marketer-friendly tools empower you to accurately track performance and execute faster.</p>                                </div>
                                
                                <div class="accordion-media-container">
                                                    <video
                    autoplay muted playsinline                                        muted                                    >
                    <source src="https://www.bloomreach.com/wp-content/uploads/2024/05/Loomi-Report.mp4" type="video/mp4">
                    Your browser does not support the video tag.                </video>
                                                </div>
                            </div>
                        </div>
                                            <div class="accordion-item" data-index="4">
                            <div class="accordion-header "
                                id="accordion-4">
                                <div class="accordion-title">
                                                                        <h3>Prove Your Marketing Impact With Custom Attribution</h3>
                                </div>
                                <span class="accordion-chevron">
                                    <i aria-hidden="true" class="icon icon-arrow-down-1"></i>                                </span>
                            </div>
                            <div class="accordion-content" style="display:none;">
                                <div class="accordion-text">
                                    <p>Track and demonstrate the ROI of your campaigns with flexible attribution models that highlight the value of your marketing efforts every step of the way.</p>                                </div>
                                
                                <div class="accordion-media-container">
                                                    <img decoding="async" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%200%200'%3E%3C/svg%3E" alt="Prove Your Marketing Impact With Custom Attribution"
                    data-uuid="GBrMxJFxFEFSzbCsdCLpDM"
                    data-player-type="lightbox" class="vidyard-player-embed" data-lazy-src="https://play.vidyard.com/GBrMxJFxFEFSzbCsdCLpDM.jpg"><noscript><img decoding="async" src="https://play.vidyard.com/GBrMxJFxFEFSzbCsdCLpDM.jpg" alt="Prove Your Marketing Impact With Custom Attribution"
                    data-uuid="GBrMxJFxFEFSzbCsdCLpDM"
                    data-player-type="lightbox" class="vidyard-player-embed"></noscript>
                                                </div>
                            </div>
                        </div>
                                    </div>
                <div class="accordion-media-container">
                                            <div class="accordion-media" style="display:block;"
                            data-index="0">
                                            <video
                    autoplay muted playsinline                                        muted                                    >
                    <source src="https://www.bloomreach.com/wp-content/uploads/2024/10/animation-Understand-Your-Customers.mp4" type="video/mp4">
                    Your browser does not support the video tag.                </video>
                                        </div>
                                            <div class="accordion-media" style="display:none;"
                            data-index="1">
                                            <video
                    autoplay muted playsinline                                        muted                                    >
                    <source src="https://www.bloomreach.com/wp-content/uploads/2024/10/01_Loomi_eCommerce.mp4" type="video/mp4">
                    Your browser does not support the video tag.                </video>
                                        </div>
                                            <div class="accordion-media" style="display:none;"
                            data-index="2">
                                            <video
                    autoplay muted playsinline                                        muted                                    >
                    <source src="https://www.bloomreach.com/wp-content/uploads/2024/10/animation-Run-Profitable-Campaigns.mp4" type="video/mp4">
                    Your browser does not support the video tag.                </video>
                                        </div>
                                            <div class="accordion-media" style="display:none;"
                            data-index="3">
                                            <video
                    autoplay muted playsinline                                        muted                                    >
                    <source src="https://www.bloomreach.com/wp-content/uploads/2024/05/Loomi-Report.mp4" type="video/mp4">
                    Your browser does not support the video tag.                </video>
                                        </div>
                                            <div class="accordion-media" style="display:none;"
                            data-index="4">
                                            <img decoding="async" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%200%200'%3E%3C/svg%3E" alt="Prove Your Marketing Impact With Custom Attribution"
                    data-uuid="GBrMxJFxFEFSzbCsdCLpDM"
                    data-player-type="lightbox" class="vidyard-player-embed" data-lazy-src="https://play.vidyard.com/GBrMxJFxFEFSzbCsdCLpDM.jpg"><noscript><img decoding="async" src="https://play.vidyard.com/GBrMxJFxFEFSzbCsdCLpDM.jpg" alt="Prove Your Marketing Impact With Custom Attribution"
                    data-uuid="GBrMxJFxFEFSzbCsdCLpDM"
                    data-player-type="lightbox" class="vidyard-player-embed"></noscript>
                                        </div>
                                    </div>
            </div>
            		</div>
				</div>
					</div>
				</div>
		<div class="elementor-element elementor-element-83b9f39 e-flex e-con-boxed e-con e-parent" data-id="83b9f39" data-element_type="container">
					<div class="e-con-inner">
		<div class="elementor-element elementor-element-bda3036 e-con-full e-flex e-con e-child" data-id="bda3036" data-element_type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
				<div class="elementor-element elementor-element-488592e elementor-widget__width-initial elementor-widget elementor-widget-heading" data-id="488592e" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<h2 class="elementor-heading-title elementor-size-default">Need Proof?</h2>		</div>
				</div>
		<div class="elementor-element elementor-element-45ac7b6 e-con-full e-flex e-con e-child" data-id="45ac7b6" data-element_type="container">
		<a class="elementor-element elementor-element-a0328f5 e-con-full product_box e-flex e-con e-child" data-id="a0328f5" data-element_type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}" href="https://www.bloomreach.com/en/case-studies/bensons-for-beds-increases-e-commerce-sales" target="_blank">
				<div class="elementor-element elementor-element-e9f9501 elementor-widget elementor-widget-counter" data-id="e9f9501" data-element_type="widget" data-widget_type="counter.default">
				<div class="elementor-widget-container">
			<style>/*! elementor - v3.23.0 - 05-08-2024 */
.elementor-counter{display:flex;justify-content:center;align-items:stretch;flex-direction:column-reverse}.elementor-counter .elementor-counter-number{flex-grow:var(--counter-number-grow,0)}.elementor-counter .elementor-counter-number-wrapper{flex:1;display:flex;font-size:69px;font-weight:600;line-height:1;text-align:center}.elementor-counter .elementor-counter-number-prefix{text-align:end;flex-grow:var(--counter-prefix-grow,1);white-space:pre-wrap}.elementor-counter .elementor-counter-number-suffix{text-align:start;flex-grow:var(--counter-suffix-grow,1);white-space:pre-wrap}.elementor-counter .elementor-counter-title{flex:1;display:flex;justify-content:center;align-items:center;margin:0;padding:0;font-size:19px;font-weight:400;line-height:2.5}</style>		<div class="elementor-counter">
			<div class="elementor-counter-title">Increase in ecommerce sales YoY</div>			<div class="elementor-counter-number-wrapper">
				<span class="elementor-counter-number-prefix"></span>
				<span class="elementor-counter-number" data-duration="2000" data-to-value="41" data-from-value="" data-delimiter=","></span>
				<span class="elementor-counter-number-suffix">%</span>
			</div>
		</div>
				</div>
				</div>
				<div class="elementor-element elementor-element-6235805 elementor-widget__width-initial elementor-absolute product_button_icon elementor-view-default elementor-widget elementor-widget-icon" data-id="6235805" data-element_type="widget" data-settings="{&quot;_position&quot;:&quot;absolute&quot;}" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<svg xmlns="http://www.w3.org/2000/svg" width="24" height="25" viewBox="0 0 24 25" fill="none"><rect y="0.495117" width="24" height="24" rx="12" fill="#14A1D0"></rect><path d="M15.1875 9.24512C15.4922 9.24512 15.75 9.50293 15.75 9.80762V15.4326C15.75 15.7607 15.4922 15.9951 15.1875 15.9951C14.8594 15.9951 14.625 15.7607 14.625 15.4326V11.167L9.21094 16.5811C8.97656 16.8154 8.625 16.8154 8.41406 16.5811C8.17969 16.3701 8.17969 16.0186 8.41406 15.8076L13.8281 10.3936H9.5625C9.23438 10.3936 9 10.1357 9 9.83105C9 9.50293 9.23438 9.26855 9.5625 9.26855H15.1875V9.24512Z" fill="white"></path></svg>			</div>
		</div>
				</div>
				</div>
		<div class="elementor-element elementor-element-efc7a4c e-con-full e-flex e-con e-child" data-id="efc7a4c" data-element_type="container">
		<div class="elementor-element elementor-element-131e0b3 e-con-full call_to_action_link e-flex e-con e-child" data-id="131e0b3" data-element_type="container">
				<div class="elementor-element elementor-element-31432f9 elementor-widget elementor-widget-heading" data-id="31432f9" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<div class="elementor-heading-title elementor-size-default">View Case Study</div>		</div>
				</div>
				<div class="elementor-element elementor-element-2e0a661 elementor-widget__width-initial elementor-view-default elementor-widget elementor-widget-icon" data-id="2e0a661" data-element_type="widget" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<svg xmlns="http://www.w3.org/2000/svg" width="25" height="24" viewBox="0 0 25 24" fill="none"><path d="M9.87079 16.9496L15.5778 11.2426L9.87079 5.53564L8.45679 6.94964L12.7498 11.2426L8.45679 15.5356L9.87079 16.9496Z" fill="#019ACE"></path></svg>			</div>
		</div>
				</div>
				</div>
				</div>
				</div>
				</a>
		<a class="elementor-element elementor-element-32eaac5 e-con-full product_box e-flex e-con e-child" data-id="32eaac5" data-element_type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}" href="https://www.bloomreach.com/en/library/analyst-reports/tei" target="_blank">
				<div class="elementor-element elementor-element-d54ee79 elementor-widget elementor-widget-counter" data-id="d54ee79" data-element_type="widget" data-widget_type="counter.default">
				<div class="elementor-widget-container">
					<div class="elementor-counter">
			<div class="elementor-counter-title">Cost savings from retiring legacy tech based on Forrester's Total Economic Impact report</div>			<div class="elementor-counter-number-wrapper">
				<span class="elementor-counter-number-prefix">$</span>
				<span class="elementor-counter-number" data-duration="2000" data-to-value="2.3" data-from-value="0" data-delimiter=",">0</span>
				<span class="elementor-counter-number-suffix">M</span>
			</div>
		</div>
				</div>
				</div>
				<div class="elementor-element elementor-element-8e7426d elementor-widget__width-initial elementor-absolute product_button_icon elementor-view-default elementor-widget elementor-widget-icon" data-id="8e7426d" data-element_type="widget" data-settings="{&quot;_position&quot;:&quot;absolute&quot;}" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<svg xmlns="http://www.w3.org/2000/svg" width="24" height="25" viewBox="0 0 24 25" fill="none"><rect y="0.495117" width="24" height="24" rx="12" fill="#14A1D0"></rect><path d="M15.1875 9.24512C15.4922 9.24512 15.75 9.50293 15.75 9.80762V15.4326C15.75 15.7607 15.4922 15.9951 15.1875 15.9951C14.8594 15.9951 14.625 15.7607 14.625 15.4326V11.167L9.21094 16.5811C8.97656 16.8154 8.625 16.8154 8.41406 16.5811C8.17969 16.3701 8.17969 16.0186 8.41406 15.8076L13.8281 10.3936H9.5625C9.23438 10.3936 9 10.1357 9 9.83105C9 9.50293 9.23438 9.26855 9.5625 9.26855H15.1875V9.24512Z" fill="white"></path></svg>			</div>
		</div>
				</div>
				</div>
		<div class="elementor-element elementor-element-23a62af e-con-full e-flex e-con e-child" data-id="23a62af" data-element_type="container">
		<div class="elementor-element elementor-element-712977b e-con-full call_to_action_link e-flex e-con e-child" data-id="712977b" data-element_type="container">
				<div class="elementor-element elementor-element-fdbd755 elementor-widget elementor-widget-heading" data-id="fdbd755" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<div class="elementor-heading-title elementor-size-default">Get the Report</div>		</div>
				</div>
				<div class="elementor-element elementor-element-d00c62b elementor-widget__width-initial elementor-view-default elementor-widget elementor-widget-icon" data-id="d00c62b" data-element_type="widget" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<svg xmlns="http://www.w3.org/2000/svg" width="25" height="24" viewBox="0 0 25 24" fill="none"><path d="M9.87079 16.9496L15.5778 11.2426L9.87079 5.53564L8.45679 6.94964L12.7498 11.2426L8.45679 15.5356L9.87079 16.9496Z" fill="#019ACE"></path></svg>			</div>
		</div>
				</div>
				</div>
				</div>
				</div>
				</a>
		<a class="elementor-element elementor-element-4a69e8c e-con-full product_box e-flex e-con e-child" data-id="4a69e8c" data-element_type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}" href="/en/case-studies/adlibris" target="_blank">
				<div class="elementor-element elementor-element-952fa01 elementor-widget elementor-widget-counter" data-id="952fa01" data-element_type="widget" data-widget_type="counter.default">
				<div class="elementor-widget-container">
					<div class="elementor-counter">
			<div class="elementor-counter-title">Time saved to launch of campaigns</div>			<div class="elementor-counter-number-wrapper">
				<span class="elementor-counter-number-prefix"></span>
				<span class="elementor-counter-number" data-duration="2000" data-to-value="40" data-from-value="" data-delimiter=","></span>
				<span class="elementor-counter-number-suffix">%</span>
			</div>
		</div>
				</div>
				</div>
				<div class="elementor-element elementor-element-dcbf480 elementor-widget__width-initial elementor-absolute product_button_icon elementor-view-default elementor-widget elementor-widget-icon" data-id="dcbf480" data-element_type="widget" data-settings="{&quot;_position&quot;:&quot;absolute&quot;}" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<svg xmlns="http://www.w3.org/2000/svg" width="24" height="25" viewBox="0 0 24 25" fill="none"><rect y="0.495117" width="24" height="24" rx="12" fill="#14A1D0"></rect><path d="M15.1875 9.24512C15.4922 9.24512 15.75 9.50293 15.75 9.80762V15.4326C15.75 15.7607 15.4922 15.9951 15.1875 15.9951C14.8594 15.9951 14.625 15.7607 14.625 15.4326V11.167L9.21094 16.5811C8.97656 16.8154 8.625 16.8154 8.41406 16.5811C8.17969 16.3701 8.17969 16.0186 8.41406 15.8076L13.8281 10.3936H9.5625C9.23438 10.3936 9 10.1357 9 9.83105C9 9.50293 9.23438 9.26855 9.5625 9.26855H15.1875V9.24512Z" fill="white"></path></svg>			</div>
		</div>
				</div>
				</div>
		<div class="elementor-element elementor-element-737f947 e-con-full e-flex e-con e-child" data-id="737f947" data-element_type="container">
		<div class="elementor-element elementor-element-18b0ad6 e-con-full call_to_action_link e-flex e-con e-child" data-id="18b0ad6" data-element_type="container">
				<div class="elementor-element elementor-element-0c35840 elementor-widget elementor-widget-heading" data-id="0c35840" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<div class="elementor-heading-title elementor-size-default">View Case Study</div>		</div>
				</div>
				<div class="elementor-element elementor-element-dab1715 elementor-widget__width-initial elementor-view-default elementor-widget elementor-widget-icon" data-id="dab1715" data-element_type="widget" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<svg xmlns="http://www.w3.org/2000/svg" width="25" height="24" viewBox="0 0 25 24" fill="none"><path d="M9.87079 16.9496L15.5778 11.2426L9.87079 5.53564L8.45679 6.94964L12.7498 11.2426L8.45679 15.5356L9.87079 16.9496Z" fill="#019ACE"></path></svg>			</div>
		</div>
				</div>
				</div>
				</div>
				</div>
				</a>
				</div>
				</div>
					</div>
				</div>
		<div class="elementor-element elementor-element-059b41c e-flex e-con-boxed e-con e-parent" data-id="059b41c" data-element_type="container">
					<div class="e-con-inner">
				<div class="elementor-element elementor-element-79e5709 elementor-widget elementor-widget-heading" data-id="79e5709" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<h2 class="elementor-heading-title elementor-size-default">What Sets Bloomreach Engagement Apart</h2>		</div>
				</div>
					</div>
				</div>
		<div class="elementor-element elementor-element-656335e e-flex e-con-boxed e-con e-parent" data-id="656335e" data-element_type="container">
					<div class="e-con-inner">
		<div class="elementor-element elementor-element-faf52fa e-con-full e-flex e-con e-child" data-id="faf52fa" data-element_type="container">
		<a class="elementor-element elementor-element-84b9043 e-con-full product_box e-flex e-con e-child" data-id="84b9043" data-element_type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
				<div class="elementor-element elementor-element-9e75dfc elementor-widget__width-initial elementor-view-default elementor-widget elementor-widget-icon" data-id="9e75dfc" data-element_type="widget" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<i aria-hidden="true" class="icon icon-email-action-heart"></i>			</div>
		</div>
				</div>
				</div>
		<div class="elementor-element elementor-element-2ae31a6 e-con-full e-flex e-con e-child" data-id="2ae31a6" data-element_type="container">
				<div class="elementor-element elementor-element-1afb435 elementor-widget__width-inherit elementor-widget-mobile__width-initial elementor-widget elementor-widget-heading" data-id="1afb435" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<h3 class="elementor-heading-title elementor-size-default"><span>Unlock Limitless Personalization and Cut Costs With Our All-in-One Solution</span></h3>		</div>
				</div>
				<div class="elementor-element elementor-element-68d7b4b elementor-widget elementor-widget-text-editor" data-id="68d7b4b" data-element_type="widget" data-widget_type="text-editor.default">
				<div class="elementor-widget-container">
							<p>By combining a customer data engine for in-depth insights, 13+ channels for a seamless omnichannel experience, and Loomi AI for automated personalization, you eliminate the need for multiple point solutions. This allows you to streamline operations and boost productivity.</p>						</div>
				</div>
				</div>
				</a>
		<a class="elementor-element elementor-element-f625290 e-con-full product_box e-flex e-con e-child" data-id="f625290" data-element_type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}" href="https://www.bloomreach.com/en/products/data-engine" target="_blank">
				<div class="elementor-element elementor-element-ea079ae elementor-widget__width-initial elementor-view-default elementor-widget elementor-widget-icon" data-id="ea079ae" data-element_type="widget" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<i aria-hidden="true" class="icon icon-layout-headline"></i>			</div>
		</div>
				</div>
				</div>
		<div class="elementor-element elementor-element-eda553e e-con-full e-flex e-con e-child" data-id="eda553e" data-element_type="container">
				<div class="elementor-element elementor-element-4a1c3e9 elementor-widget__width-inherit elementor-widget-mobile__width-initial elementor-widget elementor-widget-heading" data-id="4a1c3e9" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<h3 class="elementor-heading-title elementor-size-default">Achieve Real-Time Marketing With Our Built-in Custo﻿mer Data Engine</h3>		</div>
				</div>
				<div class="elementor-element elementor-element-f1294ea elementor-widget elementor-widget-text-editor" data-id="f1294ea" data-element_type="widget" data-widget_type="text-editor.default">
				<div class="elementor-widget-container">
							<p>Our customer data engine breaks down data silos by unifying both online and offline data for a complete view of your customers. At the same time, Loomi AI leverages it to create and optimize personalized campaigns on the fly, ensuring your marketing always hits the mark.</p>						</div>
				</div>
		<div class="elementor-element elementor-element-b9faa40 e-con-full call_to_action_link e-flex e-con e-child" data-id="b9faa40" data-element_type="container">
				<div class="elementor-element elementor-element-5cf6982 elementor-widget elementor-widget-heading" data-id="5cf6982" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<div class="elementor-heading-title elementor-size-default">Explore Our Customer Data Engine</div>		</div>
				</div>
				<div class="elementor-element elementor-element-093eadd elementor-widget__width-initial elementor-view-default elementor-widget elementor-widget-icon" data-id="093eadd" data-element_type="widget" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<svg xmlns="http://www.w3.org/2000/svg" width="25" height="24" viewBox="0 0 25 24" fill="none"><path d="M9.87079 16.9496L15.5778 11.2426L9.87079 5.53564L8.45679 6.94964L12.7498 11.2426L8.45679 15.5356L9.87079 16.9496Z" fill="#019ACE"></path></svg>			</div>
		</div>
				</div>
				</div>
				</div>
				</div>
				<div class="elementor-element elementor-element-1f73ba9 elementor-widget__width-initial elementor-absolute product_button_icon elementor-view-default elementor-widget elementor-widget-icon" data-id="1f73ba9" data-element_type="widget" data-settings="{&quot;_position&quot;:&quot;absolute&quot;}" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<svg xmlns="http://www.w3.org/2000/svg" width="24" height="25" viewBox="0 0 24 25" fill="none"><rect y="0.495117" width="24" height="24" rx="12" fill="#14A1D0"></rect><path d="M15.1875 9.24512C15.4922 9.24512 15.75 9.50293 15.75 9.80762V15.4326C15.75 15.7607 15.4922 15.9951 15.1875 15.9951C14.8594 15.9951 14.625 15.7607 14.625 15.4326V11.167L9.21094 16.5811C8.97656 16.8154 8.625 16.8154 8.41406 16.5811C8.17969 16.3701 8.17969 16.0186 8.41406 15.8076L13.8281 10.3936H9.5625C9.23438 10.3936 9 10.1357 9 9.83105C9 9.50293 9.23438 9.26855 9.5625 9.26855H15.1875V9.24512Z" fill="white"></path></svg>			</div>
		</div>
				</div>
				</div>
				</a>
		<a class="elementor-element elementor-element-72e9b6c e-con-full product_box e-flex e-con e-child" data-id="72e9b6c" data-element_type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}" href="https://www.bloomreach.com/en/products/loomi" target="_blank">
				<div class="elementor-element elementor-element-67ec201 elementor-widget__width-initial elementor-view-default elementor-widget elementor-widget-icon" data-id="67ec201" data-element_type="widget" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<i aria-hidden="true" class="icon icon-email-action-download"></i>			</div>
		</div>
				</div>
				</div>
		<div class="elementor-element elementor-element-fb3439d e-con-full e-flex e-con e-child" data-id="fb3439d" data-element_type="container">
				<div class="elementor-element elementor-element-00de093 elementor-widget__width-inherit elementor-widget-mobile__width-initial elementor-widget elementor-widget-heading" data-id="00de093" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<h3 class="elementor-heading-title elementor-size-default">Maximize Efficiency With AI That Executes at Scale</h3>		</div>
				</div>
				<div class="elementor-element elementor-element-5341735 elementor-widget elementor-widget-text-editor" data-id="5341735" data-element_type="widget" data-widget_type="text-editor.default">
				<div class="elementor-widget-container">
							<p>Loomi AI eliminates the busywork, so you get results faster. No more tweaking workflows—AI continuously optimizes campaigns, delivers real-time personalization, and drives engagement while your team focuses on strategy.</p>						</div>
				</div>
		<div class="elementor-element elementor-element-8ad5f1b e-con-full call_to_action_link e-flex e-con e-child" data-id="8ad5f1b" data-element_type="container">
				<div class="elementor-element elementor-element-875a4eb elementor-widget elementor-widget-heading" data-id="875a4eb" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<div class="elementor-heading-title elementor-size-default">Explore Loomi AI</div>		</div>
				</div>
				<div class="elementor-element elementor-element-698e08c elementor-widget__width-initial elementor-view-default elementor-widget elementor-widget-icon" data-id="698e08c" data-element_type="widget" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<svg xmlns="http://www.w3.org/2000/svg" width="25" height="24" viewBox="0 0 25 24" fill="none"><path d="M9.87079 16.9496L15.5778 11.2426L9.87079 5.53564L8.45679 6.94964L12.7498 11.2426L8.45679 15.5356L9.87079 16.9496Z" fill="#019ACE"></path></svg>			</div>
		</div>
				</div>
				</div>
				</div>
				</div>
				<div class="elementor-element elementor-element-97cc60f elementor-widget__width-initial elementor-absolute product_button_icon elementor-view-default elementor-widget elementor-widget-icon" data-id="97cc60f" data-element_type="widget" data-settings="{&quot;_position&quot;:&quot;absolute&quot;}" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<svg xmlns="http://www.w3.org/2000/svg" width="24" height="25" viewBox="0 0 24 25" fill="none"><rect y="0.495117" width="24" height="24" rx="12" fill="#14A1D0"></rect><path d="M15.1875 9.24512C15.4922 9.24512 15.75 9.50293 15.75 9.80762V15.4326C15.75 15.7607 15.4922 15.9951 15.1875 15.9951C14.8594 15.9951 14.625 15.7607 14.625 15.4326V11.167L9.21094 16.5811C8.97656 16.8154 8.625 16.8154 8.41406 16.5811C8.17969 16.3701 8.17969 16.0186 8.41406 15.8076L13.8281 10.3936H9.5625C9.23438 10.3936 9 10.1357 9 9.83105C9 9.50293 9.23438 9.26855 9.5625 9.26855H15.1875V9.24512Z" fill="white"></path></svg>			</div>
		</div>
				</div>
				</div>
				</a>
				</div>
				<div class="elementor-element elementor-element-dc06344 elementor-widget__width-initial elementor-widget elementor-widget-video" data-id="dc06344" data-element_type="widget" data-settings="{&quot;video_type&quot;:&quot;hosted&quot;,&quot;autoplay&quot;:&quot;yes&quot;,&quot;play_on_mobile&quot;:&quot;yes&quot;,&quot;mute&quot;:&quot;yes&quot;}" data-widget_type="video.default">
				<div class="elementor-widget-container">
					<div class="e-hosted-video elementor-wrapper elementor-open-inline">
					<video class="elementor-video" src="https://www.bloomreach.com/wp-content/uploads/2024/08/email-marketing-tool.mp4" autoplay="" muted="muted" playsinline="" controlsList="nodownload"></video>
				</div>
				</div>
				</div>
					</div>
				</div>
		<div class="elementor-element elementor-element-7500a1e e-flex e-con-boxed e-con e-parent" data-id="7500a1e" data-element_type="container">
					<div class="e-con-inner">
				<div class="elementor-element elementor-element-c7e4897 br_carousel elementor-pagination-type-bullets elementor-arrows-position-inside elementor-pagination-position-outside elementor-widget elementor-widget-loop-carousel" data-id="c7e4897" data-element_type="widget" data-settings="{&quot;template_id&quot;:23118,&quot;slides_to_show&quot;:&quot;1&quot;,&quot;image_spacing_custom&quot;:{&quot;unit&quot;:&quot;px&quot;,&quot;size&quot;:30,&quot;sizes&quot;:[]},&quot;_skin&quot;:&quot;post&quot;,&quot;slides_to_show_tablet&quot;:&quot;2&quot;,&quot;slides_to_show_mobile&quot;:&quot;1&quot;,&quot;slides_to_scroll&quot;:&quot;1&quot;,&quot;edit_handle_selector&quot;:&quot;.elementor-widget-container&quot;,&quot;autoplay&quot;:&quot;yes&quot;,&quot;autoplay_speed&quot;:5000,&quot;pause_on_hover&quot;:&quot;yes&quot;,&quot;pause_on_interaction&quot;:&quot;yes&quot;,&quot;infinite&quot;:&quot;yes&quot;,&quot;speed&quot;:500,&quot;offset_sides&quot;:&quot;none&quot;,&quot;arrows&quot;:&quot;yes&quot;,&quot;pagination&quot;:&quot;bullets&quot;,&quot;image_spacing_custom_tablet&quot;:{&quot;unit&quot;:&quot;px&quot;,&quot;size&quot;:&quot;&quot;,&quot;sizes&quot;:[]},&quot;image_spacing_custom_mobile&quot;:{&quot;unit&quot;:&quot;px&quot;,&quot;size&quot;:&quot;&quot;,&quot;sizes&quot;:[]}}" data-widget_type="loop-carousel.post">
				<div class="elementor-widget-container">
			<link rel="stylesheet" href="https://www.bloomreach.com/wp-content/plugins/elementor-pro/assets/css/widget-loop-builder.min.css?ver=1728985997">		<div class="swiper-container elementor-loop-container elementor-grid" dir="ltr">
				<div class="swiper-wrapper" aria-live="off">
		<style id="loop-23118">.elementor-23118 .elementor-element.elementor-element-919fc81{--display:flex;--flex-direction:column;--container-widget-width:100%;--container-widget-height:initial;--container-widget-flex-grow:0;--container-widget-align-self:initial;--flex-wrap-mobile:wrap;--gap:24px 24px;--background-transition:0.3s;--border-radius:32px 32px 32px 32px;--padding-top:32px;--padding-bottom:32px;--padding-left:32px;--padding-right:32px;}.elementor-23118 .elementor-element.elementor-element-919fc81:not(.elementor-motion-effects-element-type-background), .elementor-23118 .elementor-element.elementor-element-919fc81 > .elementor-motion-effects-container > .elementor-motion-effects-layer{background-color:var( --e-global-color-13911f0 );}.elementor-23118 .elementor-element.elementor-element-919fc81, .elementor-23118 .elementor-element.elementor-element-919fc81::before{--border-transition:0.3s;}.elementor-23118 .elementor-element.elementor-element-919fc81.e-con{--flex-grow:0;--flex-shrink:0;}.elementor-23118 .elementor-element.elementor-element-4bdf156{--e-rating-justify-content:center;--e-rating-icon-font-size:20px;--e-rating-gap:8px;--e-rating-icon-marked-color:var( --e-global-color-c442edd );--e-rating-icon-color:var( --e-global-color-388c9b9 );}.elementor-23118 .elementor-element.elementor-element-5b50637{text-align:center;color:var( --e-global-color-8611160 );font-family:var( --e-global-typography-11af8a0-font-family ), Sans-serif;font-size:var( --e-global-typography-11af8a0-font-size );font-weight:var( --e-global-typography-11af8a0-font-weight );text-transform:var( --e-global-typography-11af8a0-text-transform );font-style:var( --e-global-typography-11af8a0-font-style );text-decoration:var( --e-global-typography-11af8a0-text-decoration );line-height:var( --e-global-typography-11af8a0-line-height );letter-spacing:var( --e-global-typography-11af8a0-letter-spacing );}.elementor-23118 .elementor-element.elementor-element-4a89207{--display:flex;--flex-direction:row;--container-widget-width:calc( ( 1 - var( --container-widget-flex-grow ) ) * 100% );--container-widget-height:100%;--container-widget-flex-grow:1;--container-widget-align-self:stretch;--flex-wrap-mobile:wrap;--justify-content:center;--align-items:center;--gap:24px 24px;--background-transition:0.3s;--padding-top:10px;--padding-bottom:10px;--padding-left:10px;--padding-right:10px;}.elementor-23118 .elementor-element.elementor-element-c1220af{--display:flex;--flex-direction:row;--container-widget-width:calc( ( 1 - var( --container-widget-flex-grow ) ) * 100% );--container-widget-height:100%;--container-widget-flex-grow:1;--container-widget-align-self:stretch;--flex-wrap-mobile:wrap;--align-items:center;--gap:10px 10px;--flex-wrap:nowrap;--background-transition:0.3s;--padding-top:0px;--padding-bottom:0px;--padding-left:0px;--padding-right:26px;}.elementor-23118 .elementor-element.elementor-element-347cba3{width:var( --container-widget-width, 40px );max-width:40px;--container-widget-width:40px;--container-widget-flex-grow:0;}.elementor-23118 .elementor-element.elementor-element-347cba3.elementor-element{--flex-grow:1;--flex-shrink:0;}.elementor-23118 .elementor-element.elementor-element-347cba3 img{width:40px;height:40px;object-fit:cover;object-position:center center;border-radius:50% 50% 50% 50%;}.elementor-23118 .elementor-element.elementor-element-ae76859{--display:flex;--gap:0px 0px;--background-transition:0.3s;}.elementor-23118 .elementor-element.elementor-element-95a48e8 .elementor-heading-title{color:var( --e-global-color-f97dbcb );font-family:var( --e-global-typography-90ed99e-font-family ), Sans-serif;font-size:var( --e-global-typography-90ed99e-font-size );font-weight:var( --e-global-typography-90ed99e-font-weight );text-transform:var( --e-global-typography-90ed99e-text-transform );font-style:var( --e-global-typography-90ed99e-font-style );text-decoration:var( --e-global-typography-90ed99e-text-decoration );line-height:var( --e-global-typography-90ed99e-line-height );letter-spacing:var( --e-global-typography-90ed99e-letter-spacing );}.elementor-23118 .elementor-element.elementor-element-3da3018 .elementor-heading-title{color:var( --e-global-color-c4572d3 );font-family:var( --e-global-typography-5eb7557-font-family ), Sans-serif;font-size:var( --e-global-typography-5eb7557-font-size );font-weight:var( --e-global-typography-5eb7557-font-weight );text-transform:var( --e-global-typography-5eb7557-text-transform );font-style:var( --e-global-typography-5eb7557-font-style );text-decoration:var( --e-global-typography-5eb7557-text-decoration );line-height:var( --e-global-typography-5eb7557-line-height );letter-spacing:var( --e-global-typography-5eb7557-letter-spacing );}.elementor-23118 .elementor-element.elementor-element-a20d5ca > .elementor-widget-container{padding:0px 0px 0px 24px;border-style:solid;border-width:0px 0px 0px 1px;border-color:var( --e-global-color-388c9b9 );}.elementor-23118 .elementor-element.elementor-element-a20d5ca img{width:initial;height:40px;}@media(min-width:768px){.elementor-23118 .elementor-element.elementor-element-919fc81{--content-width:730px;}.elementor-23118 .elementor-element.elementor-element-c1220af{--width:initial;}.elementor-23118 .elementor-element.elementor-element-ae76859{--width:initial;}}@media(max-width:1024px){.elementor-23118 .elementor-element.elementor-element-919fc81{--gap:20px 20px;--border-radius:12px 12px 12px 12px;--padding-top:32px;--padding-bottom:24px;--padding-left:64px;--padding-right:64px;}.elementor-23118 .elementor-element.elementor-element-5b50637{font-size:var( --e-global-typography-11af8a0-font-size );line-height:var( --e-global-typography-11af8a0-line-height );letter-spacing:var( --e-global-typography-11af8a0-letter-spacing );}.elementor-23118 .elementor-element.elementor-element-4a89207{--flex-direction:column;--container-widget-width:100%;--container-widget-height:initial;--container-widget-flex-grow:0;--container-widget-align-self:initial;--flex-wrap-mobile:wrap;--gap:10px 10px;}.elementor-23118 .elementor-element.elementor-element-c1220af{--flex-direction:column;--container-widget-width:100%;--container-widget-height:initial;--container-widget-flex-grow:0;--container-widget-align-self:initial;--flex-wrap-mobile:wrap;--padding-top:0px;--padding-bottom:0px;--padding-left:0px;--padding-right:0px;}.elementor-23118 .elementor-element.elementor-element-95a48e8{text-align:center;}.elementor-23118 .elementor-element.elementor-element-95a48e8 .elementor-heading-title{font-size:var( --e-global-typography-90ed99e-font-size );line-height:var( --e-global-typography-90ed99e-line-height );letter-spacing:var( --e-global-typography-90ed99e-letter-spacing );}.elementor-23118 .elementor-element.elementor-element-3da3018{text-align:center;}.elementor-23118 .elementor-element.elementor-element-3da3018 .elementor-heading-title{font-size:var( --e-global-typography-5eb7557-font-size );line-height:var( --e-global-typography-5eb7557-line-height );letter-spacing:var( --e-global-typography-5eb7557-letter-spacing );}.elementor-23118 .elementor-element.elementor-element-a20d5ca > .elementor-widget-container{padding:0px 0px 0px 0px;border-width:0px 0px 0px 0px;}}@media(max-width:767px){.elementor-23118 .elementor-element.elementor-element-919fc81{--padding-top:24px;--padding-bottom:12px;--padding-left:20px;--padding-right:20px;}.elementor-23118 .elementor-element.elementor-element-5b50637{font-size:var( --e-global-typography-11af8a0-font-size );line-height:var( --e-global-typography-11af8a0-line-height );letter-spacing:var( --e-global-typography-11af8a0-letter-spacing );}.elementor-23118 .elementor-element.elementor-element-95a48e8 .elementor-heading-title{font-size:var( --e-global-typography-90ed99e-font-size );line-height:var( --e-global-typography-90ed99e-line-height );letter-spacing:var( --e-global-typography-90ed99e-letter-spacing );}.elementor-23118 .elementor-element.elementor-element-3da3018 .elementor-heading-title{font-size:var( --e-global-typography-5eb7557-font-size );line-height:var( --e-global-typography-5eb7557-line-height );letter-spacing:var( --e-global-typography-5eb7557-letter-spacing );}}/* Start custom CSS for theme-post-content, class: .elementor-element-5b50637 */@media (max-width: 1024px) {
    .elementor-23118 .elementor-element.elementor-element-5b50637 p {
        font: var( --body-xl-medium-font );
    }
}/* End custom CSS */
/* Start custom CSS for image, class: .elementor-element-347cba3 */.elementor-23118 .elementor-element.elementor-element-347cba3 img {
    border-radius: 50% !important;
}/* End custom CSS */</style>		<div data-elementor-type="loop-item" data-elementor-id="23118" class="elementor elementor-23118 swiper-slide e-loop-item e-loop-item-52338 post-52338 testimonials type-testimonials status-publish hentry" data-elementor-post-type="elementor_library" role="group" aria-roledescription="slide" data-custom-edit-handle="1">
			<div class="elementor-element elementor-element-919fc81 carousel_box e-flex e-con-boxed e-con e-parent" data-id="919fc81" data-element_type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
					<div class="e-con-inner">
				<div class="elementor-element elementor-element-4bdf156 elementor-widget elementor-widget-rating" data-id="4bdf156" data-element_type="widget" data-widget_type="rating.default">
				<div class="elementor-widget-container">
			<style>/*! elementor - v3.23.0 - 05-08-2024 */
.elementor-widget-rating{--e-rating-gap:0px;--e-rating-icon-font-size:16px;--e-rating-icon-color:#ccd6df;--e-rating-icon-marked-color:#f0ad4e;--e-rating-icon-marked-width:100%;--e-rating-justify-content:flex-start}.elementor-widget-rating .e-rating{display:flex;justify-content:var(--e-rating-justify-content)}.elementor-widget-rating .e-rating-wrapper{display:flex;justify-content:inherit;flex-direction:row;flex-wrap:wrap;width:-moz-fit-content;width:fit-content;margin-block-end:calc(0px - var(--e-rating-gap));margin-inline-end:calc(0px - var(--e-rating-gap))}.elementor-widget-rating .e-rating .e-icon{position:relative;margin-block-end:var(--e-rating-gap);margin-inline-end:var(--e-rating-gap)}.elementor-widget-rating .e-rating .e-icon-wrapper.e-icon-marked{--e-rating-icon-color:var(--e-rating-icon-marked-color);width:var(--e-rating-icon-marked-width);position:absolute;z-index:1;height:100%;left:0;top:0;overflow:hidden}.elementor-widget-rating .e-rating .e-icon-wrapper :is(i,svg){display:flex;flex-shrink:0}.elementor-widget-rating .e-rating .e-icon-wrapper i{font-size:var(--e-rating-icon-font-size);color:var(--e-rating-icon-color)}.elementor-widget-rating .e-rating .e-icon-wrapper svg{width:auto;height:var(--e-rating-icon-font-size);fill:var(--e-rating-icon-color)}</style>		<div class="e-rating" itemtype="https://schema.org/Rating" itemscope="" itemprop="reviewRating">
			<meta itemprop="worstRating" content="0">
			<meta itemprop="bestRating" content="5">
			<div class="e-rating-wrapper" itemprop="ratingValue" content="5" role="img" aria-label="Rated 5 out of 5">
							<div class="e-icon">
				<div class="e-icon-wrapper e-icon-marked">
					<i aria-hidden="true" class="eicon-star"></i>				</div>
				<div class="e-icon-wrapper e-icon-unmarked">
					<i aria-hidden="true" class="eicon-star"></i>				</div>
			</div>
						<div class="e-icon">
				<div class="e-icon-wrapper e-icon-marked">
					<i aria-hidden="true" class="eicon-star"></i>				</div>
				<div class="e-icon-wrapper e-icon-unmarked">
					<i aria-hidden="true" class="eicon-star"></i>				</div>
			</div>
						<div class="e-icon">
				<div class="e-icon-wrapper e-icon-marked">
					<i aria-hidden="true" class="eicon-star"></i>				</div>
				<div class="e-icon-wrapper e-icon-unmarked">
					<i aria-hidden="true" class="eicon-star"></i>				</div>
			</div>
						<div class="e-icon">
				<div class="e-icon-wrapper e-icon-marked">
					<i aria-hidden="true" class="eicon-star"></i>				</div>
				<div class="e-icon-wrapper e-icon-unmarked">
					<i aria-hidden="true" class="eicon-star"></i>				</div>
			</div>
						<div class="e-icon">
				<div class="e-icon-wrapper e-icon-marked">
					<i aria-hidden="true" class="eicon-star"></i>				</div>
				<div class="e-icon-wrapper e-icon-unmarked">
					<i aria-hidden="true" class="eicon-star"></i>				</div>
			</div>
						</div>
		</div>
				</div>
				</div>
				<div class="elementor-element elementor-element-5b50637 elementor-widget elementor-widget-theme-post-content" data-id="5b50637" data-element_type="widget" data-widget_type="theme-post-content.default">
				<div class="elementor-widget-container">
			
<p>&#8220;Swiss Army knife of marketing tools.&#8221;</p>



<p>While other platforms leave you with disconnected tools and underwhelming results, Bloomreach Engagement brings everything together for a smooth experience, helping you make the most of your data and build stronger relationships with your customers.</p>



<p><font size="3">   <a href="https://www.g2.com/products/bloomreach-bloomreach/reviews/bloomreach-review-6586191" target="blank" rel="noopener">Read the full review</a></font></p>
		</div>
				</div>
		<div class="elementor-element elementor-element-4a89207 e-con-full e-flex e-con e-child" data-id="4a89207" data-element_type="container">
		<div class="elementor-element elementor-element-c1220af e-con-full e-flex e-con e-child" data-id="c1220af" data-element_type="container">
		<div class="elementor-element elementor-element-ae76859 e-con-full e-flex e-con e-child" data-id="ae76859" data-element_type="container">
				<div class="elementor-element elementor-element-95a48e8 elementor-widget elementor-widget-heading" data-id="95a48e8" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<h4 class="elementor-heading-title elementor-size-default">Simon</h4>		</div>
				</div>
				<div class="elementor-element elementor-element-3da3018 elementor-widget elementor-widget-heading" data-id="3da3018" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<h4 class="elementor-heading-title elementor-size-default">Head of Performance</h4>		</div>
				</div>
				</div>
				</div>
				<div class="elementor-element elementor-element-a20d5ca no_border_radius elementor-widget elementor-widget-image" data-id="a20d5ca" data-element_type="widget" data-widget_type="image.default">
				<div class="elementor-widget-container">
													<img decoding="async" width="1000" height="1000" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%201000%201000'%3E%3C/svg%3E" class="attachment-full size-full wp-image-43531" alt="g2-logo" data-lazy-src="https://www.bloomreach.com/wp-content/uploads/2024/07/g2-logo.svg" /><noscript><img decoding="async" width="1000" height="1000" src="https://www.bloomreach.com/wp-content/uploads/2024/07/g2-logo.svg" class="attachment-full size-full wp-image-43531" alt="g2-logo" /></noscript>													</div>
				</div>
				</div>
					</div>
				</div>
				</div>
				<div data-elementor-type="loop-item" data-elementor-id="23118" class="elementor elementor-23118 swiper-slide e-loop-item e-loop-item-52495 post-52495 testimonials type-testimonials status-publish hentry" data-elementor-post-type="elementor_library" role="group" aria-roledescription="slide" data-custom-edit-handle="1">
			<div class="elementor-element elementor-element-919fc81 carousel_box e-flex e-con-boxed e-con e-parent" data-id="919fc81" data-element_type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
					<div class="e-con-inner">
				<div class="elementor-element elementor-element-4bdf156 elementor-widget elementor-widget-rating" data-id="4bdf156" data-element_type="widget" data-widget_type="rating.default">
				<div class="elementor-widget-container">
					<div class="e-rating" itemtype="https://schema.org/Rating" itemscope="" itemprop="reviewRating">
			<meta itemprop="worstRating" content="0">
			<meta itemprop="bestRating" content="5">
			<div class="e-rating-wrapper" itemprop="ratingValue" content="5" role="img" aria-label="Rated 5 out of 5">
							<div class="e-icon">
				<div class="e-icon-wrapper e-icon-marked">
					<i aria-hidden="true" class="eicon-star"></i>				</div>
				<div class="e-icon-wrapper e-icon-unmarked">
					<i aria-hidden="true" class="eicon-star"></i>				</div>
			</div>
						<div class="e-icon">
				<div class="e-icon-wrapper e-icon-marked">
					<i aria-hidden="true" class="eicon-star"></i>				</div>
				<div class="e-icon-wrapper e-icon-unmarked">
					<i aria-hidden="true" class="eicon-star"></i>				</div>
			</div>
						<div class="e-icon">
				<div class="e-icon-wrapper e-icon-marked">
					<i aria-hidden="true" class="eicon-star"></i>				</div>
				<div class="e-icon-wrapper e-icon-unmarked">
					<i aria-hidden="true" class="eicon-star"></i>				</div>
			</div>
						<div class="e-icon">
				<div class="e-icon-wrapper e-icon-marked">
					<i aria-hidden="true" class="eicon-star"></i>				</div>
				<div class="e-icon-wrapper e-icon-unmarked">
					<i aria-hidden="true" class="eicon-star"></i>				</div>
			</div>
						<div class="e-icon">
				<div class="e-icon-wrapper e-icon-marked">
					<i aria-hidden="true" class="eicon-star"></i>				</div>
				<div class="e-icon-wrapper e-icon-unmarked">
					<i aria-hidden="true" class="eicon-star"></i>				</div>
			</div>
						</div>
		</div>
				</div>
				</div>
				<div class="elementor-element elementor-element-5b50637 elementor-widget elementor-widget-theme-post-content" data-id="5b50637" data-element_type="widget" data-widget_type="theme-post-content.default">
				<div class="elementor-widget-container">
			
<p>&#8220;Bloomreach is a product that basically is limitless. I kept generating different ideas that were not out-of-the-box functions of the platform and never once did the support team tell me that the platform was not capable of doing that.&#8221;</p>



<p><font size="3">   <a href="https://www.g2.com/products/bloomreach-bloomreach/reviews/bloomreach-review-4080471" target="blank" rel="noopener">Read the full review</a></font></p>
		</div>
				</div>
		<div class="elementor-element elementor-element-4a89207 e-con-full e-flex e-con e-child" data-id="4a89207" data-element_type="container">
		<div class="elementor-element elementor-element-c1220af e-con-full e-flex e-con e-child" data-id="c1220af" data-element_type="container">
		<div class="elementor-element elementor-element-ae76859 e-con-full e-flex e-con e-child" data-id="ae76859" data-element_type="container">
				<div class="elementor-element elementor-element-95a48e8 elementor-widget elementor-widget-heading" data-id="95a48e8" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<h4 class="elementor-heading-title elementor-size-default">G2 Reviewer</h4>		</div>
				</div>
				</div>
				</div>
				<div class="elementor-element elementor-element-a20d5ca no_border_radius elementor-widget elementor-widget-image" data-id="a20d5ca" data-element_type="widget" data-widget_type="image.default">
				<div class="elementor-widget-container">
													<img decoding="async" width="1000" height="1000" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%201000%201000'%3E%3C/svg%3E" class="attachment-full size-full wp-image-43531" alt="g2-logo" data-lazy-src="https://www.bloomreach.com/wp-content/uploads/2024/07/g2-logo.svg" /><noscript><img decoding="async" width="1000" height="1000" src="https://www.bloomreach.com/wp-content/uploads/2024/07/g2-logo.svg" class="attachment-full size-full wp-image-43531" alt="g2-logo" /></noscript>													</div>
				</div>
				</div>
					</div>
				</div>
				</div>
				</div>
		</div>
					<div class="elementor-swiper-button elementor-swiper-button-prev" role="button" tabindex="0">
				<svg xmlns="http://www.w3.org/2000/svg" width="20" height="21" viewBox="0 0 20 21" fill="none"><path d="M5.46875 9.69336L11.4688 3.72461C11.75 3.41211 12.2188 3.41211 12.5312 3.72461C12.8125 4.00586 12.8125 4.47461 12.5312 4.75586L7.03125 10.2246L12.5 15.7246C12.8125 16.0059 12.8125 16.4746 12.5 16.7559C12.2188 17.0684 11.75 17.0684 11.4688 16.7559L5.46875 10.7559C5.15625 10.4746 5.15625 10.0059 5.46875 9.69336Z" fill="white"></path></svg>			</div>
			<div class="elementor-swiper-button elementor-swiper-button-next" role="button" tabindex="0">
				<svg xmlns="http://www.w3.org/2000/svg" width="20" height="21" viewBox="0 0 20 21" fill="none"><path d="M14.5312 9.69336C14.8125 10.0059 14.8125 10.4746 14.5312 10.7559L8.53125 16.7559C8.21875 17.0684 7.75 17.0684 7.46875 16.7559C7.15625 16.4746 7.15625 16.0059 7.46875 15.7246L12.9375 10.2559L7.46875 4.75586C7.15625 4.47461 7.15625 4.00586 7.46875 3.72461C7.75 3.41211 8.21875 3.41211 8.5 3.72461L14.5312 9.69336Z" fill="white"></path></svg>			</div>
					<div class="swiper-pagination"></div>
				</div>
				</div>
					</div>
				</div>
		<div class="elementor-element elementor-element-1983590 e-flex e-con-boxed e-con e-parent" data-id="1983590" data-element_type="container">
					<div class="e-con-inner">
				<div class="elementor-element elementor-element-b67021e elementor-widget elementor-widget-heading" data-id="b67021e" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<h3 class="elementor-heading-title elementor-size-default">Industry A﻿pproved, Marketer Loved</h3>		</div>
				</div>
		<div class="elementor-element elementor-element-13d2217 e-flex e-con-boxed e-con e-child" data-id="13d2217" data-element_type="container">
					<div class="e-con-inner">
				<div class="elementor-element elementor-element-0314974 elementor-widget__width-initial no_border_radius elementor-widget elementor-widget-image" data-id="0314974" data-element_type="widget" data-widget_type="image.default">
				<div class="elementor-widget-container">
														<a href="https://visit.bloomreach.com/forrester-email-wave-q3-2024" target="_blank" rel="noopener">
							<img decoding="async" width="417" height="417" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20417%20417'%3E%3C/svg%3E" class="attachment-full size-full wp-image-52398" alt="2024Q3_Email-Marketing-Service-Providers_181075_L-1-1" data-lazy-srcset="https://www.bloomreach.com/wp-content/uploads/2024/10/2024Q3_Email-Marketing-Service-Providers_181075_L-1-1.png 417w, https://www.bloomreach.com/wp-content/uploads/2024/10/2024Q3_Email-Marketing-Service-Providers_181075_L-1-1-300x300.png 300w, https://www.bloomreach.com/wp-content/uploads/2024/10/2024Q3_Email-Marketing-Service-Providers_181075_L-1-1-150x150.png 150w" data-lazy-sizes="(max-width: 417px) 100vw, 417px" data-lazy-src="https://www.bloomreach.com/wp-content/uploads/2024/10/2024Q3_Email-Marketing-Service-Providers_181075_L-1-1.png" /><noscript><img decoding="async" width="417" height="417" src="https://www.bloomreach.com/wp-content/uploads/2024/10/2024Q3_Email-Marketing-Service-Providers_181075_L-1-1.png" class="attachment-full size-full wp-image-52398" alt="2024Q3_Email-Marketing-Service-Providers_181075_L-1-1" srcset="https://www.bloomreach.com/wp-content/uploads/2024/10/2024Q3_Email-Marketing-Service-Providers_181075_L-1-1.png 417w, https://www.bloomreach.com/wp-content/uploads/2024/10/2024Q3_Email-Marketing-Service-Providers_181075_L-1-1-300x300.png 300w, https://www.bloomreach.com/wp-content/uploads/2024/10/2024Q3_Email-Marketing-Service-Providers_181075_L-1-1-150x150.png 150w" sizes="(max-width: 417px) 100vw, 417px" /></noscript>								</a>
													</div>
				</div>
				<div class="elementor-element elementor-element-3b2ab25 elementor-widget__width-initial no_border_radius elementor-widget elementor-widget-image" data-id="3b2ab25" data-element_type="widget" data-widget_type="image.default">
				<div class="elementor-widget-container">
													<img decoding="async" width="600" height="600" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20600%20600'%3E%3C/svg%3E" class="attachment-full size-full wp-image-52270" alt="badge_TR_2024" data-lazy-srcset="https://www.bloomreach.com/wp-content/uploads/2024/10/badge_TR_2024.png 600w, https://www.bloomreach.com/wp-content/uploads/2024/10/badge_TR_2024-300x300.png 300w, https://www.bloomreach.com/wp-content/uploads/2024/10/badge_TR_2024-150x150.png 150w" data-lazy-sizes="(max-width: 600px) 100vw, 600px" data-lazy-src="https://www.bloomreach.com/wp-content/uploads/2024/10/badge_TR_2024.png" /><noscript><img decoding="async" width="600" height="600" src="https://www.bloomreach.com/wp-content/uploads/2024/10/badge_TR_2024.png" class="attachment-full size-full wp-image-52270" alt="badge_TR_2024" srcset="https://www.bloomreach.com/wp-content/uploads/2024/10/badge_TR_2024.png 600w, https://www.bloomreach.com/wp-content/uploads/2024/10/badge_TR_2024-300x300.png 300w, https://www.bloomreach.com/wp-content/uploads/2024/10/badge_TR_2024-150x150.png 150w" sizes="(max-width: 600px) 100vw, 600px" /></noscript>													</div>
				</div>
				<div class="elementor-element elementor-element-7150e49 elementor-widget__width-initial no_border_radius elementor-widget elementor-widget-image" data-id="7150e49" data-element_type="widget" data-widget_type="image.default">
				<div class="elementor-widget-container">
													<img decoding="async" width="600" height="600" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20600%20600'%3E%3C/svg%3E" class="attachment-full size-full wp-image-52255" alt="badge_g2_best-software_2024" data-lazy-srcset="https://www.bloomreach.com/wp-content/uploads/2024/10/badge_g2_best-software_2024.png 600w, https://www.bloomreach.com/wp-content/uploads/2024/10/badge_g2_best-software_2024-300x300.png 300w, https://www.bloomreach.com/wp-content/uploads/2024/10/badge_g2_best-software_2024-150x150.png 150w" data-lazy-sizes="(max-width: 600px) 100vw, 600px" data-lazy-src="https://www.bloomreach.com/wp-content/uploads/2024/10/badge_g2_best-software_2024.png" /><noscript><img decoding="async" width="600" height="600" src="https://www.bloomreach.com/wp-content/uploads/2024/10/badge_g2_best-software_2024.png" class="attachment-full size-full wp-image-52255" alt="badge_g2_best-software_2024" srcset="https://www.bloomreach.com/wp-content/uploads/2024/10/badge_g2_best-software_2024.png 600w, https://www.bloomreach.com/wp-content/uploads/2024/10/badge_g2_best-software_2024-300x300.png 300w, https://www.bloomreach.com/wp-content/uploads/2024/10/badge_g2_best-software_2024-150x150.png 150w" sizes="(max-width: 600px) 100vw, 600px" /></noscript>													</div>
				</div>
				<div class="elementor-element elementor-element-b00747f elementor-widget__width-initial no_border_radius elementor-widget elementor-widget-image" data-id="b00747f" data-element_type="widget" data-widget_type="image.default">
				<div class="elementor-widget-container">
													<img decoding="async" width="600" height="600" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20600%20600'%3E%3C/svg%3E" class="attachment-full size-full wp-image-52261" alt="badge_g2_fall2024" data-lazy-srcset="https://www.bloomreach.com/wp-content/uploads/2024/10/badge_g2_fall2024.png 600w, https://www.bloomreach.com/wp-content/uploads/2024/10/badge_g2_fall2024-300x300.png 300w, https://www.bloomreach.com/wp-content/uploads/2024/10/badge_g2_fall2024-150x150.png 150w" data-lazy-sizes="(max-width: 600px) 100vw, 600px" data-lazy-src="https://www.bloomreach.com/wp-content/uploads/2024/10/badge_g2_fall2024.png" /><noscript><img decoding="async" width="600" height="600" src="https://www.bloomreach.com/wp-content/uploads/2024/10/badge_g2_fall2024.png" class="attachment-full size-full wp-image-52261" alt="badge_g2_fall2024" srcset="https://www.bloomreach.com/wp-content/uploads/2024/10/badge_g2_fall2024.png 600w, https://www.bloomreach.com/wp-content/uploads/2024/10/badge_g2_fall2024-300x300.png 300w, https://www.bloomreach.com/wp-content/uploads/2024/10/badge_g2_fall2024-150x150.png 150w" sizes="(max-width: 600px) 100vw, 600px" /></noscript>													</div>
				</div>
				<div class="elementor-element elementor-element-b293fae elementor-widget__width-initial no_border_radius elementor-widget elementor-widget-image" data-id="b293fae" data-element_type="widget" data-widget_type="image.default">
				<div class="elementor-widget-container">
													<img decoding="async" width="600" height="600" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20600%20600'%3E%3C/svg%3E" class="attachment-full size-full wp-image-52264" alt="badge_g2_meets-requirements_2024" data-lazy-srcset="https://www.bloomreach.com/wp-content/uploads/2024/10/badge_g2_meets-requirements_2024.png 600w, https://www.bloomreach.com/wp-content/uploads/2024/10/badge_g2_meets-requirements_2024-300x300.png 300w, https://www.bloomreach.com/wp-content/uploads/2024/10/badge_g2_meets-requirements_2024-150x150.png 150w" data-lazy-sizes="(max-width: 600px) 100vw, 600px" data-lazy-src="https://www.bloomreach.com/wp-content/uploads/2024/10/badge_g2_meets-requirements_2024.png" /><noscript><img decoding="async" width="600" height="600" src="https://www.bloomreach.com/wp-content/uploads/2024/10/badge_g2_meets-requirements_2024.png" class="attachment-full size-full wp-image-52264" alt="badge_g2_meets-requirements_2024" srcset="https://www.bloomreach.com/wp-content/uploads/2024/10/badge_g2_meets-requirements_2024.png 600w, https://www.bloomreach.com/wp-content/uploads/2024/10/badge_g2_meets-requirements_2024-300x300.png 300w, https://www.bloomreach.com/wp-content/uploads/2024/10/badge_g2_meets-requirements_2024-150x150.png 150w" sizes="(max-width: 600px) 100vw, 600px" /></noscript>													</div>
				</div>
				<div class="elementor-element elementor-element-ac5d535 elementor-widget__width-initial no_border_radius elementor-widget elementor-widget-image" data-id="ac5d535" data-element_type="widget" data-widget_type="image.default">
				<div class="elementor-widget-container">
													<img decoding="async" width="600" height="600" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20600%20600'%3E%3C/svg%3E" class="attachment-full size-full wp-image-52258" alt="badge_g2_best-support_2024" data-lazy-srcset="https://www.bloomreach.com/wp-content/uploads/2024/10/badge_g2_best-support_2024.png 600w, https://www.bloomreach.com/wp-content/uploads/2024/10/badge_g2_best-support_2024-300x300.png 300w, https://www.bloomreach.com/wp-content/uploads/2024/10/badge_g2_best-support_2024-150x150.png 150w" data-lazy-sizes="(max-width: 600px) 100vw, 600px" data-lazy-src="https://www.bloomreach.com/wp-content/uploads/2024/10/badge_g2_best-support_2024.png" /><noscript><img decoding="async" width="600" height="600" src="https://www.bloomreach.com/wp-content/uploads/2024/10/badge_g2_best-support_2024.png" class="attachment-full size-full wp-image-52258" alt="badge_g2_best-support_2024" srcset="https://www.bloomreach.com/wp-content/uploads/2024/10/badge_g2_best-support_2024.png 600w, https://www.bloomreach.com/wp-content/uploads/2024/10/badge_g2_best-support_2024-300x300.png 300w, https://www.bloomreach.com/wp-content/uploads/2024/10/badge_g2_best-support_2024-150x150.png 150w" sizes="(max-width: 600px) 100vw, 600px" /></noscript>													</div>
				</div>
					</div>
				</div>
					</div>
				</div>
		<div class="elementor-element elementor-element-c72db5d e-flex e-con-boxed e-con e-parent" data-id="c72db5d" data-element_type="container">
					<div class="e-con-inner">
		<div class="elementor-element elementor-element-f2c3c61 e-con-full e-flex e-con e-child" data-id="f2c3c61" data-element_type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
				<div class="elementor-element elementor-element-637160e elementor-widget__width-initial elementor-widget elementor-widget-image" data-id="637160e" data-element_type="widget" data-widget_type="image.default">
				<div class="elementor-widget-container">
													<img decoding="async" width="1024" height="819" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%201024%20819'%3E%3C/svg%3E" class="attachment-full size-full wp-image-53510" alt="banner-img-1" data-lazy-srcset="https://www.bloomreach.com/wp-content/uploads/2024/05/banner-img-1.webp 1024w, https://www.bloomreach.com/wp-content/uploads/2024/05/banner-img-1-300x240.webp 300w, https://www.bloomreach.com/wp-content/uploads/2024/05/banner-img-1-768x614.webp 768w" data-lazy-sizes="(max-width: 1024px) 100vw, 1024px" data-lazy-src="https://www.bloomreach.com/wp-content/uploads/2024/05/banner-img-1.webp" /><noscript><img decoding="async" width="1024" height="819" src="https://www.bloomreach.com/wp-content/uploads/2024/05/banner-img-1.webp" class="attachment-full size-full wp-image-53510" alt="banner-img-1" srcset="https://www.bloomreach.com/wp-content/uploads/2024/05/banner-img-1.webp 1024w, https://www.bloomreach.com/wp-content/uploads/2024/05/banner-img-1-300x240.webp 300w, https://www.bloomreach.com/wp-content/uploads/2024/05/banner-img-1-768x614.webp 768w" sizes="(max-width: 1024px) 100vw, 1024px" /></noscript>													</div>
				</div>
		<div class="elementor-element elementor-element-8129df6 e-con-full e-flex e-con e-child" data-id="8129df6" data-element_type="container">
				<div class="elementor-element elementor-element-89bc0df elementor-widget elementor-widget-heading" data-id="89bc0df" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<h2 class="elementor-heading-title elementor-size-default">30 Minutes to Better Marketing</h2>		</div>
				</div>
				<div class="elementor-element elementor-element-8298b11 elementor-widget elementor-widget-text-editor" data-id="8298b11" data-element_type="widget" data-widget_type="text-editor.default">
				<div class="elementor-widget-container">
							<p>In just 30 minutes, discover how Bloomreach can help you overcome your biggest marketing hurdles. Schedule a no-pressure consultation and let&#8217;s discuss your needs.</p>						</div>
				</div>
		<div class="elementor-element elementor-element-a0c2315 e-con-full e-flex e-con e-child" data-id="a0c2315" data-element_type="container">
				<div class="elementor-element elementor-element-2e7bd66 elementor-widget elementor-widget-bloomreach_buttons" data-id="2e7bd66" data-element_type="widget" data-widget_type="bloomreach_buttons.default">
				<div class="elementor-widget-container">
			<div></div>        <a class="br-cta "  href="/en/request-demo"><strong>Schedule a Demo</strong><span></span></a>
        		</div>
				</div>
				</div>
				</div>
				</div>
					</div>
				</div>
		<div class="elementor-element elementor-element-815c874 e-flex e-con-boxed e-con e-parent" data-id="815c874" data-element_type="container">
					<div class="e-con-inner">
		<div class="elementor-element elementor-element-68da32c e-con-full e-flex e-con e-child" data-id="68da32c" data-element_type="container">
				<div class="elementor-element elementor-element-ec75240 elementor-widget elementor-widget-heading" data-id="ec75240" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<h2 class="elementor-heading-title elementor-size-default">One Platform, 13+ Ways To Connect With Your ﻿Audience</h2>		</div>
				</div>
				</div>
		<div class="elementor-element elementor-element-a5142a4 e-con-full e-flex e-con e-child" data-id="a5142a4" data-element_type="container">
		<a class="elementor-element elementor-element-7774007 e-con-full product_box e-flex e-con e-child" data-id="7774007" data-element_type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}" href="https://www.bloomreach.com/en/products/engagement/email-marketing" target="_blank">
		<div class="elementor-element elementor-element-293493f e-con-full e-flex e-con e-child" data-id="293493f" data-element_type="container">
				<div class="elementor-element elementor-element-07c33cb elementor-widget__width-initial elementor-view-default elementor-widget elementor-widget-icon" data-id="07c33cb" data-element_type="widget" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<i aria-hidden="true" class="icon icon-email-action-unread"></i>			</div>
		</div>
				</div>
				</div>
				<div class="elementor-element elementor-element-7187c0b elementor-widget__width-inherit elementor-widget elementor-widget-heading" data-id="7187c0b" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<h3 class="elementor-heading-title elementor-size-default">Email Marketing</h3>		</div>
				</div>
				</div>
				<div class="elementor-element elementor-element-d1918b4 elementor-widget elementor-widget-text-editor" data-id="d1918b4" data-element_type="widget" data-widget_type="text-editor.default">
				<div class="elementor-widget-container">
							Drive more revenue with fewer emails.						</div>
				</div>
				<div class="elementor-element elementor-element-49162dd elementor-widget__width-initial elementor-absolute product_button_icon elementor-view-default elementor-widget elementor-widget-icon" data-id="49162dd" data-element_type="widget" data-settings="{&quot;_position&quot;:&quot;absolute&quot;}" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<svg xmlns="http://www.w3.org/2000/svg" width="24" height="25" viewBox="0 0 24 25" fill="none"><rect y="0.495117" width="24" height="24" rx="12" fill="#14A1D0"></rect><path d="M15.1875 9.24512C15.4922 9.24512 15.75 9.50293 15.75 9.80762V15.4326C15.75 15.7607 15.4922 15.9951 15.1875 15.9951C14.8594 15.9951 14.625 15.7607 14.625 15.4326V11.167L9.21094 16.5811C8.97656 16.8154 8.625 16.8154 8.41406 16.5811C8.17969 16.3701 8.17969 16.0186 8.41406 15.8076L13.8281 10.3936H9.5625C9.23438 10.3936 9 10.1357 9 9.83105C9 9.50293 9.23438 9.26855 9.5625 9.26855H15.1875V9.24512Z" fill="white"></path></svg>			</div>
		</div>
				</div>
				</div>
		<div class="elementor-element elementor-element-90dfa61 e-con-full call_to_action_link e-flex e-con e-child" data-id="90dfa61" data-element_type="container">
				<div class="elementor-element elementor-element-172fa99 elementor-widget elementor-widget-heading" data-id="172fa99" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<div class="elementor-heading-title elementor-size-default">Learn More</div>		</div>
				</div>
				<div class="elementor-element elementor-element-15d7e72 elementor-widget__width-initial elementor-view-default elementor-widget elementor-widget-icon" data-id="15d7e72" data-element_type="widget" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<svg xmlns="http://www.w3.org/2000/svg" width="25" height="24" viewBox="0 0 25 24" fill="none"><path d="M9.87079 16.9496L15.5778 11.2426L9.87079 5.53564L8.45679 6.94964L12.7498 11.2426L8.45679 15.5356L9.87079 16.9496Z" fill="#019ACE"></path></svg>			</div>
		</div>
				</div>
				</div>
				</div>
				</a>
		<a class="elementor-element elementor-element-6f5d66d e-con-full product_box e-flex e-con e-child" data-id="6f5d66d" data-element_type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}" href="https://www.bloomreach.com/en/products/engagement/mobile-messaging" target="_blank">
		<div class="elementor-element elementor-element-51db3a5 e-con-full e-flex e-con e-child" data-id="51db3a5" data-element_type="container">
				<div class="elementor-element elementor-element-d726bdd elementor-widget__width-initial elementor-view-default elementor-widget elementor-widget-icon" data-id="d726bdd" data-element_type="widget" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<i aria-hidden="true" class="icon icon-phone-type"></i>			</div>
		</div>
				</div>
				</div>
				<div class="elementor-element elementor-element-190accc elementor-widget__width-inherit elementor-widget elementor-widget-heading" data-id="190accc" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<h3 class="elementor-heading-title elementor-size-default">SMS and Messaging</h3>		</div>
				</div>
				</div>
				<div class="elementor-element elementor-element-ac1efdf elementor-widget elementor-widget-text-editor" data-id="ac1efdf" data-element_type="widget" data-widget_type="text-editor.default">
				<div class="elementor-widget-container">
							Text less and convert more customers.						</div>
				</div>
				<div class="elementor-element elementor-element-47c731e elementor-widget__width-initial elementor-absolute product_button_icon elementor-view-default elementor-widget elementor-widget-icon" data-id="47c731e" data-element_type="widget" data-settings="{&quot;_position&quot;:&quot;absolute&quot;}" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<svg xmlns="http://www.w3.org/2000/svg" width="24" height="25" viewBox="0 0 24 25" fill="none"><rect y="0.495117" width="24" height="24" rx="12" fill="#14A1D0"></rect><path d="M15.1875 9.24512C15.4922 9.24512 15.75 9.50293 15.75 9.80762V15.4326C15.75 15.7607 15.4922 15.9951 15.1875 15.9951C14.8594 15.9951 14.625 15.7607 14.625 15.4326V11.167L9.21094 16.5811C8.97656 16.8154 8.625 16.8154 8.41406 16.5811C8.17969 16.3701 8.17969 16.0186 8.41406 15.8076L13.8281 10.3936H9.5625C9.23438 10.3936 9 10.1357 9 9.83105C9 9.50293 9.23438 9.26855 9.5625 9.26855H15.1875V9.24512Z" fill="white"></path></svg>			</div>
		</div>
				</div>
				</div>
		<div class="elementor-element elementor-element-03684fd e-con-full call_to_action_link e-flex e-con e-child" data-id="03684fd" data-element_type="container">
				<div class="elementor-element elementor-element-dd3ee13 elementor-widget elementor-widget-heading" data-id="dd3ee13" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<div class="elementor-heading-title elementor-size-default">Learn More</div>		</div>
				</div>
				<div class="elementor-element elementor-element-4a93292 elementor-widget__width-initial elementor-view-default elementor-widget elementor-widget-icon" data-id="4a93292" data-element_type="widget" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<svg xmlns="http://www.w3.org/2000/svg" width="25" height="24" viewBox="0 0 25 24" fill="none"><path d="M9.87079 16.9496L15.5778 11.2426L9.87079 5.53564L8.45679 6.94964L12.7498 11.2426L8.45679 15.5356L9.87079 16.9496Z" fill="#019ACE"></path></svg>			</div>
		</div>
				</div>
				</div>
				</div>
				</a>
		<a class="elementor-element elementor-element-f05904c e-con-full product_box e-flex e-con e-child" data-id="f05904c" data-element_type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}" href="https://www.bloomreach.com/en/products/engagement/mobile-messaging/whatsapp-marketing" target="_blank">
		<div class="elementor-element elementor-element-a36ad03 e-con-full e-flex e-con e-child" data-id="a36ad03" data-element_type="container">
				<div class="elementor-element elementor-element-89ded3b elementor-widget__width-initial elementor-view-default elementor-widget elementor-widget-icon" data-id="89ded3b" data-element_type="widget" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<i aria-hidden="true" class="icon icon-phone-type"></i>			</div>
		</div>
				</div>
				</div>
				<div class="elementor-element elementor-element-884d7d4 elementor-widget__width-inherit elementor-widget elementor-widget-heading" data-id="884d7d4" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<h3 class="elementor-heading-title elementor-size-default">WhatsApp</h3>		</div>
				</div>
				</div>
				<div class="elementor-element elementor-element-0400420 elementor-widget elementor-widget-text-editor" data-id="0400420" data-element_type="widget" data-widget_type="text-editor.default">
				<div class="elementor-widget-container">
							Unlock personalized conversational messaging.						</div>
				</div>
				<div class="elementor-element elementor-element-e091acd elementor-widget__width-initial elementor-absolute product_button_icon elementor-view-default elementor-widget elementor-widget-icon" data-id="e091acd" data-element_type="widget" data-settings="{&quot;_position&quot;:&quot;absolute&quot;}" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<svg xmlns="http://www.w3.org/2000/svg" width="24" height="25" viewBox="0 0 24 25" fill="none"><rect y="0.495117" width="24" height="24" rx="12" fill="#14A1D0"></rect><path d="M15.1875 9.24512C15.4922 9.24512 15.75 9.50293 15.75 9.80762V15.4326C15.75 15.7607 15.4922 15.9951 15.1875 15.9951C14.8594 15.9951 14.625 15.7607 14.625 15.4326V11.167L9.21094 16.5811C8.97656 16.8154 8.625 16.8154 8.41406 16.5811C8.17969 16.3701 8.17969 16.0186 8.41406 15.8076L13.8281 10.3936H9.5625C9.23438 10.3936 9 10.1357 9 9.83105C9 9.50293 9.23438 9.26855 9.5625 9.26855H15.1875V9.24512Z" fill="white"></path></svg>			</div>
		</div>
				</div>
				</div>
		<div class="elementor-element elementor-element-e6b4b80 e-con-full call_to_action_link e-flex e-con e-child" data-id="e6b4b80" data-element_type="container">
				<div class="elementor-element elementor-element-2cdacc5 elementor-widget elementor-widget-heading" data-id="2cdacc5" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<div class="elementor-heading-title elementor-size-default">Learn More</div>		</div>
				</div>
				<div class="elementor-element elementor-element-8a012c8 elementor-widget__width-initial elementor-view-default elementor-widget elementor-widget-icon" data-id="8a012c8" data-element_type="widget" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<svg xmlns="http://www.w3.org/2000/svg" width="25" height="24" viewBox="0 0 25 24" fill="none"><path d="M9.87079 16.9496L15.5778 11.2426L9.87079 5.53564L8.45679 6.94964L12.7498 11.2426L8.45679 15.5356L9.87079 16.9496Z" fill="#019ACE"></path></svg>			</div>
		</div>
				</div>
				</div>
				</div>
				</a>
		<a class="elementor-element elementor-element-cbdc96d e-con-full product_box e-flex e-con e-child" data-id="cbdc96d" data-element_type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}" href="https://www.bloomreach.com/en/products/engagement/web-personalization" target="_blank">
		<div class="elementor-element elementor-element-e4d3714 e-con-full e-flex e-con e-child" data-id="e4d3714" data-element_type="container">
				<div class="elementor-element elementor-element-b16b9b3 elementor-widget__width-initial elementor-view-default elementor-widget elementor-widget-icon" data-id="b16b9b3" data-element_type="widget" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<i aria-hidden="true" class="icon icon-browser-page-layout"></i>			</div>
		</div>
				</div>
				</div>
				<div class="elementor-element elementor-element-1787128 elementor-widget__width-inherit elementor-widget elementor-widget-heading" data-id="1787128" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<h3 class="elementor-heading-title elementor-size-default">Web</h3>		</div>
				</div>
				</div>
				<div class="elementor-element elementor-element-040f734 elementor-widget elementor-widget-text-editor" data-id="040f734" data-element_type="widget" data-widget_type="text-editor.default">
				<div class="elementor-widget-container">
							Implement real-time personalization and A/B testing for faster ROI.						</div>
				</div>
				<div class="elementor-element elementor-element-7240fcc elementor-widget__width-initial elementor-absolute product_button_icon elementor-view-default elementor-widget elementor-widget-icon" data-id="7240fcc" data-element_type="widget" data-settings="{&quot;_position&quot;:&quot;absolute&quot;}" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<svg xmlns="http://www.w3.org/2000/svg" width="24" height="25" viewBox="0 0 24 25" fill="none"><rect y="0.495117" width="24" height="24" rx="12" fill="#14A1D0"></rect><path d="M15.1875 9.24512C15.4922 9.24512 15.75 9.50293 15.75 9.80762V15.4326C15.75 15.7607 15.4922 15.9951 15.1875 15.9951C14.8594 15.9951 14.625 15.7607 14.625 15.4326V11.167L9.21094 16.5811C8.97656 16.8154 8.625 16.8154 8.41406 16.5811C8.17969 16.3701 8.17969 16.0186 8.41406 15.8076L13.8281 10.3936H9.5625C9.23438 10.3936 9 10.1357 9 9.83105C9 9.50293 9.23438 9.26855 9.5625 9.26855H15.1875V9.24512Z" fill="white"></path></svg>			</div>
		</div>
				</div>
				</div>
		<div class="elementor-element elementor-element-e38ab92 e-con-full call_to_action_link e-flex e-con e-child" data-id="e38ab92" data-element_type="container">
				<div class="elementor-element elementor-element-8ea9ce3 elementor-widget elementor-widget-heading" data-id="8ea9ce3" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<div class="elementor-heading-title elementor-size-default">Learn More</div>		</div>
				</div>
				<div class="elementor-element elementor-element-fb5c5f2 elementor-widget__width-initial elementor-view-default elementor-widget elementor-widget-icon" data-id="fb5c5f2" data-element_type="widget" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<svg xmlns="http://www.w3.org/2000/svg" width="25" height="24" viewBox="0 0 25 24" fill="none"><path d="M9.87079 16.9496L15.5778 11.2426L9.87079 5.53564L8.45679 6.94964L12.7498 11.2426L8.45679 15.5356L9.87079 16.9496Z" fill="#019ACE"></path></svg>			</div>
		</div>
				</div>
				</div>
				</div>
				</a>
		<a class="elementor-element elementor-element-6b0fc83 e-con-full product_box e-flex e-con e-child" data-id="6b0fc83" data-element_type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}" href="https://www.bloomreach.com/en/products/engagement/mobile-app-marketing" target="_blank">
		<div class="elementor-element elementor-element-767793c e-con-full e-flex e-con e-child" data-id="767793c" data-element_type="container">
				<div class="elementor-element elementor-element-0a0bdc2 elementor-widget__width-initial elementor-view-default elementor-widget elementor-widget-icon" data-id="0a0bdc2" data-element_type="widget" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<i aria-hidden="true" class="icon icon-mobile-phone"></i>			</div>
		</div>
				</div>
				</div>
				<div class="elementor-element elementor-element-5b6bb84 elementor-widget__width-inherit elementor-widget elementor-widget-heading" data-id="5b6bb84" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<h3 class="elementor-heading-title elementor-size-default">Mobile App</h3>		</div>
				</div>
				</div>
				<div class="elementor-element elementor-element-07720aa elementor-widget elementor-widget-text-editor" data-id="07720aa" data-element_type="widget" data-widget_type="text-editor.default">
				<div class="elementor-widget-container">
							Drive engagement and retention with personalized mobile messages.						</div>
				</div>
				<div class="elementor-element elementor-element-9f7f298 elementor-widget__width-initial elementor-absolute product_button_icon elementor-view-default elementor-widget elementor-widget-icon" data-id="9f7f298" data-element_type="widget" data-settings="{&quot;_position&quot;:&quot;absolute&quot;}" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<svg xmlns="http://www.w3.org/2000/svg" width="24" height="25" viewBox="0 0 24 25" fill="none"><rect y="0.495117" width="24" height="24" rx="12" fill="#14A1D0"></rect><path d="M15.1875 9.24512C15.4922 9.24512 15.75 9.50293 15.75 9.80762V15.4326C15.75 15.7607 15.4922 15.9951 15.1875 15.9951C14.8594 15.9951 14.625 15.7607 14.625 15.4326V11.167L9.21094 16.5811C8.97656 16.8154 8.625 16.8154 8.41406 16.5811C8.17969 16.3701 8.17969 16.0186 8.41406 15.8076L13.8281 10.3936H9.5625C9.23438 10.3936 9 10.1357 9 9.83105C9 9.50293 9.23438 9.26855 9.5625 9.26855H15.1875V9.24512Z" fill="white"></path></svg>			</div>
		</div>
				</div>
				</div>
		<div class="elementor-element elementor-element-74767bd e-con-full call_to_action_link e-flex e-con e-child" data-id="74767bd" data-element_type="container">
				<div class="elementor-element elementor-element-9eaab8e elementor-widget elementor-widget-heading" data-id="9eaab8e" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<div class="elementor-heading-title elementor-size-default">Learn More</div>		</div>
				</div>
				<div class="elementor-element elementor-element-ee9af40 elementor-widget__width-initial elementor-view-default elementor-widget elementor-widget-icon" data-id="ee9af40" data-element_type="widget" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<svg xmlns="http://www.w3.org/2000/svg" width="25" height="24" viewBox="0 0 25 24" fill="none"><path d="M9.87079 16.9496L15.5778 11.2426L9.87079 5.53564L8.45679 6.94964L12.7498 11.2426L8.45679 15.5356L9.87079 16.9496Z" fill="#019ACE"></path></svg>			</div>
		</div>
				</div>
				</div>
				</div>
				</a>
		<a class="elementor-element elementor-element-f560c70 e-con-full product_box e-flex e-con e-child" data-id="f560c70" data-element_type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}" href="https://www.bloomreach.com/en/products/engagement/ads-retargeting" target="_blank">
		<div class="elementor-element elementor-element-9b2e270 e-con-full e-flex e-con e-child" data-id="9b2e270" data-element_type="container">
				<div class="elementor-element elementor-element-cab1bb4 elementor-widget__width-initial elementor-view-default elementor-widget elementor-widget-icon" data-id="cab1bb4" data-element_type="widget" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<i aria-hidden="true" class="icon icon-ui-webpage-slider"></i>			</div>
		</div>
				</div>
				</div>
				<div class="elementor-element elementor-element-dbc15b1 elementor-widget__width-inherit elementor-widget elementor-widget-heading" data-id="dbc15b1" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<h3 class="elementor-heading-title elementor-size-default">Ads and Retargeting</h3>		</div>
				</div>
				</div>
				<div class="elementor-element elementor-element-405af4a elementor-widget elementor-widget-text-editor" data-id="405af4a" data-element_type="widget" data-widget_type="text-editor.default">
				<div class="elementor-widget-container">
							<p>Reduce CAC on popular ad platforms with your existing data.</p>						</div>
				</div>
				<div class="elementor-element elementor-element-6df355e elementor-widget__width-initial elementor-absolute product_button_icon elementor-view-default elementor-widget elementor-widget-icon" data-id="6df355e" data-element_type="widget" data-settings="{&quot;_position&quot;:&quot;absolute&quot;}" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<svg xmlns="http://www.w3.org/2000/svg" width="24" height="25" viewBox="0 0 24 25" fill="none"><rect y="0.495117" width="24" height="24" rx="12" fill="#14A1D0"></rect><path d="M15.1875 9.24512C15.4922 9.24512 15.75 9.50293 15.75 9.80762V15.4326C15.75 15.7607 15.4922 15.9951 15.1875 15.9951C14.8594 15.9951 14.625 15.7607 14.625 15.4326V11.167L9.21094 16.5811C8.97656 16.8154 8.625 16.8154 8.41406 16.5811C8.17969 16.3701 8.17969 16.0186 8.41406 15.8076L13.8281 10.3936H9.5625C9.23438 10.3936 9 10.1357 9 9.83105C9 9.50293 9.23438 9.26855 9.5625 9.26855H15.1875V9.24512Z" fill="white"></path></svg>			</div>
		</div>
				</div>
				</div>
		<div class="elementor-element elementor-element-6c9bd68 e-con-full call_to_action_link e-flex e-con e-child" data-id="6c9bd68" data-element_type="container">
				<div class="elementor-element elementor-element-f1bc5fe elementor-widget elementor-widget-heading" data-id="f1bc5fe" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<div class="elementor-heading-title elementor-size-default">Learn More</div>		</div>
				</div>
				<div class="elementor-element elementor-element-9cb2020 elementor-widget__width-initial elementor-view-default elementor-widget elementor-widget-icon" data-id="9cb2020" data-element_type="widget" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<svg xmlns="http://www.w3.org/2000/svg" width="25" height="24" viewBox="0 0 25 24" fill="none"><path d="M9.87079 16.9496L15.5778 11.2426L9.87079 5.53564L8.45679 6.94964L12.7498 11.2426L8.45679 15.5356L9.87079 16.9496Z" fill="#019ACE"></path></svg>			</div>
		</div>
				</div>
				</div>
				</div>
				</a>
				</div>
					</div>
				</div>
		<div class="elementor-element elementor-element-f4af166 e-flex e-con-boxed e-con e-parent" data-id="f4af166" data-element_type="container">
					<div class="e-con-inner">
		<div class="elementor-element elementor-element-d917a10 e-con-full e-flex e-con e-child" data-id="d917a10" data-element_type="container">
				<div class="elementor-element elementor-element-6bfd2c8 elementor-widget elementor-widget-heading" data-id="6bfd2c8" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<h2 class="elementor-heading-title elementor-size-default">Maximize the Power of Y﻿our Marketing Channels</h2>		</div>
				</div>
				</div>
		<div class="elementor-element elementor-element-27e42f2 e-con-full e-flex e-con e-child" data-id="27e42f2" data-element_type="container">
		<a class="elementor-element elementor-element-76e77e7 e-con-full product_box e-flex e-con e-child" data-id="76e77e7" data-element_type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}" href="https://www.bloomreach.com/en/products/engagement/omnichannel-orchestration" target="_blank">
		<div class="elementor-element elementor-element-205b86e e-con-full e-flex e-con e-child" data-id="205b86e" data-element_type="container">
				<div class="elementor-element elementor-element-85edf7a elementor-widget__width-initial elementor-view-default elementor-widget elementor-widget-icon" data-id="85edf7a" data-element_type="widget" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<i aria-hidden="true" class="icon icon-hierarchy-9"></i>			</div>
		</div>
				</div>
				</div>
				<div class="elementor-element elementor-element-6ca0e99 elementor-widget__width-inherit elementor-widget elementor-widget-heading" data-id="6ca0e99" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<h3 class="elementor-heading-title elementor-size-default">Omnichannel Orchestration</h3>		</div>
				</div>
				</div>
				<div class="elementor-element elementor-element-3350fbb elementor-widget elementor-widget-text-editor" data-id="3350fbb" data-element_type="widget" data-widget_type="text-editor.default">
				<div class="elementor-widget-container">
							<p>Deliver consistent experiences across channels for profitable revenue growth.</p>						</div>
				</div>
				<div class="elementor-element elementor-element-deef0d0 elementor-widget__width-initial elementor-absolute product_button_icon elementor-view-default elementor-widget elementor-widget-icon" data-id="deef0d0" data-element_type="widget" data-settings="{&quot;_position&quot;:&quot;absolute&quot;}" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<svg xmlns="http://www.w3.org/2000/svg" width="24" height="25" viewBox="0 0 24 25" fill="none"><rect y="0.495117" width="24" height="24" rx="12" fill="#14A1D0"></rect><path d="M15.1875 9.24512C15.4922 9.24512 15.75 9.50293 15.75 9.80762V15.4326C15.75 15.7607 15.4922 15.9951 15.1875 15.9951C14.8594 15.9951 14.625 15.7607 14.625 15.4326V11.167L9.21094 16.5811C8.97656 16.8154 8.625 16.8154 8.41406 16.5811C8.17969 16.3701 8.17969 16.0186 8.41406 15.8076L13.8281 10.3936H9.5625C9.23438 10.3936 9 10.1357 9 9.83105C9 9.50293 9.23438 9.26855 9.5625 9.26855H15.1875V9.24512Z" fill="white"></path></svg>			</div>
		</div>
				</div>
				</div>
		<div class="elementor-element elementor-element-2b93178 e-con-full call_to_action_link e-flex e-con e-child" data-id="2b93178" data-element_type="container">
				<div class="elementor-element elementor-element-47f02b6 elementor-widget elementor-widget-heading" data-id="47f02b6" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<div class="elementor-heading-title elementor-size-default">Learn More</div>		</div>
				</div>
				<div class="elementor-element elementor-element-df72616 elementor-widget__width-initial elementor-view-default elementor-widget elementor-widget-icon" data-id="df72616" data-element_type="widget" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<svg xmlns="http://www.w3.org/2000/svg" width="25" height="24" viewBox="0 0 25 24" fill="none"><path d="M9.87079 16.9496L15.5778 11.2426L9.87079 5.53564L8.45679 6.94964L12.7498 11.2426L8.45679 15.5356L9.87079 16.9496Z" fill="#019ACE"></path></svg>			</div>
		</div>
				</div>
				</div>
				</div>
				</a>
		<a class="elementor-element elementor-element-70f637d e-con-full product_box e-flex e-con e-child" data-id="70f637d" data-element_type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}" href="https://www.bloomreach.com/en/products/engagement/marketing-intelligence-and-ai" target="_blank">
		<div class="elementor-element elementor-element-7d0b07a e-con-full e-flex e-con e-child" data-id="7d0b07a" data-element_type="container">
				<div class="elementor-element elementor-element-58b5b24 elementor-widget__width-initial elementor-view-default elementor-widget elementor-widget-icon" data-id="58b5b24" data-element_type="widget" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<svg xmlns="http://www.w3.org/2000/svg" width="52.083" height="66.868" viewBox="0 0 52.083 66.868"><g id="Marketing_Intelligence_and_AI" data-name="Marketing Intelligence and AI" transform="translate(0)"><g id="lightbulb" transform="translate(7.335 15.015)"><path id="Path_3211" data-name="Path 3211" d="M28.019,53.353H18.393a4.272,4.272,0,0,1-4.267-4.267V44.819h18.16v4.267A4.272,4.272,0,0,1,28.019,53.353ZM17.846,48.54v.547a.553.553,0,0,0,.546.547h9.626a.553.553,0,0,0,.546-.547V48.54Zm12.579-4.813H15.986A4.272,4.272,0,0,1,11.72,39.46V34.885A18.289,18.289,0,0,1,4.5,20.207a18.706,18.706,0,1,1,37.412,0,18.879,18.879,0,0,1-7.22,14.64V39.46A4.272,4.272,0,0,1,30.426,43.726ZM23.206,5.22A14.883,14.883,0,0,0,8.22,20.207a14.54,14.54,0,0,0,6.391,12.17l.828.552V39.46a.553.553,0,0,0,.546.547H30.426a.553.553,0,0,0,.546-.547V32.973l.771-.557a15.214,15.214,0,0,0,6.449-12.21A14.883,14.883,0,0,0,23.206,5.22Z" transform="translate(-4.5 -1.5)" fill="#002840"></path></g><path id="Line_82" data-name="Line 82" d="M1.36,10.661A1.86,1.86,0,0,1-.5,8.8V1.36a1.86,1.86,0,1,1,3.72,0V8.8A1.86,1.86,0,0,1,1.36,10.661Z" transform="translate(24.681 0.5)" fill="#002840"></path><path id="Line_83" data-name="Line 83" d="M1.36,6.94A1.86,1.86,0,0,1,.045,3.765L3.765.045A1.86,1.86,0,0,1,6.4,2.675L2.675,6.4A1.854,1.854,0,0,1,1.36,6.94Z" transform="translate(37.702 4.22)" fill="#002840"></path><path id="Line_85" data-name="Line 85" d="M1.362,5.215A1.86,1.86,0,0,1,.4,1.765L3.683-.23A1.86,1.86,0,1,1,5.613,2.951L2.325,4.945A1.851,1.851,0,0,1,1.362,5.215Z" transform="translate(45.574 15.381)" fill="#002840"></path><path id="Line_86" data-name="Line 86" d="M4.646,5.215a1.851,1.851,0,0,1-.963-.27L.4,2.951A1.86,1.86,0,1,1,2.325-.23L5.613,1.765a1.86,1.86,0,0,1-.967,3.451Z" transform="translate(0.5 15.381)" fill="#002840"></path><path id="Line_84" data-name="Line 84" d="M5.08,6.94A1.854,1.854,0,0,1,3.765,6.4L.045,2.675A1.86,1.86,0,0,1,2.675.045L6.4,3.765A1.86,1.86,0,0,1,5.08,6.94Z" transform="translate(7.941 4.22)" fill="#002840"></path></g></svg>			</div>
		</div>
				</div>
				</div>
				<div class="elementor-element elementor-element-e07fc9d elementor-widget__width-inherit elementor-widget elementor-widget-heading" data-id="e07fc9d" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<h3 class="elementor-heading-title elementor-size-default">Marketing Intelligence and AI</h3>		</div>
				</div>
				</div>
				<div class="elementor-element elementor-element-b25e061 elementor-widget elementor-widget-text-editor" data-id="b25e061" data-element_type="widget" data-widget_type="text-editor.default">
				<div class="elementor-widget-container">
							<p>Identify trends in behavior and optimize campaigns with AI.</p>						</div>
				</div>
				<div class="elementor-element elementor-element-975b218 elementor-widget__width-initial elementor-absolute product_button_icon elementor-view-default elementor-widget elementor-widget-icon" data-id="975b218" data-element_type="widget" data-settings="{&quot;_position&quot;:&quot;absolute&quot;}" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<svg xmlns="http://www.w3.org/2000/svg" width="24" height="25" viewBox="0 0 24 25" fill="none"><rect y="0.495117" width="24" height="24" rx="12" fill="#14A1D0"></rect><path d="M15.1875 9.24512C15.4922 9.24512 15.75 9.50293 15.75 9.80762V15.4326C15.75 15.7607 15.4922 15.9951 15.1875 15.9951C14.8594 15.9951 14.625 15.7607 14.625 15.4326V11.167L9.21094 16.5811C8.97656 16.8154 8.625 16.8154 8.41406 16.5811C8.17969 16.3701 8.17969 16.0186 8.41406 15.8076L13.8281 10.3936H9.5625C9.23438 10.3936 9 10.1357 9 9.83105C9 9.50293 9.23438 9.26855 9.5625 9.26855H15.1875V9.24512Z" fill="white"></path></svg>			</div>
		</div>
				</div>
				</div>
		<div class="elementor-element elementor-element-e07c398 e-con-full call_to_action_link e-flex e-con e-child" data-id="e07c398" data-element_type="container">
				<div class="elementor-element elementor-element-af3545b elementor-widget elementor-widget-heading" data-id="af3545b" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<div class="elementor-heading-title elementor-size-default">Learn More</div>		</div>
				</div>
				<div class="elementor-element elementor-element-2cbcf4c elementor-widget__width-initial elementor-view-default elementor-widget elementor-widget-icon" data-id="2cbcf4c" data-element_type="widget" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<svg xmlns="http://www.w3.org/2000/svg" width="25" height="24" viewBox="0 0 25 24" fill="none"><path d="M9.87079 16.9496L15.5778 11.2426L9.87079 5.53564L8.45679 6.94964L12.7498 11.2426L8.45679 15.5356L9.87079 16.9496Z" fill="#019ACE"></path></svg>			</div>
		</div>
				</div>
				</div>
				</div>
				</a>
		<a class="elementor-element elementor-element-241d094 e-con-full product_box e-flex e-con e-child" data-id="241d094" data-element_type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}" href="https://www.bloomreach.com/en/products/engagement/experiments-ab-testing" target="_blank">
		<div class="elementor-element elementor-element-11593a3 e-con-full e-flex e-con e-child" data-id="11593a3" data-element_type="container">
				<div class="elementor-element elementor-element-2290422 elementor-widget__width-initial elementor-view-default elementor-widget elementor-widget-icon" data-id="2290422" data-element_type="widget" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<svg xmlns="http://www.w3.org/2000/svg" width="57.785" height="57.787" viewBox="0 0 57.785 57.787"><g id="Experiments_and_A_B_Testing" data-name="Experiments and A/B Testing" transform="translate(0)"><path id="Path_3172" data-name="Path 3172" d="M14.9,58.534a5.784,5.784,0,0,1-5.779-5.779V6.526A5.784,5.784,0,0,1,14.9.747H30a5.784,5.784,0,0,1,5.779,5.779v46.23A5.784,5.784,0,0,1,30,58.534Z" transform="translate(22.01 -0.747)" fill="#002840"></path><path id="Path_3173" data-name="Path 3173" d="M14.9,58.534a5.784,5.784,0,0,1-5.779-5.779V6.526A5.784,5.784,0,0,1,14.9.747H30a5.784,5.784,0,0,1,5.779,5.779v46.23A5.784,5.784,0,0,1,30,58.534ZM30,54.682a1.927,1.927,0,0,0,1.926-1.926V6.526A1.927,1.927,0,0,0,30,4.6H16.349V54.682ZM14.9,4.6A1.927,1.927,0,0,0,12.97,6.526v46.23A1.927,1.927,0,0,0,14.9,54.682h1.452V4.6H14.9Z" transform="translate(-9.117 -0.747)" fill="#002840"></path></g></svg>			</div>
		</div>
				</div>
				</div>
				<div class="elementor-element elementor-element-eb5f7db elementor-widget__width-inherit elementor-widget elementor-widget-heading" data-id="eb5f7db" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<h3 class="elementor-heading-title elementor-size-default">Experiments and A/B Testing</h3>		</div>
				</div>
				</div>
				<div class="elementor-element elementor-element-16d913b elementor-widget elementor-widget-text-editor" data-id="16d913b" data-element_type="widget" data-widget_type="text-editor.default">
				<div class="elementor-widget-container">
							<p>Go from theory to results fast without relying on other teams.</p>						</div>
				</div>
				<div class="elementor-element elementor-element-cb33546 elementor-widget__width-initial elementor-absolute product_button_icon elementor-view-default elementor-widget elementor-widget-icon" data-id="cb33546" data-element_type="widget" data-settings="{&quot;_position&quot;:&quot;absolute&quot;}" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<svg xmlns="http://www.w3.org/2000/svg" width="24" height="25" viewBox="0 0 24 25" fill="none"><rect y="0.495117" width="24" height="24" rx="12" fill="#14A1D0"></rect><path d="M15.1875 9.24512C15.4922 9.24512 15.75 9.50293 15.75 9.80762V15.4326C15.75 15.7607 15.4922 15.9951 15.1875 15.9951C14.8594 15.9951 14.625 15.7607 14.625 15.4326V11.167L9.21094 16.5811C8.97656 16.8154 8.625 16.8154 8.41406 16.5811C8.17969 16.3701 8.17969 16.0186 8.41406 15.8076L13.8281 10.3936H9.5625C9.23438 10.3936 9 10.1357 9 9.83105C9 9.50293 9.23438 9.26855 9.5625 9.26855H15.1875V9.24512Z" fill="white"></path></svg>			</div>
		</div>
				</div>
				</div>
		<div class="elementor-element elementor-element-ae384ae e-con-full call_to_action_link e-flex e-con e-child" data-id="ae384ae" data-element_type="container">
				<div class="elementor-element elementor-element-e824cb1 elementor-widget elementor-widget-heading" data-id="e824cb1" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<div class="elementor-heading-title elementor-size-default">Learn More</div>		</div>
				</div>
				<div class="elementor-element elementor-element-c1da8d0 elementor-widget__width-initial elementor-view-default elementor-widget elementor-widget-icon" data-id="c1da8d0" data-element_type="widget" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<svg xmlns="http://www.w3.org/2000/svg" width="25" height="24" viewBox="0 0 25 24" fill="none"><path d="M9.87079 16.9496L15.5778 11.2426L9.87079 5.53564L8.45679 6.94964L12.7498 11.2426L8.45679 15.5356L9.87079 16.9496Z" fill="#019ACE"></path></svg>			</div>
		</div>
				</div>
				</div>
				</div>
				</a>
				</div>
					</div>
				</div>
		<div class="elementor-element elementor-element-1b043ae e-flex e-con-boxed e-con e-parent" data-id="1b043ae" data-element_type="container">
					<div class="e-con-inner">
		<div class="elementor-element elementor-element-ff4f88d e-con-full e-flex e-con e-child" data-id="ff4f88d" data-element_type="container">
				<div class="elementor-element elementor-element-f897d63 elementor-widget elementor-widget-heading" data-id="f897d63" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<div class="elementor-heading-title elementor-size-default">Get the Complete Package</div>		</div>
				</div>
				<div class="elementor-element elementor-element-8049370 elementor-widget elementor-widget-heading" data-id="8049370" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<h2 class="elementor-heading-title elementor-size-default">Flexible, Secure, and Ready To Scale</h2>		</div>
				</div>
				</div>
		<div class="elementor-element elementor-element-9d2699c e-con-full e-flex e-con e-child" data-id="9d2699c" data-element_type="container">
		<div class="elementor-element elementor-element-674748f e-con-full e-flex e-con e-child" data-id="674748f" data-element_type="container">
				<div class="elementor-element elementor-element-a3a1acb elementor-widget__width-initial elementor-view-default elementor-widget elementor-widget-icon" data-id="a3a1acb" data-element_type="widget" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<i aria-hidden="true" class="icon icon-app-window-layout-1"></i>			</div>
		</div>
				</div>
				</div>
		<div class="elementor-element elementor-element-8c2b1c9 e-con-full e-flex e-con e-child" data-id="8c2b1c9" data-element_type="container">
				<div class="elementor-element elementor-element-9893af6 elementor-widget elementor-widget-heading" data-id="9893af6" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<h3 class="elementor-heading-title elementor-size-default">130+ Integrations</h3>		</div>
				</div>
				<div class="elementor-element elementor-element-895a7f3 elementor-widget elementor-widget-text-editor" data-id="895a7f3" data-element_type="widget" data-widget_type="text-editor.default">
				<div class="elementor-widget-container">
							<p><span style="font-weight: 400;">Bloomreach Engagement integrates natively with every major ecommerce platform, including Shopify, BigCommerce, and Magento. Find over <a href="/en/integrations" target=blank>130 integrations</a> to third-party vendors or check out our APIs to integrate with literally anything.</span></p>						</div>
				</div>
				</div>
				</div>
		<div class="elementor-element elementor-element-c8483db e-con-full e-flex e-con e-child" data-id="c8483db" data-element_type="container">
				<div class="elementor-element elementor-element-3057cae elementor-widget__width-initial elementor-view-default elementor-widget elementor-widget-icon" data-id="3057cae" data-element_type="widget" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<i aria-hidden="true" class="icon icon-app-window-upload-2"></i>			</div>
		</div>
				</div>
				</div>
		<div class="elementor-element elementor-element-4c932b6 e-con-full e-flex e-con e-child" data-id="4c932b6" data-element_type="container">
				<div class="elementor-element elementor-element-c35d459 elementor-widget elementor-widget-heading" data-id="c35d459" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<h3 class="elementor-heading-title elementor-size-default">Plug-and-Play Use Cases</h3>		</div>
				</div>
				<div class="elementor-element elementor-element-784520d elementor-widget elementor-widget-text-editor" data-id="784520d" data-element_type="widget" data-widget_type="text-editor.default">
				<div class="elementor-widget-container">
							<p><span style="font-weight: 400;">Our <a href="https://www.bloomreach.com/en/products/engagement/plug-and-play" =blank>out-of-the-box use cases</a> make it quick and easy to launch hyper-personalized marketing campaigns and advanced dashboards. Capitalize on Bloomreach&#8217;s expert knowledge gained through years of working with top players on the market.</span></p>						</div>
				</div>
				</div>
				</div>
		<div class="elementor-element elementor-element-85f7167 e-con-full e-flex e-con e-child" data-id="85f7167" data-element_type="container">
				<div class="elementor-element elementor-element-4e26d16 elementor-widget__width-initial elementor-view-default elementor-widget elementor-widget-icon" data-id="4e26d16" data-element_type="widget" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<i aria-hidden="true" class="icon icon-tags-cash"></i>			</div>
		</div>
				</div>
				</div>
		<div class="elementor-element elementor-element-5448373 e-con-full e-flex e-con e-child" data-id="5448373" data-element_type="container">
				<div class="elementor-element elementor-element-e9acffe elementor-widget elementor-widget-heading" data-id="e9acffe" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<h3 class="elementor-heading-title elementor-size-default">Flexible Pricing</h3>		</div>
				</div>
				<div class="elementor-element elementor-element-f8834c8 elementor-widget elementor-widget-text-editor" data-id="f8834c8" data-element_type="widget" data-widget_type="text-editor.default">
				<div class="elementor-widget-container">
							<p><span style="font-weight: 400;">Don&#8217;t pay for seats or contacts. <a href="https://www.bloomreach.com/en/pricing/engagement" data-wplink-edit="true" =blank>Bloomreach Engagement&#8217;s price</a> is determined primarily by volume of data and volume of communications (e.g., emails or SMS sent). This allows us to generate incredible ROI for both fast-growing companies and enterprises.</span></p>						</div>
				</div>
				</div>
				</div>
		<div class="elementor-element elementor-element-aedd2d7 e-con-full e-flex e-con e-child" data-id="aedd2d7" data-element_type="container">
				<div class="elementor-element elementor-element-deec9f1 elementor-widget__width-initial elementor-view-default elementor-widget elementor-widget-icon" data-id="deec9f1" data-element_type="widget" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<i aria-hidden="true" class="icon icon-shield-check-1"></i>			</div>
		</div>
				</div>
				</div>
		<div class="elementor-element elementor-element-33cfca8 e-con-full e-flex e-con e-child" data-id="33cfca8" data-element_type="container">
				<div class="elementor-element elementor-element-2ca54d8 elementor-widget elementor-widget-heading" data-id="2ca54d8" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<h3 class="elementor-heading-title elementor-size-default">Security and Certifications</h3>		</div>
				</div>
				<div class="elementor-element elementor-element-eec461e elementor-widget elementor-widget-text-editor" data-id="eec461e" data-element_type="widget" data-widget_type="text-editor.default">
				<div class="elementor-widget-container">
							<p><span style="font-weight: 400;"><a href="https://www.bloomreach.com/en/security-at-bloomreach" =blank>Security</a> isn&#8217;t an add-on — it&#8217;s a competitive advantage to build around and capitalize on. Bloomreach Engagement enables your team to create, send, test, and analyze campaigns securely and compliantly.</span></p>						</div>
				</div>
				</div>
				</div>
				</div>
					</div>
				</div>
		<div class="elementor-element elementor-element-af0e249 e-flex e-con-boxed e-con e-parent" data-id="af0e249" data-element_type="container">
					<div class="e-con-inner">
		<div class="elementor-element elementor-element-dadfb97 e-con-full e-flex e-con e-child" data-id="dadfb97" data-element_type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
				<div class="elementor-element elementor-element-1fa432d elementor-widget__width-initial elementor-widget elementor-widget-heading" data-id="1fa432d" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<h2 class="elementor-heading-title elementor-size-default">Empowering Brands Like Yours To Achieve Big Wins</h2>		</div>
				</div>
		<div class="elementor-element elementor-element-47e0cb0 e-con-full e-flex e-con e-child" data-id="47e0cb0" data-element_type="container">
		<a class="elementor-element elementor-element-ab0d03e e-con-full product_box e-flex e-con e-child" data-id="ab0d03e" data-element_type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}" href="https://www.bloomreach.com/en/case-studies/boohooman" target="_blank">
				<div class="elementor-element elementor-element-7761453 elementor-widget elementor-widget-counter" data-id="7761453" data-element_type="widget" data-widget_type="counter.default">
				<div class="elementor-widget-container">
					<div class="elementor-counter">
			<div class="elementor-counter-title">ROI from an SMS campaign</div>			<div class="elementor-counter-number-wrapper">
				<span class="elementor-counter-number-prefix"></span>
				<span class="elementor-counter-number" data-duration="2000" data-to-value="25" data-from-value="0" data-delimiter=",">0</span>
				<span class="elementor-counter-number-suffix">x</span>
			</div>
		</div>
				</div>
				</div>
				<div class="elementor-element elementor-element-7cce534 elementor-widget__width-initial elementor-absolute product_button_icon elementor-view-default elementor-widget elementor-widget-icon" data-id="7cce534" data-element_type="widget" data-settings="{&quot;_position&quot;:&quot;absolute&quot;}" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<svg xmlns="http://www.w3.org/2000/svg" width="24" height="25" viewBox="0 0 24 25" fill="none"><rect y="0.495117" width="24" height="24" rx="12" fill="#14A1D0"></rect><path d="M15.1875 9.24512C15.4922 9.24512 15.75 9.50293 15.75 9.80762V15.4326C15.75 15.7607 15.4922 15.9951 15.1875 15.9951C14.8594 15.9951 14.625 15.7607 14.625 15.4326V11.167L9.21094 16.5811C8.97656 16.8154 8.625 16.8154 8.41406 16.5811C8.17969 16.3701 8.17969 16.0186 8.41406 15.8076L13.8281 10.3936H9.5625C9.23438 10.3936 9 10.1357 9 9.83105C9 9.50293 9.23438 9.26855 9.5625 9.26855H15.1875V9.24512Z" fill="white"></path></svg>			</div>
		</div>
				</div>
				</div>
		<div class="elementor-element elementor-element-25f0f65 e-con-full e-flex e-con e-child" data-id="25f0f65" data-element_type="container">
				<div class="elementor-element elementor-element-adc12be big_name_partner no_border_radius elementor-widget elementor-widget-image" data-id="adc12be" data-element_type="widget" data-widget_type="image.default">
				<div class="elementor-widget-container">
													<img decoding="async" width="600" height="250" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20600%20250'%3E%3C/svg%3E" class="attachment-full size-full wp-image-24275" alt="boohooMan, logo" data-lazy-src="https://www.bloomreach.com/wp-content/uploads/2024/05/boohooman-black-ΓCo-2.svg" /><noscript><img decoding="async" width="600" height="250" src="https://www.bloomreach.com/wp-content/uploads/2024/05/boohooman-black-ΓCo-2.svg" class="attachment-full size-full wp-image-24275" alt="boohooMan, logo" /></noscript>													</div>
				</div>
		<div class="elementor-element elementor-element-ea629ac e-con-full call_to_action_link e-flex e-con e-child" data-id="ea629ac" data-element_type="container">
				<div class="elementor-element elementor-element-d9ce113 elementor-widget elementor-widget-heading" data-id="d9ce113" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<div class="elementor-heading-title elementor-size-default">View Case Study</div>		</div>
				</div>
				<div class="elementor-element elementor-element-78f7169 elementor-widget__width-initial elementor-view-default elementor-widget elementor-widget-icon" data-id="78f7169" data-element_type="widget" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<svg xmlns="http://www.w3.org/2000/svg" width="25" height="24" viewBox="0 0 25 24" fill="none"><path d="M9.87079 16.9496L15.5778 11.2426L9.87079 5.53564L8.45679 6.94964L12.7498 11.2426L8.45679 15.5356L9.87079 16.9496Z" fill="#019ACE"></path></svg>			</div>
		</div>
				</div>
				</div>
				</div>
				</div>
				</a>
		<a class="elementor-element elementor-element-f97578b e-con-full product_box e-flex e-con e-child" data-id="f97578b" data-element_type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}" href="https://www.bloomreach.com/en/case-studies/bimago-case-study" target="_blank">
				<div class="elementor-element elementor-element-c1dcdc8 elementor-widget elementor-widget-counter" data-id="c1dcdc8" data-element_type="widget" data-widget_type="counter.default">
				<div class="elementor-widget-container">
					<div class="elementor-counter">
			<div class="elementor-counter-title">Increase in on-site conversion rate</div>			<div class="elementor-counter-number-wrapper">
				<span class="elementor-counter-number-prefix"></span>
				<span class="elementor-counter-number" data-duration="2000" data-to-value="44" data-from-value="0" data-delimiter=",">0</span>
				<span class="elementor-counter-number-suffix">%</span>
			</div>
		</div>
				</div>
				</div>
				<div class="elementor-element elementor-element-abecab2 elementor-widget__width-initial elementor-absolute product_button_icon elementor-view-default elementor-widget elementor-widget-icon" data-id="abecab2" data-element_type="widget" data-settings="{&quot;_position&quot;:&quot;absolute&quot;}" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<svg xmlns="http://www.w3.org/2000/svg" width="24" height="25" viewBox="0 0 24 25" fill="none"><rect y="0.495117" width="24" height="24" rx="12" fill="#14A1D0"></rect><path d="M15.1875 9.24512C15.4922 9.24512 15.75 9.50293 15.75 9.80762V15.4326C15.75 15.7607 15.4922 15.9951 15.1875 15.9951C14.8594 15.9951 14.625 15.7607 14.625 15.4326V11.167L9.21094 16.5811C8.97656 16.8154 8.625 16.8154 8.41406 16.5811C8.17969 16.3701 8.17969 16.0186 8.41406 15.8076L13.8281 10.3936H9.5625C9.23438 10.3936 9 10.1357 9 9.83105C9 9.50293 9.23438 9.26855 9.5625 9.26855H15.1875V9.24512Z" fill="white"></path></svg>			</div>
		</div>
				</div>
				</div>
		<div class="elementor-element elementor-element-9a7453e e-con-full e-flex e-con e-child" data-id="9a7453e" data-element_type="container">
				<div class="elementor-element elementor-element-8737a36 big_name_partner no_border_radius elementor-widget elementor-widget-image" data-id="8737a36" data-element_type="widget" data-widget_type="image.default">
				<div class="elementor-widget-container">
													<img decoding="async" width="600" height="250" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20600%20250'%3E%3C/svg%3E" class="attachment-full size-full wp-image-24272" alt="bimago, logo" data-lazy-src="https://www.bloomreach.com/wp-content/uploads/2024/05/bimago-black-ΓCo-2.svg" /><noscript><img decoding="async" width="600" height="250" src="https://www.bloomreach.com/wp-content/uploads/2024/05/bimago-black-ΓCo-2.svg" class="attachment-full size-full wp-image-24272" alt="bimago, logo" /></noscript>													</div>
				</div>
		<div class="elementor-element elementor-element-8b075b2 e-con-full call_to_action_link e-flex e-con e-child" data-id="8b075b2" data-element_type="container">
				<div class="elementor-element elementor-element-de066da elementor-widget elementor-widget-heading" data-id="de066da" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<div class="elementor-heading-title elementor-size-default">View Case Study</div>		</div>
				</div>
				<div class="elementor-element elementor-element-12fba88 elementor-widget__width-initial elementor-view-default elementor-widget elementor-widget-icon" data-id="12fba88" data-element_type="widget" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<svg xmlns="http://www.w3.org/2000/svg" width="25" height="24" viewBox="0 0 25 24" fill="none"><path d="M9.87079 16.9496L15.5778 11.2426L9.87079 5.53564L8.45679 6.94964L12.7498 11.2426L8.45679 15.5356L9.87079 16.9496Z" fill="#019ACE"></path></svg>			</div>
		</div>
				</div>
				</div>
				</div>
				</div>
				</a>
		<a class="elementor-element elementor-element-6595a55 e-con-full product_box e-flex e-con e-child" data-id="6595a55" data-element_type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}" href="https://www.bloomreach.com/en/case-studies/benefit-cosmetics" target="_blank">
				<div class="elementor-element elementor-element-2914ecb elementor-widget elementor-widget-counter" data-id="2914ecb" data-element_type="widget" data-widget_type="counter.default">
				<div class="elementor-widget-container">
					<div class="elementor-counter">
			<div class="elementor-counter-title">More revenue from email</div>			<div class="elementor-counter-number-wrapper">
				<span class="elementor-counter-number-prefix"></span>
				<span class="elementor-counter-number" data-duration="2000" data-to-value="40" data-from-value="0" data-delimiter=",">0</span>
				<span class="elementor-counter-number-suffix">%</span>
			</div>
		</div>
				</div>
				</div>
				<div class="elementor-element elementor-element-a98b47c elementor-widget__width-initial elementor-absolute product_button_icon elementor-view-default elementor-widget elementor-widget-icon" data-id="a98b47c" data-element_type="widget" data-settings="{&quot;_position&quot;:&quot;absolute&quot;}" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<svg xmlns="http://www.w3.org/2000/svg" width="24" height="25" viewBox="0 0 24 25" fill="none"><rect y="0.495117" width="24" height="24" rx="12" fill="#14A1D0"></rect><path d="M15.1875 9.24512C15.4922 9.24512 15.75 9.50293 15.75 9.80762V15.4326C15.75 15.7607 15.4922 15.9951 15.1875 15.9951C14.8594 15.9951 14.625 15.7607 14.625 15.4326V11.167L9.21094 16.5811C8.97656 16.8154 8.625 16.8154 8.41406 16.5811C8.17969 16.3701 8.17969 16.0186 8.41406 15.8076L13.8281 10.3936H9.5625C9.23438 10.3936 9 10.1357 9 9.83105C9 9.50293 9.23438 9.26855 9.5625 9.26855H15.1875V9.24512Z" fill="white"></path></svg>			</div>
		</div>
				</div>
				</div>
		<div class="elementor-element elementor-element-4be4b59 e-con-full e-flex e-con e-child" data-id="4be4b59" data-element_type="container">
				<div class="elementor-element elementor-element-4903fd5 big_name_partner no_border_radius elementor-widget elementor-widget-image" data-id="4903fd5" data-element_type="widget" data-widget_type="image.default">
				<div class="elementor-widget-container">
													<img decoding="async" width="600" height="250" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20600%20250'%3E%3C/svg%3E" class="attachment-full size-full wp-image-24269" alt="benefit, logo" data-lazy-src="https://www.bloomreach.com/wp-content/uploads/2024/05/benefit-black-ΓCo-2.svg" /><noscript><img decoding="async" width="600" height="250" src="https://www.bloomreach.com/wp-content/uploads/2024/05/benefit-black-ΓCo-2.svg" class="attachment-full size-full wp-image-24269" alt="benefit, logo" /></noscript>													</div>
				</div>
		<div class="elementor-element elementor-element-6b637ed e-con-full call_to_action_link e-flex e-con e-child" data-id="6b637ed" data-element_type="container">
				<div class="elementor-element elementor-element-de339ff elementor-widget elementor-widget-heading" data-id="de339ff" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<div class="elementor-heading-title elementor-size-default">View Case Study</div>		</div>
				</div>
				<div class="elementor-element elementor-element-0d9edf7 elementor-widget__width-initial elementor-view-default elementor-widget elementor-widget-icon" data-id="0d9edf7" data-element_type="widget" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<svg xmlns="http://www.w3.org/2000/svg" width="25" height="24" viewBox="0 0 25 24" fill="none"><path d="M9.87079 16.9496L15.5778 11.2426L9.87079 5.53564L8.45679 6.94964L12.7498 11.2426L8.45679 15.5356L9.87079 16.9496Z" fill="#019ACE"></path></svg>			</div>
		</div>
				</div>
				</div>
				</div>
				</div>
				</a>
				</div>
				<div class="elementor-element elementor-element-eaa2e58 elementor-widget elementor-widget-bloomreach_buttons" data-id="eaa2e58" data-element_type="widget" data-widget_type="bloomreach_buttons.default">
				<div class="elementor-widget-container">
			<div></div>        <a class="br-cta  br-cta--secondary" href="https://www.bloomreach.com/en/case-studies"><strong>Explore Case Studies</strong><span></span></a>
        		</div>
				</div>
				</div>
					</div>
				</div>
		<div class="elementor-element elementor-element-2a89e6e e-flex e-con-boxed e-con e-parent" data-id="2a89e6e" data-element_type="container">
					<div class="e-con-inner">
		<div class="elementor-element elementor-element-c645ecb e-con-full e-flex e-con e-child" data-id="c645ecb" data-element_type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
		<div class="elementor-element elementor-element-954788f e-con-full e-flex e-con e-child" data-id="954788f" data-element_type="container">
				<div class="elementor-element elementor-element-dbd0471 elementor-widget elementor-widget-heading" data-id="dbd0471" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<h2 class="elementor-heading-title elementor-size-default">A 30-Minute Chat to Help You Make Sense of It All</h2>		</div>
				</div>
				<div class="elementor-element elementor-element-81c4799 elementor-widget elementor-widget-text-editor" data-id="81c4799" data-element_type="widget" data-widget_type="text-editor.default">
				<div class="elementor-widget-container">
							<ul><li><strong>Let&#8217;s talk about your current setup</strong> and the reasons you&#8217;re exploring new options.</li><li><strong>Gain a clearer understanding</strong> of the product landscape and your available choices.</li><li><strong>We&#8217;ll share our perspective</strong> on how Bloomreach stacks up against the competition.</li></ul>						</div>
				</div>
		<div class="elementor-element elementor-element-41b3ae3 e-con-full e-flex e-con e-child" data-id="41b3ae3" data-element_type="container">
				<div class="elementor-element elementor-element-13edba5 elementor-widget elementor-widget-bloomreach_buttons" data-id="13edba5" data-element_type="widget" data-widget_type="bloomreach_buttons.default">
				<div class="elementor-widget-container">
			<div></div>        <a class="br-cta "  href="/en/request-demo"><strong>Schedule a Demo</strong><span></span></a>
        		</div>
				</div>
				</div>
				</div>
				<div class="elementor-element elementor-element-8db47b5 elementor-widget__width-initial elementor-widget elementor-widget-image" data-id="8db47b5" data-element_type="widget" data-widget_type="image.default">
				<div class="elementor-widget-container">
													<img decoding="async" width="1024" height="819" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%201024%20819'%3E%3C/svg%3E" class="attachment-full size-full wp-image-53513" alt="banner-img-2" data-lazy-srcset="https://www.bloomreach.com/wp-content/uploads/2024/05/banner-img-2.webp 1024w, https://www.bloomreach.com/wp-content/uploads/2024/05/banner-img-2-300x240.webp 300w, https://www.bloomreach.com/wp-content/uploads/2024/05/banner-img-2-768x614.webp 768w" data-lazy-sizes="(max-width: 1024px) 100vw, 1024px" data-lazy-src="https://www.bloomreach.com/wp-content/uploads/2024/05/banner-img-2.webp" /><noscript><img decoding="async" width="1024" height="819" src="https://www.bloomreach.com/wp-content/uploads/2024/05/banner-img-2.webp" class="attachment-full size-full wp-image-53513" alt="banner-img-2" srcset="https://www.bloomreach.com/wp-content/uploads/2024/05/banner-img-2.webp 1024w, https://www.bloomreach.com/wp-content/uploads/2024/05/banner-img-2-300x240.webp 300w, https://www.bloomreach.com/wp-content/uploads/2024/05/banner-img-2-768x614.webp 768w" sizes="(max-width: 1024px) 100vw, 1024px" /></noscript>													</div>
				</div>
				</div>
					</div>
				</div>
		<div class="elementor-element elementor-element-6bf6017 e-flex e-con-boxed e-con e-parent" data-id="6bf6017" data-element_type="container">
					<div class="e-con-inner">
				<div class="elementor-element elementor-element-909e47c elementor-widget elementor-widget-html" data-id="909e47c" data-element_type="widget" data-widget_type="html.default">
				<div class="elementor-widget-container">
			<script type="rocketlazyloadscript">
window.addEventListener('message', event => {
    if(event.data.type === 'hsFormCallback' && event.data.eventName === 'onFormReady') {
		
		let path = window.location.pathname;
		let selectProduct = 'none';
		if(path.includes('/en/products/engagement')){
			selectProduct = 'engagement';
		}
		if(path.includes('/en/products/discovery')){
			selectProduct = 'discovery';
		}
		jQuery('input[name="module_interest"]').val(selectProduct).change();

    }
});
</script>		</div>
				</div>
				<div class="elementor-element elementor-element-da673a4 elementor-widget elementor-widget-html" data-id="da673a4" data-element_type="widget" data-widget_type="html.default">
				<div class="elementor-widget-container">
			<script type="rocketlazyloadscript" data-rocket-src="https://widget.deeto.ai/v2/assets/main.js" data-rocket-type="module" async onload="onDeetoLoad()"></script>
<deeto-reference id="deetoEmbeddedWidget"></deeto-reference>
<script type="rocketlazyloadscript">
function bookaDemofromWidget() {
	window.location.href = "https://www.bloomreach.com/en/request-demo"
}

function onDeetoLoad() {
  window.deeto.registerFloatingReferenceWidget().then((dt) => {
    dt.element.action = bookaDemofromWidget;
    dt.element.configurationId = "c21205c3-77e0-404f-84c5-0888eb3b3e41";
    dt.mountWidget();

	const shadowRoot = document.querySelector('deeto-floating-reference-popup').shadowRoot;
	const style = document.createElement('style');
	style.textContent = `
	.dt-embedded-reference-modal-index {
	    z-index: 12000 !important;
	}
	`;
	shadowRoot.appendChild(style);
  })
}
</script>		</div>
				</div>
					</div>
				</div>
		<div class="elementor-element elementor-element-656e487c e-flex e-con-boxed e-con e-parent" data-id="656e487c" data-element_type="container">
					<div class="e-con-inner">
				<div class="elementor-element elementor-element-13bec8ee elementor-widget elementor-widget-breadcrumbs" data-id="13bec8ee" data-element_type="widget" data-widget_type="breadcrumbs.default">
				<div class="elementor-widget-container">
			<nav aria-label="breadcrumbs" class="rank-math-breadcrumb"><p><a href="https://www.bloomreach.com/en">Home</a><span class="separator"> - </span><a href="https://www.bloomreach.com/en/products">Products</a><span class="separator"> - </span><span class="last">Engagement</span></p></nav>		</div>
				</div>
					</div>
				</div>
		<div class="elementor-element elementor-element-6da70f2 e-flex e-con-boxed e-con e-parent" data-id="6da70f2" data-element_type="container">
					<div class="e-con-inner">
				<div class="elementor-element elementor-element-d92254f elementor-widget elementor-widget-br_popup_tour" data-id="d92254f" data-element_type="widget" data-widget_type="br_popup_tour.default">
				<div class="elementor-widget-container">
			        <div class="tour-popup-container" data-id="clxyqseks00000ajvcyhjcdq3">
            <div class="tour-popup-box">
                                <div class="br-overlay-showhide">
                    <div class="br-overlay bloomreach_hs_form hubspot-form-elementor">
                        <div class="br-overlay-content">
                            <div class="br-overlay__left">
                                <div class="br-overlay__g2">
                                    <img width="200" height="54" decoding="async" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20200%2054'%3E%3C/svg%3E" data-lazy-src="/wp-content/uploads/2024/07/g2-reviews-stars-1.svg"><noscript><img width="200" height="54" decoding="async" src="/wp-content/uploads/2024/07/g2-reviews-stars-1.svg"></noscript>
                                    <span class="br-overlay__g2__score">4.6/5 </span>
                                    <span class="br-overlay__g2__count">(593+ reviews)</span>
                                </div>

                                <h3>See Bloomreach in minutes</h3>
                                <p>Take this self-guided tour to experience how Bloomreach makes online shopping personal.</p>
                            </div>
                            <div class="br-overlay__right">
                                <script charset="utf-8" type="text/javascript" src="//js.hsforms.net/forms/embed/v2.js"></script>
                                <script>
                                  hbspt.forms.create({
                                    region: "na1",
                                    portalId: "7227558",
                                    formId: "b9573a30-49cb-4451-9d37-bb80e369e22d" // unstyled
                                  });
                                </script>
                            </div>

                        </div>
                    </div>
                </div>
                
                <div class="tour-popup-close"><i class="eicon-close"></i></div>
                <iframe loading="lazy" src="about:blank" allow="fullscreen" id="navattic-embed" data-rocket-lazyload="fitvidscompatible" data-lazy-src="https://tour.bloomreach.com/clxyqseks00000ajvcyhjcdq3"></iframe><noscript><iframe src="https://tour.bloomreach.com/clxyqseks00000ajvcyhjcdq3" allow="fullscreen" id="navattic-embed"></iframe></noscript>
            </div>
        </div>
        		</div>
				</div>
					</div>
				</div>
				</div>
		
		
			</div>

	
</main>

			<div data-elementor-type="footer" data-elementor-id="2803" class="elementor elementor-2803 elementor-location-footer" data-elementor-post-type="elementor_library">
			<div class="elementor-element elementor-element-640f7ff4 e-flex e-con-boxed e-con e-parent" data-id="640f7ff4" data-element_type="container">
					<div class="e-con-inner">
				<div class="elementor-element elementor-element-3a8c2f7c elementor-hidden-desktop elementor-hidden-tablet elementor-hidden-mobile elementor-widget elementor-widget-shortcode" data-id="3a8c2f7c" data-element_type="widget" id="careers-count" data-widget_type="shortcode.default">
				<div class="elementor-widget-container">
					<div class="elementor-shortcode">44</div>
				</div>
				</div>
				<div class="elementor-element elementor-element-2b594489 no_border_radius elementor-widget elementor-widget-theme-site-logo elementor-widget-image" data-id="2b594489" data-element_type="widget" data-widget_type="theme-site-logo.default">
				<div class="elementor-widget-container">
									<a href="https://www.bloomreach.com/en">
			<img width="208" height="45" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20208%2045'%3E%3C/svg%3E" class="attachment-full size-full wp-image-40125" alt="bloomreach logo" data-lazy-src="https://www.bloomreach.com/wp-content/uploads/2024/06/logo-bloomreach.svg" /><noscript><img width="208" height="45" src="https://www.bloomreach.com/wp-content/uploads/2024/06/logo-bloomreach.svg" class="attachment-full size-full wp-image-40125" alt="bloomreach logo" /></noscript>				</a>
									</div>
				</div>
		<div class="elementor-element elementor-element-4a1ecb42 footer-menu-container footer-menu-container-top e-con-full e-flex e-con e-child" data-id="4a1ecb42" data-element_type="container">
		<div class="elementor-element elementor-element-c794afb e-con-full e-flex e-con e-child" data-id="c794afb" data-element_type="container" data-category="footer_products">
				<div class="elementor-element elementor-element-71bf2d6 elementor-widget elementor-widget-heading" data-id="71bf2d6" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<h3 class="elementor-heading-title elementor-size-default">Products</h3>		</div>
				</div>
				<div class="elementor-element elementor-element-58be456 elementor-nav-menu__align-start elementor-nav-menu--dropdown-none elementor-widget__width-inherit elementor-widget-tablet__width-inherit elementor-widget elementor-widget-nav-menu" data-id="58be456" data-element_type="widget" data-settings="{&quot;layout&quot;:&quot;vertical&quot;,&quot;submenu_icon&quot;:{&quot;value&quot;:&quot;&lt;i class=\&quot;fas fa-caret-down\&quot;&gt;&lt;\/i&gt;&quot;,&quot;library&quot;:&quot;fa-solid&quot;}}" data-widget_type="nav-menu.default">
				<div class="elementor-widget-container">
						<nav aria-label="Menu" class="elementor-nav-menu--main elementor-nav-menu__container elementor-nav-menu--layout-vertical e--pointer-underline e--animation-fade">
				<ul id="menu-1-58be456" class="elementor-nav-menu sm-vertical"><li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-269"><a href="/en/products/engagement/email-marketing" class="elementor-item">Email Marketing</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-270"><a href="/en/products/engagement/sms-messaging" class="elementor-item">SMS &#038; Messaging</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-271"><a href="/en/products/engagement/web-personalization" class="elementor-item">Web Personalization</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-272"><a href="/en/products/engagement/mobile-app-marketing" class="elementor-item">Mobile App</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-273"><a href="/en/products/engagement/ads-retargeting" class="elementor-item">Ads</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-274"><a href="/en/products/engagement/experiments-ab-testing" class="elementor-item">Testing &#038; Optimization</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-275"><a href="/en/products/discovery/search-intelligence" class="elementor-item">Ecommerce Search</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-32906"><a href="/en/products/discovery/merchandising" class="elementor-item">Merchandising</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-32907"><a href="/en/products/discovery/product-recommendations" class="elementor-item">Recs / Pathways</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-32908"><a href="/en/products/discovery/seo" class="elementor-item">SEO</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-32909"><a href="/en/products/content/headless-cms" class="elementor-item">Headless Content</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-32910"><a href="/en/products/clarity" class="elementor-item">Conversational Shopping<span class="menu-icon" ><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"><path d="M7.91141 19.501C7.44041 19.501 7.01641 19.24 6.80641 18.819C6.67041 18.546 6.63941 18.234 6.72041 17.941L7.77341 14.077L4.92741 11.23C4.69441 10.997 4.56641 10.687 4.56641 10.358C4.56641 10.028 4.69441 9.718 4.92841 9.485C5.12941 9.284 5.39641 9.157 5.68041 9.13L9.09441 8.788L10.8984 5.181C11.1094 4.761 11.5324 4.5 12.0034 4.5C12.1944 4.5 12.3854 4.545 12.5564 4.631C12.7934 4.75 12.9894 4.947 13.1074 5.184L14.9104 8.79L18.3254 9.132C19.0014 9.198 19.4974 9.803 19.4314 10.48C19.4034 10.765 19.2764 11.032 19.0754 11.233L16.2314 14.077L17.2854 17.94C17.3714 18.26 17.3284 18.593 17.1644 18.879C16.9994 19.166 16.7334 19.37 16.4154 19.456C16.3114 19.485 16.2024 19.499 16.0924 19.499C15.9024 19.499 15.7124 19.454 15.5434 19.37L12.0024 17.599L8.46241 19.371C8.28841 19.457 8.10341 19.501 7.91141 19.501Z" fill="#FFD500"></path></svg></span></a></li>
</ul>			</nav>
						<nav class="elementor-nav-menu--dropdown elementor-nav-menu__container" aria-hidden="true">
				<ul id="menu-2-58be456" class="elementor-nav-menu sm-vertical"><li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-269"><a href="/en/products/engagement/email-marketing" class="elementor-item" tabindex="-1">Email Marketing</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-270"><a href="/en/products/engagement/sms-messaging" class="elementor-item" tabindex="-1">SMS &#038; Messaging</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-271"><a href="/en/products/engagement/web-personalization" class="elementor-item" tabindex="-1">Web Personalization</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-272"><a href="/en/products/engagement/mobile-app-marketing" class="elementor-item" tabindex="-1">Mobile App</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-273"><a href="/en/products/engagement/ads-retargeting" class="elementor-item" tabindex="-1">Ads</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-274"><a href="/en/products/engagement/experiments-ab-testing" class="elementor-item" tabindex="-1">Testing &#038; Optimization</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-275"><a href="/en/products/discovery/search-intelligence" class="elementor-item" tabindex="-1">Ecommerce Search</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-32906"><a href="/en/products/discovery/merchandising" class="elementor-item" tabindex="-1">Merchandising</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-32907"><a href="/en/products/discovery/product-recommendations" class="elementor-item" tabindex="-1">Recs / Pathways</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-32908"><a href="/en/products/discovery/seo" class="elementor-item" tabindex="-1">SEO</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-32909"><a href="/en/products/content/headless-cms" class="elementor-item" tabindex="-1">Headless Content</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-32910"><a href="/en/products/clarity" class="elementor-item" tabindex="-1">Conversational Shopping<span class="menu-icon" ><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"><path d="M7.91141 19.501C7.44041 19.501 7.01641 19.24 6.80641 18.819C6.67041 18.546 6.63941 18.234 6.72041 17.941L7.77341 14.077L4.92741 11.23C4.69441 10.997 4.56641 10.687 4.56641 10.358C4.56641 10.028 4.69441 9.718 4.92841 9.485C5.12941 9.284 5.39641 9.157 5.68041 9.13L9.09441 8.788L10.8984 5.181C11.1094 4.761 11.5324 4.5 12.0034 4.5C12.1944 4.5 12.3854 4.545 12.5564 4.631C12.7934 4.75 12.9894 4.947 13.1074 5.184L14.9104 8.79L18.3254 9.132C19.0014 9.198 19.4974 9.803 19.4314 10.48C19.4034 10.765 19.2764 11.032 19.0754 11.233L16.2314 14.077L17.2854 17.94C17.3714 18.26 17.3284 18.593 17.1644 18.879C16.9994 19.166 16.7334 19.37 16.4154 19.456C16.3114 19.485 16.2024 19.499 16.0924 19.499C15.9024 19.499 15.7124 19.454 15.5434 19.37L12.0024 17.599L8.46241 19.371C8.28841 19.457 8.10341 19.501 7.91141 19.501Z" fill="#FFD500"></path></svg></span></a></li>
</ul>			</nav>
				</div>
				</div>
				</div>
		<div class="elementor-element elementor-element-cd99ed2 e-con-full e-flex e-con e-child" data-id="cd99ed2" data-element_type="container" data-category="footer_industries">
				<div class="elementor-element elementor-element-35b1ba8 elementor-widget elementor-widget-heading" data-id="35b1ba8" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<h3 class="elementor-heading-title elementor-size-default">Industries</h3>		</div>
				</div>
				<div class="elementor-element elementor-element-62f65ecd elementor-nav-menu--dropdown-none elementor-widget__width-inherit elementor-widget-tablet__width-inherit elementor-widget elementor-widget-nav-menu" data-id="62f65ecd" data-element_type="widget" data-settings="{&quot;layout&quot;:&quot;vertical&quot;,&quot;submenu_icon&quot;:{&quot;value&quot;:&quot;&lt;i class=\&quot;fas fa-caret-down\&quot;&gt;&lt;\/i&gt;&quot;,&quot;library&quot;:&quot;fa-solid&quot;}}" data-widget_type="nav-menu.default">
				<div class="elementor-widget-container">
						<nav aria-label="Menu" class="elementor-nav-menu--main elementor-nav-menu__container elementor-nav-menu--layout-vertical e--pointer-underline e--animation-fade">
				<ul id="menu-1-62f65ecd" class="elementor-nav-menu sm-vertical"><li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-277"><a href="/en/industries/retail" class="elementor-item">Retail &#038; Brands</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-279"><a href="/en/industries/travel-hospitality" class="elementor-item">Travel &#038; Hospitality</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-280"><a href="/en/industries/food-beverage" class="elementor-item">Food &#038; Beverage</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-281"><a href="/en/industries/financial-services" class="elementor-item">Financial Services</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-282"><a href="/en/industries/b2b" class="elementor-item">B2B</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-54279"><a href="/en/industries/igaming" class="elementor-item">iGaming</a></li>
</ul>			</nav>
						<nav class="elementor-nav-menu--dropdown elementor-nav-menu__container" aria-hidden="true">
				<ul id="menu-2-62f65ecd" class="elementor-nav-menu sm-vertical"><li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-277"><a href="/en/industries/retail" class="elementor-item" tabindex="-1">Retail &#038; Brands</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-279"><a href="/en/industries/travel-hospitality" class="elementor-item" tabindex="-1">Travel &#038; Hospitality</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-280"><a href="/en/industries/food-beverage" class="elementor-item" tabindex="-1">Food &#038; Beverage</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-281"><a href="/en/industries/financial-services" class="elementor-item" tabindex="-1">Financial Services</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-282"><a href="/en/industries/b2b" class="elementor-item" tabindex="-1">B2B</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-54279"><a href="/en/industries/igaming" class="elementor-item" tabindex="-1">iGaming</a></li>
</ul>			</nav>
				</div>
				</div>
				</div>
		<div class="elementor-element elementor-element-21f397c e-con-full e-flex e-con e-child" data-id="21f397c" data-element_type="container" data-category="footer_solutions">
				<div class="elementor-element elementor-element-da4c1bc elementor-widget elementor-widget-heading" data-id="da4c1bc" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<h3 class="elementor-heading-title elementor-size-default">Solutions</h3>		</div>
				</div>
				<div class="elementor-element elementor-element-10f280c8 elementor-nav-menu__align-start elementor-nav-menu--dropdown-none elementor-widget__width-inherit elementor-widget-tablet__width-inherit elementor-widget elementor-widget-nav-menu" data-id="10f280c8" data-element_type="widget" data-settings="{&quot;layout&quot;:&quot;vertical&quot;,&quot;submenu_icon&quot;:{&quot;value&quot;:&quot;&lt;i class=\&quot;fas fa-caret-down\&quot;&gt;&lt;\/i&gt;&quot;,&quot;library&quot;:&quot;fa-solid&quot;}}" data-widget_type="nav-menu.default">
				<div class="elementor-widget-container">
						<nav aria-label="Menu" class="elementor-nav-menu--main elementor-nav-menu__container elementor-nav-menu--layout-vertical e--pointer-underline e--animation-fade">
				<ul id="menu-1-10f280c8" class="elementor-nav-menu sm-vertical"><li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-285"><a href="/en/products/data-engine" class="elementor-item">Customer Data Engine</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-287"><a href="/en/integrations" class="elementor-item">Integrations</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-288"><a href="/en/partners/bloomreach-technology-partners" class="elementor-item">Technology Partners</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-32904"><a href="/en/partners/bloomreach-partner-agencies" class="elementor-item">Agency Partners</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-32905"><a href="/en/partners" class="elementor-item">Become a Partner</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-45956"><a href="https://www.bloomreach.com/en/products/tours" class="elementor-item">Tour Products (New!)<span class="menu-icon" ><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"><path d="M7.91141 19.501C7.44041 19.501 7.01641 19.24 6.80641 18.819C6.67041 18.546 6.63941 18.234 6.72041 17.941L7.77341 14.077L4.92741 11.23C4.69441 10.997 4.56641 10.687 4.56641 10.358C4.56641 10.028 4.69441 9.718 4.92841 9.485C5.12941 9.284 5.39641 9.157 5.68041 9.13L9.09441 8.788L10.8984 5.181C11.1094 4.761 11.5324 4.5 12.0034 4.5C12.1944 4.5 12.3854 4.545 12.5564 4.631C12.7934 4.75 12.9894 4.947 13.1074 5.184L14.9104 8.79L18.3254 9.132C19.0014 9.198 19.4974 9.803 19.4314 10.48C19.4034 10.765 19.2764 11.032 19.0754 11.233L16.2314 14.077L17.2854 17.94C17.3714 18.26 17.3284 18.593 17.1644 18.879C16.9994 19.166 16.7334 19.37 16.4154 19.456C16.3114 19.485 16.2024 19.499 16.0924 19.499C15.9024 19.499 15.7124 19.454 15.5434 19.37L12.0024 17.599L8.46241 19.371C8.28841 19.457 8.10341 19.501 7.91141 19.501Z" fill="#FFD500"></path></svg></span></a></li>
</ul>			</nav>
						<nav class="elementor-nav-menu--dropdown elementor-nav-menu__container" aria-hidden="true">
				<ul id="menu-2-10f280c8" class="elementor-nav-menu sm-vertical"><li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-285"><a href="/en/products/data-engine" class="elementor-item" tabindex="-1">Customer Data Engine</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-287"><a href="/en/integrations" class="elementor-item" tabindex="-1">Integrations</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-288"><a href="/en/partners/bloomreach-technology-partners" class="elementor-item" tabindex="-1">Technology Partners</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-32904"><a href="/en/partners/bloomreach-partner-agencies" class="elementor-item" tabindex="-1">Agency Partners</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-32905"><a href="/en/partners" class="elementor-item" tabindex="-1">Become a Partner</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-45956"><a href="https://www.bloomreach.com/en/products/tours" class="elementor-item" tabindex="-1">Tour Products (New!)<span class="menu-icon" ><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"><path d="M7.91141 19.501C7.44041 19.501 7.01641 19.24 6.80641 18.819C6.67041 18.546 6.63941 18.234 6.72041 17.941L7.77341 14.077L4.92741 11.23C4.69441 10.997 4.56641 10.687 4.56641 10.358C4.56641 10.028 4.69441 9.718 4.92841 9.485C5.12941 9.284 5.39641 9.157 5.68041 9.13L9.09441 8.788L10.8984 5.181C11.1094 4.761 11.5324 4.5 12.0034 4.5C12.1944 4.5 12.3854 4.545 12.5564 4.631C12.7934 4.75 12.9894 4.947 13.1074 5.184L14.9104 8.79L18.3254 9.132C19.0014 9.198 19.4974 9.803 19.4314 10.48C19.4034 10.765 19.2764 11.032 19.0754 11.233L16.2314 14.077L17.2854 17.94C17.3714 18.26 17.3284 18.593 17.1644 18.879C16.9994 19.166 16.7334 19.37 16.4154 19.456C16.3114 19.485 16.2024 19.499 16.0924 19.499C15.9024 19.499 15.7124 19.454 15.5434 19.37L12.0024 17.599L8.46241 19.371C8.28841 19.457 8.10341 19.501 7.91141 19.501Z" fill="#FFD500"></path></svg></span></a></li>
</ul>			</nav>
				</div>
				</div>
				</div>
		<div class="elementor-element elementor-element-d382296 e-con-full e-flex e-con e-child" data-id="d382296" data-element_type="container" data-category="footer_resources">
				<div class="elementor-element elementor-element-8e11737 elementor-widget elementor-widget-heading" data-id="8e11737" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<h3 class="elementor-heading-title elementor-size-default">Resources</h3>		</div>
				</div>
				<div class="elementor-element elementor-element-6e532812 elementor-nav-menu--dropdown-none elementor-widget__width-inherit elementor-widget-tablet__width-inherit elementor-widget elementor-widget-nav-menu" data-id="6e532812" data-element_type="widget" data-settings="{&quot;layout&quot;:&quot;vertical&quot;,&quot;submenu_icon&quot;:{&quot;value&quot;:&quot;&lt;i class=\&quot;fas fa-caret-down\&quot;&gt;&lt;\/i&gt;&quot;,&quot;library&quot;:&quot;fa-solid&quot;}}" data-widget_type="nav-menu.default">
				<div class="elementor-widget-container">
						<nav aria-label="Menu" class="elementor-nav-menu--main elementor-nav-menu__container elementor-nav-menu--layout-vertical e--pointer-underline e--animation-fade">
				<ul id="menu-1-6e532812" class="elementor-nav-menu sm-vertical"><li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-290"><a href="/en/library" class="elementor-item">Resource Library</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-291"><a href="/en/library/use-cases" class="elementor-item">Use Cases</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-32897"><a href="/en/products/engagement/plug-and-play" class="elementor-item">Plug &#038; Play</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-32898"><a href="https://academy.bloomreach.com" class="elementor-item">Bloomreach Academy</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-32899"><a href="/en/case-studies" class="elementor-item">Case Studies</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-32900"><a href="https://documentation.bloomreach.com/" class="elementor-item">Documentation</a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-32902"><a href="https://www.bloomreach.com/en/privacy-at-bloomreach" class="elementor-item">Privacy at Bloomreach</a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-32903"><a href="https://www.bloomreach.com/en/security-at-bloomreach" class="elementor-item">Security at Bloomreach</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-55650"><a href="/en/exclusive-insights-from-bloomreach" class="elementor-item">Exclusive Insights from Bloomreach</a></li>
</ul>			</nav>
						<nav class="elementor-nav-menu--dropdown elementor-nav-menu__container" aria-hidden="true">
				<ul id="menu-2-6e532812" class="elementor-nav-menu sm-vertical"><li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-290"><a href="/en/library" class="elementor-item" tabindex="-1">Resource Library</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-291"><a href="/en/library/use-cases" class="elementor-item" tabindex="-1">Use Cases</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-32897"><a href="/en/products/engagement/plug-and-play" class="elementor-item" tabindex="-1">Plug &#038; Play</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-32898"><a href="https://academy.bloomreach.com" class="elementor-item" tabindex="-1">Bloomreach Academy</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-32899"><a href="/en/case-studies" class="elementor-item" tabindex="-1">Case Studies</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-32900"><a href="https://documentation.bloomreach.com/" class="elementor-item" tabindex="-1">Documentation</a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-32902"><a href="https://www.bloomreach.com/en/privacy-at-bloomreach" class="elementor-item" tabindex="-1">Privacy at Bloomreach</a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-32903"><a href="https://www.bloomreach.com/en/security-at-bloomreach" class="elementor-item" tabindex="-1">Security at Bloomreach</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-55650"><a href="/en/exclusive-insights-from-bloomreach" class="elementor-item" tabindex="-1">Exclusive Insights from Bloomreach</a></li>
</ul>			</nav>
				</div>
				</div>
				</div>
		<div class="elementor-element elementor-element-a084b10 e-con-full e-flex e-con e-child" data-id="a084b10" data-element_type="container" data-category="footer_about">
				<div class="elementor-element elementor-element-dde6174 elementor-widget elementor-widget-heading" data-id="dde6174" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<h3 class="elementor-heading-title elementor-size-default">About Us</h3>		</div>
				</div>
				<div class="elementor-element elementor-element-970105b elementor-nav-menu--dropdown-none elementor-widget__width-inherit elementor-widget-tablet__width-inherit elementor-widget elementor-widget-nav-menu" data-id="970105b" data-element_type="widget" data-settings="{&quot;layout&quot;:&quot;vertical&quot;,&quot;submenu_icon&quot;:{&quot;value&quot;:&quot;&lt;i class=\&quot;fas fa-caret-down\&quot;&gt;&lt;\/i&gt;&quot;,&quot;library&quot;:&quot;fa-solid&quot;}}" data-widget_type="nav-menu.default">
				<div class="elementor-widget-container">
						<nav aria-label="Menu" class="elementor-nav-menu--main elementor-nav-menu__container elementor-nav-menu--layout-vertical e--pointer-underline e--animation-fade">
				<ul id="menu-1-970105b" class="elementor-nav-menu sm-vertical"><li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-32893"><a href="https://www.bloomreach.com/en/contact-us" class="elementor-item">Contact Us</a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-page current_page_parent menu-item-32894"><a href="https://www.bloomreach.com/en/news" class="elementor-item">News Releases</a></li>
<li class="add-careers-counter menu-item menu-item-type-custom menu-item-object-custom menu-item-635"><a href="/en/careers" class="elementor-item">Careers</a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-32892"><a href="https://www.bloomreach.com/en/about-us" class="elementor-item">Our Story</a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-32891"><a href="https://www.bloomreach.com/en/about-us/leadership-team" class="elementor-item">Leadership Team</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-60653"><a href="/en/about-us/compliance" class="elementor-item">Compliance</a></li>
</ul>			</nav>
						<nav class="elementor-nav-menu--dropdown elementor-nav-menu__container" aria-hidden="true">
				<ul id="menu-2-970105b" class="elementor-nav-menu sm-vertical"><li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-32893"><a href="https://www.bloomreach.com/en/contact-us" class="elementor-item" tabindex="-1">Contact Us</a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-page current_page_parent menu-item-32894"><a href="https://www.bloomreach.com/en/news" class="elementor-item" tabindex="-1">News Releases</a></li>
<li class="add-careers-counter menu-item menu-item-type-custom menu-item-object-custom menu-item-635"><a href="/en/careers" class="elementor-item" tabindex="-1">Careers</a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-32892"><a href="https://www.bloomreach.com/en/about-us" class="elementor-item" tabindex="-1">Our Story</a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-32891"><a href="https://www.bloomreach.com/en/about-us/leadership-team" class="elementor-item" tabindex="-1">Leadership Team</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-60653"><a href="/en/about-us/compliance" class="elementor-item" tabindex="-1">Compliance</a></li>
</ul>			</nav>
				</div>
				</div>
				</div>
				</div>
		<div class="elementor-element elementor-element-265c208d e-con-full e-flex e-con e-child" data-id="265c208d" data-element_type="container">
		<div class="elementor-element elementor-element-3e5b248f e-con-full e-flex e-con e-child" data-id="3e5b248f" data-element_type="container">
		<div class="elementor-element elementor-element-40add3ff e-con-full wmpl-container e-flex e-con e-child" data-id="40add3ff" data-element_type="container" data-category="footer_language">
				<div class="elementor-element elementor-element-57b92a43 footer-wpml elementor-widget elementor-widget-wpml-language-switcher" data-id="57b92a43" data-element_type="widget" data-widget_type="wpml-language-switcher.default">
				<div class="elementor-widget-container">
			<div class="wpml-elementor-ls">
<div
	 class="wpml-ls-statics-shortcode_actions wpml-ls wpml-ls-legacy-dropdown js-wpml-ls-legacy-dropdown">
	<ul>

		<li tabindex="0" class="wpml-ls-slot-shortcode_actions wpml-ls-item wpml-ls-item-en wpml-ls-current-language wpml-ls-first-item wpml-ls-item-legacy-dropdown">
			<a href="#" class="js-wpml-ls-item-toggle wpml-ls-item-toggle">
                <span class="wpml-ls-native">EN</span></a>

			<ul class="wpml-ls-sub-menu">
				
					<li class="wpml-ls-slot-shortcode_actions wpml-ls-item wpml-ls-item-fr">
						<a href="https://www.bloomreach.com/fr/produits/engagement" class="wpml-ls-link">
                            <span class="wpml-ls-native" lang="fr">FR</span></a>
					</li>

				
					<li class="wpml-ls-slot-shortcode_actions wpml-ls-item wpml-ls-item-de wpml-ls-last-item">
						<a href="https://www.bloomreach.com/de/produkte/engagement" class="wpml-ls-link">
                            <span class="wpml-ls-native" lang="de">DE</span></a>
					</li>

							</ul>

		</li>

	</ul>
</div>
</div>		</div>
				</div>
				</div>
				<div class="elementor-element elementor-element-4fb3be00 elementor-shape-rounded elementor-grid-0 e-grid-align-center elementor-widget elementor-widget-social-icons" data-id="4fb3be00" data-element_type="widget" data-category="footer_social" data-widget_type="social-icons.default">
				<div class="elementor-widget-container">
			<style>/*! elementor - v3.23.0 - 05-08-2024 */
.elementor-widget-social-icons.elementor-grid-0 .elementor-widget-container,.elementor-widget-social-icons.elementor-grid-mobile-0 .elementor-widget-container,.elementor-widget-social-icons.elementor-grid-tablet-0 .elementor-widget-container{line-height:1;font-size:0}.elementor-widget-social-icons:not(.elementor-grid-0):not(.elementor-grid-tablet-0):not(.elementor-grid-mobile-0) .elementor-grid{display:inline-grid}.elementor-widget-social-icons .elementor-grid{grid-column-gap:var(--grid-column-gap,5px);grid-row-gap:var(--grid-row-gap,5px);grid-template-columns:var(--grid-template-columns);justify-content:var(--justify-content,center);justify-items:var(--justify-content,center)}.elementor-icon.elementor-social-icon{font-size:var(--icon-size,25px);line-height:var(--icon-size,25px);width:calc(var(--icon-size, 25px) + 2 * var(--icon-padding, .5em));height:calc(var(--icon-size, 25px) + 2 * var(--icon-padding, .5em))}.elementor-social-icon{--e-social-icon-icon-color:#fff;display:inline-flex;background-color:#69727d;align-items:center;justify-content:center;text-align:center;cursor:pointer}.elementor-social-icon i{color:var(--e-social-icon-icon-color)}.elementor-social-icon svg{fill:var(--e-social-icon-icon-color)}.elementor-social-icon:last-child{margin:0}.elementor-social-icon:hover{opacity:.9;color:#fff}.elementor-social-icon-android{background-color:#a4c639}.elementor-social-icon-apple{background-color:#999}.elementor-social-icon-behance{background-color:#1769ff}.elementor-social-icon-bitbucket{background-color:#205081}.elementor-social-icon-codepen{background-color:#000}.elementor-social-icon-delicious{background-color:#39f}.elementor-social-icon-deviantart{background-color:#05cc47}.elementor-social-icon-digg{background-color:#005be2}.elementor-social-icon-dribbble{background-color:#ea4c89}.elementor-social-icon-elementor{background-color:#d30c5c}.elementor-social-icon-envelope{background-color:#ea4335}.elementor-social-icon-facebook,.elementor-social-icon-facebook-f{background-color:#3b5998}.elementor-social-icon-flickr{background-color:#0063dc}.elementor-social-icon-foursquare{background-color:#2d5be3}.elementor-social-icon-free-code-camp,.elementor-social-icon-freecodecamp{background-color:#006400}.elementor-social-icon-github{background-color:#333}.elementor-social-icon-gitlab{background-color:#e24329}.elementor-social-icon-globe{background-color:#69727d}.elementor-social-icon-google-plus,.elementor-social-icon-google-plus-g{background-color:#dd4b39}.elementor-social-icon-houzz{background-color:#7ac142}.elementor-social-icon-instagram{background-color:#262626}.elementor-social-icon-jsfiddle{background-color:#487aa2}.elementor-social-icon-link{background-color:#818a91}.elementor-social-icon-linkedin,.elementor-social-icon-linkedin-in{background-color:#0077b5}.elementor-social-icon-medium{background-color:#00ab6b}.elementor-social-icon-meetup{background-color:#ec1c40}.elementor-social-icon-mixcloud{background-color:#273a4b}.elementor-social-icon-odnoklassniki{background-color:#f4731c}.elementor-social-icon-pinterest{background-color:#bd081c}.elementor-social-icon-product-hunt{background-color:#da552f}.elementor-social-icon-reddit{background-color:#ff4500}.elementor-social-icon-rss{background-color:#f26522}.elementor-social-icon-shopping-cart{background-color:#4caf50}.elementor-social-icon-skype{background-color:#00aff0}.elementor-social-icon-slideshare{background-color:#0077b5}.elementor-social-icon-snapchat{background-color:#fffc00}.elementor-social-icon-soundcloud{background-color:#f80}.elementor-social-icon-spotify{background-color:#2ebd59}.elementor-social-icon-stack-overflow{background-color:#fe7a15}.elementor-social-icon-steam{background-color:#00adee}.elementor-social-icon-stumbleupon{background-color:#eb4924}.elementor-social-icon-telegram{background-color:#2ca5e0}.elementor-social-icon-threads{background-color:#000}.elementor-social-icon-thumb-tack{background-color:#1aa1d8}.elementor-social-icon-tripadvisor{background-color:#589442}.elementor-social-icon-tumblr{background-color:#35465c}.elementor-social-icon-twitch{background-color:#6441a5}.elementor-social-icon-twitter{background-color:#1da1f2}.elementor-social-icon-viber{background-color:#665cac}.elementor-social-icon-vimeo{background-color:#1ab7ea}.elementor-social-icon-vk{background-color:#45668e}.elementor-social-icon-weibo{background-color:#dd2430}.elementor-social-icon-weixin{background-color:#31a918}.elementor-social-icon-whatsapp{background-color:#25d366}.elementor-social-icon-wordpress{background-color:#21759b}.elementor-social-icon-x-twitter{background-color:#000}.elementor-social-icon-xing{background-color:#026466}.elementor-social-icon-yelp{background-color:#af0606}.elementor-social-icon-youtube{background-color:#cd201f}.elementor-social-icon-500px{background-color:#0099e5}.elementor-shape-rounded .elementor-icon.elementor-social-icon{border-radius:10%}.elementor-shape-circle .elementor-icon.elementor-social-icon{border-radius:50%}</style>		<div class="elementor-social-icons-wrapper elementor-grid">
							<span class="elementor-grid-item">
					<a class="elementor-icon elementor-social-icon elementor-social-icon-facebook elementor-repeater-item-8429dd4" href="https://www.facebook.com/bloomreach" target="_blank">
						<span class="elementor-screen-only">Facebook</span>
						<i class="fab fa-facebook"></i>					</a>
				</span>
							<span class="elementor-grid-item">
					<a class="elementor-icon elementor-social-icon elementor-social-icon-instagram elementor-repeater-item-79633a3" href="https://www.instagram.com/bloomreach_tm/" target="_blank">
						<span class="elementor-screen-only">Instagram</span>
						<i class="fab fa-instagram"></i>					</a>
				</span>
							<span class="elementor-grid-item">
					<a class="elementor-icon elementor-social-icon elementor-social-icon-linkedin-in elementor-repeater-item-48f53a7" href="https://www.linkedin.com/company/bloomreach" target="_blank">
						<span class="elementor-screen-only">Linkedin-in</span>
						<i class="fab fa-linkedin-in"></i>					</a>
				</span>
							<span class="elementor-grid-item">
					<a class="elementor-icon elementor-social-icon elementor-social-icon-youtube elementor-repeater-item-6dad65f" href="https://www.youtube.com/c/bloomreach_tm" target="_blank">
						<span class="elementor-screen-only">Youtube</span>
						<i class="fab fa-youtube"></i>					</a>
				</span>
							<span class="elementor-grid-item">
					<a class="elementor-icon elementor-social-icon elementor-social-icon-x-twitter elementor-repeater-item-177c1fb" href="https://x.com/bloomreach_tm" target="_blank">
						<span class="elementor-screen-only">X-twitter</span>
						<i class="fab fa-x-twitter"></i>					</a>
				</span>
							<span class="elementor-grid-item">
					<a class="elementor-icon elementor-social-icon elementor-social-icon-spotify elementor-repeater-item-733ff0d" href="https://open.spotify.com/show/5Gt6L0xU8Jae0AZTxKqtth" target="_blank">
						<span class="elementor-screen-only">Spotify</span>
						<i class="fab fa-spotify"></i>					</a>
				</span>
					</div>
				</div>
				</div>
		<div class="elementor-element elementor-element-2fb4aba e-con-full e-flex e-con e-child" data-id="2fb4aba" data-element_type="container">
		<div class="elementor-element elementor-element-6cfbc3d e-con-full e-flex e-con e-child" data-id="6cfbc3d" data-element_type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
				<div class="elementor-element elementor-element-b35513e elementor-widget elementor-widget-heading" data-id="b35513e" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<h2 class="elementor-heading-title elementor-size-default">The latest Bloomreach insights delivered to your inbox</h2>		</div>
				</div>
		<div class="elementor-element elementor-element-d333d61 e-con-full bloomreach_hs_form e-flex e-con e-child" data-id="d333d61" data-element_type="container">
				<div class="elementor-element elementor-element-d78d836 elementor-widget elementor-widget-hubspot_widget" data-id="d78d836" data-element_type="widget" data-widget_type="hubspot_widget.default">
				<div class="elementor-widget-container">
			        <div class="hubspot-form-elementor">
            <div class="hubspot-form-container" data-portal-id="7227558"
                data-form-id="892ed626-729e-4b0f-8fc8-00586f6b7ad0"
                id="hubspot-form-892ed626-729e-4b0f-8fc8-00586f6b7ad0-681c9f5b86c75"
            ></div>
        </div>
        		</div>
				</div>
				</div>
				</div>
				</div>
				</div>
		<div class="elementor-element elementor-element-6c946415 footer-menu-container legal-menu-container e-con-full e-flex e-con e-child" data-id="6c946415" data-element_type="container" data-category="footer_legal">
				<div class="elementor-element elementor-element-3a7d5d13 elementor-widget elementor-widget-text-editor" data-id="3a7d5d13" data-element_type="widget" data-widget_type="text-editor.default">
				<div class="elementor-widget-container">
							© 2025 Bloomreach, Inc.						</div>
				</div>
				<div class="elementor-element elementor-element-60dbc675 elementor-nav-menu__align-end elementor-widget__width-initial elementor-nav-menu--dropdown-none elementor-widget elementor-widget-nav-menu" data-id="60dbc675" data-element_type="widget" data-settings="{&quot;layout&quot;:&quot;horizontal&quot;,&quot;submenu_icon&quot;:{&quot;value&quot;:&quot;&lt;i class=\&quot;fas fa-caret-down\&quot;&gt;&lt;\/i&gt;&quot;,&quot;library&quot;:&quot;fa-solid&quot;}}" data-widget_type="nav-menu.default">
				<div class="elementor-widget-container">
						<nav aria-label="Menu" class="elementor-nav-menu--main elementor-nav-menu__container elementor-nav-menu--layout-horizontal e--pointer-underline e--animation-fade">
				<ul id="menu-1-60dbc675" class="elementor-nav-menu"><li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-359"><a href="/en/legal/terms-of-use" class="elementor-item">Terms of Service</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-360"><a href="/en/legal/privacy" class="elementor-item">Privacy Policy</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-361"><a href="/cdn-cgi/l/email-protection#e286928da2808e8d8d8f908783818acc818d8f" class="elementor-item">Contact DPO</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-362"><a href="/en/legal/control-your-data/download-my-data" class="elementor-item">Control Your Data</a></li>
<li class="cky-banner-element menu-item menu-item-type-custom menu-item-object-custom menu-item-363"><a href="#" class="elementor-item elementor-item-anchor">Cookie Settings</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-364"><a href="/wp-content/uploads/2024/08/public-quality-information-security-business-continuity-policy_08-22-24.pdf" class="elementor-item">Quality, Infosec, BCM policy</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-365"><a href="https://www.bloomreach.com/wp-content/uploads/2024/08/ModernSlaveryAct-2015_-slavery-and-human-trafficking-statement_FY2023.pdf" class="elementor-item">UK Modern Slavery Act</a></li>
</ul>			</nav>
						<nav class="elementor-nav-menu--dropdown elementor-nav-menu__container" aria-hidden="true">
				<ul id="menu-2-60dbc675" class="elementor-nav-menu"><li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-359"><a href="/en/legal/terms-of-use" class="elementor-item" tabindex="-1">Terms of Service</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-360"><a href="/en/legal/privacy" class="elementor-item" tabindex="-1">Privacy Policy</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-361"><a href="/cdn-cgi/l/email-protection#9efaeef1defcf2f1f1f3ecfbfffdf6b0fdf1f3" class="elementor-item" tabindex="-1">Contact DPO</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-362"><a href="/en/legal/control-your-data/download-my-data" class="elementor-item" tabindex="-1">Control Your Data</a></li>
<li class="cky-banner-element menu-item menu-item-type-custom menu-item-object-custom menu-item-363"><a href="#" class="elementor-item elementor-item-anchor" tabindex="-1">Cookie Settings</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-364"><a href="/wp-content/uploads/2024/08/public-quality-information-security-business-continuity-policy_08-22-24.pdf" class="elementor-item" tabindex="-1">Quality, Infosec, BCM policy</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-365"><a href="https://www.bloomreach.com/wp-content/uploads/2024/08/ModernSlaveryAct-2015_-slavery-and-human-trafficking-statement_FY2023.pdf" class="elementor-item" tabindex="-1">UK Modern Slavery Act</a></li>
</ul>			</nav>
				</div>
				</div>
				</div>
				</div>
		<div class="elementor-element elementor-element-39fed174 e-con-full e-flex e-con e-child" data-id="39fed174" data-element_type="container" data-category="footer_badges">
				<div class="elementor-element elementor-element-2f289fb8 no_border_radius elementor-widget elementor-widget-image" data-id="2f289fb8" data-element_type="widget" data-widget_type="image.default">
				<div class="elementor-widget-container">
													<img width="105" height="60" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20105%2060'%3E%3C/svg%3E" class="attachment-full size-full wp-image-33014" alt="br-badge-iso" data-lazy-src="https://www.bloomreach.com/wp-content/uploads/2024/05/br-badge-iso.svg" /><noscript><img width="105" height="60" src="https://www.bloomreach.com/wp-content/uploads/2024/05/br-badge-iso.svg" class="attachment-full size-full wp-image-33014" alt="br-badge-iso" /></noscript>													</div>
				</div>
				<div class="elementor-element elementor-element-6aabafda no_border_radius elementor-widget elementor-widget-image" data-id="6aabafda" data-element_type="widget" data-widget_type="image.default">
				<div class="elementor-widget-container">
													<img width="105" height="60" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20105%2060'%3E%3C/svg%3E" class="attachment-full size-full wp-image-33017" alt="br-badge-gdpr" data-lazy-src="https://www.bloomreach.com/wp-content/uploads/2024/05/br-badge-gdpr.svg" /><noscript><img width="105" height="60" src="https://www.bloomreach.com/wp-content/uploads/2024/05/br-badge-gdpr.svg" class="attachment-full size-full wp-image-33017" alt="br-badge-gdpr" /></noscript>													</div>
				</div>
				<div class="elementor-element elementor-element-650e2e1 no_border_radius elementor-widget elementor-widget-image" data-id="650e2e1" data-element_type="widget" data-widget_type="image.default">
				<div class="elementor-widget-container">
													<img width="256" height="146" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20256%20146'%3E%3C/svg%3E" class="attachment-full size-full wp-image-33020" alt="br-badge-gdpr-02" data-lazy-src="https://www.bloomreach.com/wp-content/uploads/2024/05/br-badge-gdpr-02.webp" /><noscript><img width="256" height="146" src="https://www.bloomreach.com/wp-content/uploads/2024/05/br-badge-gdpr-02.webp" class="attachment-full size-full wp-image-33020" alt="br-badge-gdpr-02" /></noscript>													</div>
				</div>
				<div class="elementor-element elementor-element-85a0777 no_border_radius elementor-widget elementor-widget-image" data-id="85a0777" data-element_type="widget" data-widget_type="image.default">
				<div class="elementor-widget-container">
														<a href="https://machalliance.org/members" target="_blank">
							<img width="105" height="60" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20105%2060'%3E%3C/svg%3E" class="attachment-full size-full wp-image-33026" alt="mach-alliance-badge" data-lazy-src="https://www.bloomreach.com/wp-content/uploads/2024/05/mach-alliance-badge.svg" /><noscript><img width="105" height="60" src="https://www.bloomreach.com/wp-content/uploads/2024/05/mach-alliance-badge.svg" class="attachment-full size-full wp-image-33026" alt="mach-alliance-badge" /></noscript>								</a>
													</div>
				</div>
				</div>
					</div>
				</div>
				</div>
		
<script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script type="speculationrules">
{"prefetch":[{"source":"document","where":{"and":[{"href_matches":"\/en\/*"},{"not":{"href_matches":["\/wp-*.php","\/wp-admin\/*","\/wp-content\/uploads\/*","\/wp-content\/*","\/wp-content\/plugins\/*","\/wp-content\/themes\/hello-theme-child-master\/*","\/wp-content\/themes\/hello-elementor\/*","\/en\/*\\?(.+)"]}},{"not":{"selector_matches":"a[rel~=\"nofollow\"]"}},{"not":{"selector_matches":".no-prefetch, .no-prefetch a"}}]},"eagerness":"conservative"}]}
</script>
		<div data-elementor-type="popup" data-elementor-id="975" class="elementor elementor-975 elementor-location-popup" data-elementor-settings="{&quot;entrance_animation&quot;:&quot;slideInRight&quot;,&quot;exit_animation&quot;:&quot;slideInRight&quot;,&quot;entrance_animation_duration&quot;:{&quot;unit&quot;:&quot;px&quot;,&quot;size&quot;:0.4,&quot;sizes&quot;:[]},&quot;prevent_scroll&quot;:&quot;yes&quot;,&quot;classes&quot;:&quot;mobile_menu_popup&quot;,&quot;prevent_close_on_background_click&quot;:&quot;yes&quot;,&quot;a11y_navigation&quot;:&quot;yes&quot;,&quot;triggers&quot;:[],&quot;timing&quot;:[]}" data-elementor-post-type="elementor_library">
			<div class="elementor-element elementor-element-aeb02e4 e-con-full mobile_menu_section e-flex e-con e-parent" data-id="aeb02e4" data-element_type="container">
		<div class="elementor-element elementor-element-b2ae7fa e-con-full e-flex e-con e-child" data-id="b2ae7fa" data-element_type="container">
				<div class="elementor-element elementor-element-21c351a elementor-nav-menu--dropdown-none lang_switch_menu elementor-widget elementor-widget-nav-menu" data-id="21c351a" data-element_type="widget" data-settings="{&quot;layout&quot;:&quot;horizontal&quot;,&quot;submenu_icon&quot;:{&quot;value&quot;:&quot;&lt;i class=\&quot;fas fa-caret-down\&quot;&gt;&lt;\/i&gt;&quot;,&quot;library&quot;:&quot;fa-solid&quot;}}" data-widget_type="nav-menu.default">
				<div class="elementor-widget-container">
						<nav aria-label="Menu" class="elementor-nav-menu--main elementor-nav-menu__container elementor-nav-menu--layout-horizontal e--pointer-none">
				<ul id="menu-1-21c351a" class="elementor-nav-menu"><li class="login_dropdown menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-341"><a class="elementor-item">Login</a>
<ul class="sub-menu elementor-nav-menu--dropdown">
	<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-35932"><a href="https://tools.bloomreach.com/login" class="elementor-sub-item">Content / Discovery<span class="menu-icon" ><svg width="36" height="16" viewBox="0 0 36 16" fill="none" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
<g clip-path="url(#clip0_1148_5414)">
<rect width="16" height="16" fill="url(#pattern0_1148_5414)"/>
<rect x="20" width="16" height="16" fill="url(#pattern1_1148_5414)"/>
</g>
<defs>
<pattern id="pattern0_1148_5414" patternContentUnits="objectBoundingBox" width="1" height="1">
<use xlink:href="#image0_1148_5414" transform="scale(0.00714286)"/>
</pattern>
<pattern id="pattern1_1148_5414" patternContentUnits="objectBoundingBox" width="1" height="1">
<use xlink:href="#image1_1148_5414" transform="scale(0.00714286)"/>
</pattern>
<clipPath id="clip0_1148_5414">
<rect width="36" height="16" fill="white"/>
</clipPath>
<image id="image0_1148_5414" width="140" height="140" xlink:href="data:image/png;base64,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"/>
<image id="image1_1148_5414" width="140" height="140" xlink:href="data:image/png;base64,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"/>
</defs>
</svg>
</span><div class="menu-description">Product Discovery and CMS</div></a></li>
	<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-35933"><a href="https://app.exponea.com/login" class="elementor-sub-item">Engagement Platform<span class="menu-icon" ><svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
<rect width="16" height="16" fill="url(#pattern0_1148_5423)"/>
<defs>
<pattern id="pattern0_1148_5423" patternContentUnits="objectBoundingBox" width="1" height="1">
<use xlink:href="#image0_1148_5423" transform="scale(0.00714286)"/>
</pattern>
<image id="image0_1148_5423" width="140" height="140" xlink:href="data:image/png;base64,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"/>
</defs>
</svg>
</span><div class="menu-description">Please login through the link in your invite email</div></a></li>
</ul>
</li>
<li class="menu-item wpml-ls-slot-24 wpml-ls-item wpml-ls-item-en wpml-ls-current-language wpml-ls-menu-item wpml-ls-first-item menu-item-type-wpml_ls_menu_item menu-item-object-wpml_ls_menu_item menu-item-has-children menu-item-wpml-ls-24-en"><a href="https://www.bloomreach.com/en/products/engagement" title="Switch to EN" class="elementor-item"><span class="wpml-ls-native" lang="en">EN</span></a>
<ul class="sub-menu elementor-nav-menu--dropdown">
	<li class="menu-item wpml-ls-slot-24 wpml-ls-item wpml-ls-item-fr wpml-ls-menu-item menu-item-type-wpml_ls_menu_item menu-item-object-wpml_ls_menu_item menu-item-wpml-ls-24-fr"><a href="https://www.bloomreach.com/fr/produits/engagement" title="Switch to FR" class="elementor-sub-item"><span class="wpml-ls-native" lang="fr">FR</span></a></li>
	<li class="menu-item wpml-ls-slot-24 wpml-ls-item wpml-ls-item-de wpml-ls-menu-item wpml-ls-last-item menu-item-type-wpml_ls_menu_item menu-item-object-wpml_ls_menu_item menu-item-wpml-ls-24-de"><a href="https://www.bloomreach.com/de/produkte/engagement" title="Switch to DE" class="elementor-sub-item"><span class="wpml-ls-native" lang="de">DE</span></a></li>
</ul>
</li>
</ul>			</nav>
						<nav class="elementor-nav-menu--dropdown elementor-nav-menu__container" aria-hidden="true">
				<ul id="menu-2-21c351a" class="elementor-nav-menu"><li class="login_dropdown menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-341"><a class="elementor-item" tabindex="-1">Login</a>
<ul class="sub-menu elementor-nav-menu--dropdown">
	<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-35932"><a href="https://tools.bloomreach.com/login" class="elementor-sub-item" tabindex="-1">Content / Discovery<span class="menu-icon" ><svg width="36" height="16" viewBox="0 0 36 16" fill="none" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
<g clip-path="url(#clip0_1148_5414)">
<rect width="16" height="16" fill="url(#pattern0_1148_5414)"/>
<rect x="20" width="16" height="16" fill="url(#pattern1_1148_5414)"/>
</g>
<defs>
<pattern id="pattern0_1148_5414" patternContentUnits="objectBoundingBox" width="1" height="1">
<use xlink:href="#image0_1148_5414" transform="scale(0.00714286)"/>
</pattern>
<pattern id="pattern1_1148_5414" patternContentUnits="objectBoundingBox" width="1" height="1">
<use xlink:href="#image1_1148_5414" transform="scale(0.00714286)"/>
</pattern>
<clipPath id="clip0_1148_5414">
<rect width="36" height="16" fill="white"/>
</clipPath>
<image id="image0_1148_5414" width="140" height="140" xlink:href="data:image/png;base64,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"/>
<image id="image1_1148_5414" width="140" height="140" xlink:href="data:image/png;base64,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"/>
</defs>
</svg>
</span><div class="menu-description">Product Discovery and CMS</div></a></li>
	<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-35933"><a href="https://app.exponea.com/login" class="elementor-sub-item" tabindex="-1">Engagement Platform<span class="menu-icon" ><svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
<rect width="16" height="16" fill="url(#pattern0_1148_5423)"/>
<defs>
<pattern id="pattern0_1148_5423" patternContentUnits="objectBoundingBox" width="1" height="1">
<use xlink:href="#image0_1148_5423" transform="scale(0.00714286)"/>
</pattern>
<image id="image0_1148_5423" width="140" height="140" xlink:href="data:image/png;base64,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"/>
</defs>
</svg>
</span><div class="menu-description">Please login through the link in your invite email</div></a></li>
</ul>
</li>
<li class="menu-item wpml-ls-slot-24 wpml-ls-item wpml-ls-item-en wpml-ls-current-language wpml-ls-menu-item wpml-ls-first-item menu-item-type-wpml_ls_menu_item menu-item-object-wpml_ls_menu_item menu-item-has-children menu-item-wpml-ls-24-en"><a href="https://www.bloomreach.com/en/products/engagement" title="Switch to EN" class="elementor-item" tabindex="-1"><span class="wpml-ls-native" lang="en">EN</span></a>
<ul class="sub-menu elementor-nav-menu--dropdown">
	<li class="menu-item wpml-ls-slot-24 wpml-ls-item wpml-ls-item-fr wpml-ls-menu-item menu-item-type-wpml_ls_menu_item menu-item-object-wpml_ls_menu_item menu-item-wpml-ls-24-fr"><a href="https://www.bloomreach.com/fr/produits/engagement" title="Switch to FR" class="elementor-sub-item" tabindex="-1"><span class="wpml-ls-native" lang="fr">FR</span></a></li>
	<li class="menu-item wpml-ls-slot-24 wpml-ls-item wpml-ls-item-de wpml-ls-menu-item wpml-ls-last-item menu-item-type-wpml_ls_menu_item menu-item-object-wpml_ls_menu_item menu-item-wpml-ls-24-de"><a href="https://www.bloomreach.com/de/produkte/engagement" title="Switch to DE" class="elementor-sub-item" tabindex="-1"><span class="wpml-ls-native" lang="de">DE</span></a></li>
</ul>
</li>
</ul>			</nav>
				</div>
				</div>
		<div class="elementor-element elementor-element-fc010f8 e-con-full e-flex e-con e-child" data-id="fc010f8" data-element_type="container">
				<div class="elementor-element elementor-element-3e0d6fb burger_menu_item elementor-widget elementor-widget-heading" data-id="3e0d6fb" data-element_type="widget" id="nav-products-mobile" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<div class="elementor-heading-title elementor-size-default"><a href="#elementor-action%3Aaction%3Dpopup%3Aopen%26settings%3DeyJpZCI6NTc1NzQsInRvZ2dsZSI6ZmFsc2V9">Products</a></div>		</div>
				</div>
				<div class="elementor-element elementor-element-aa91de7 burger_menu_item elementor-widget elementor-widget-heading" data-id="aa91de7" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<div class="elementor-heading-title elementor-size-default"><a href="#elementor-action%3Aaction%3Dpopup%3Aopen%26settings%3DeyJpZCI6MTIwMywidG9nZ2xlIjpmYWxzZX0%3D">Solutions</a></div>		</div>
				</div>
				<div class="elementor-element elementor-element-19f654f burger_menu_item elementor-widget elementor-widget-heading" data-id="19f654f" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<div class="elementor-heading-title elementor-size-default"><a href="#elementor-action%3Aaction%3Dpopup%3Aopen%26settings%3DeyJpZCI6MTIwOCwidG9nZ2xlIjpmYWxzZX0%3D">Resources</a></div>		</div>
				</div>
				<div class="elementor-element elementor-element-2446bbb burger_menu_item elementor-widget elementor-widget-heading" data-id="2446bbb" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<div class="elementor-heading-title elementor-size-default"><a href="#elementor-action%3Aaction%3Dpopup%3Aopen%26settings%3DeyJpZCI6MTIxNCwidG9nZ2xlIjpmYWxzZX0%3D">Pricing</a></div>		</div>
				</div>
				<div class="elementor-element elementor-element-9f9b122 burger_menu_item elementor-widget elementor-widget-heading" data-id="9f9b122" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<div class="elementor-heading-title elementor-size-default"><a href="#elementor-action%3Aaction%3Dpopup%3Aopen%26settings%3DeyJpZCI6MTIzOSwidG9nZ2xlIjpmYWxzZX0%3D">About Us</a></div>		</div>
				</div>
				</div>
				</div>
				</div>
				</div>
				<div data-elementor-type="popup" data-elementor-id="57574" class="elementor elementor-57574 elementor-location-popup" data-elementor-settings="{&quot;entrance_animation&quot;:&quot;slideInRight&quot;,&quot;exit_animation&quot;:&quot;slideInRight&quot;,&quot;entrance_animation_duration&quot;:{&quot;unit&quot;:&quot;px&quot;,&quot;size&quot;:0.4,&quot;sizes&quot;:[]},&quot;prevent_scroll&quot;:&quot;yes&quot;,&quot;classes&quot;:&quot;mobile_menu_popup&quot;,&quot;a11y_navigation&quot;:&quot;yes&quot;,&quot;triggers&quot;:[],&quot;timing&quot;:[]}" data-elementor-post-type="elementor_library">
			<div  class="elementor-element elementor-element-2c3f059e e-con-full mobile_menu_section e-flex e-con e-parent" data-id="2c3f059e" data-element_type="container">
		<div  class="elementor-element elementor-element-58df7303 e-con-full e-flex e-con e-child" data-id="58df7303" data-element_type="container">
				<div class="elementor-element elementor-element-319b0c6 close_popup elementor-widget elementor-widget-heading" data-id="319b0c6" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<div class="elementor-heading-title elementor-size-default"><a href="#">Back</a></div>		</div>
				</div>
		<div class="elementor-element elementor-element-93f1887 e-con-full e-flex e-con e-child" data-id="93f1887" data-element_type="container">
		<div class="elementor-element elementor-element-a3c29a0 e-con-full e-flex e-con e-child" data-id="a3c29a0" data-element_type="container">
				<div class="elementor-element elementor-element-891ab34 elementor-widget elementor-widget-heading" data-id="891ab34" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<p class="elementor-heading-title elementor-size-default">Products</p>		</div>
				</div>
		<a class="elementor-element elementor-element-78e29b0 e-con-full menu_box e-flex e-con e-child" data-id="78e29b0" data-element_type="container" href="https://www.bloomreach.com/en/products/engagement">
		<div class="elementor-element elementor-element-eefab97 e-con-full e-flex e-con e-child" data-id="eefab97" data-element_type="container">
				<div class="elementor-element elementor-element-b8c17fd elementor-widget__width-inherit elementor-widget elementor-widget-heading" data-id="b8c17fd" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<p class="elementor-heading-title elementor-size-default">Marketing Automation</p>		</div>
				</div>
				<div class="elementor-element elementor-element-0815f33 elementor-widget__width-initial elementor-view-default elementor-widget elementor-widget-icon" data-id="0815f33" data-element_type="widget" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none"><path d="M14.25 5C14.6562 5 15 5.34375 15 5.75V13.25C15 13.6875 14.6562 14 14.25 14C13.8125 14 13.5 13.6875 13.5 13.25V7.5625L6.28125 14.7812C5.96875 15.0938 5.5 15.0938 5.21875 14.7812C4.90625 14.5 4.90625 14.0312 5.21875 13.75L12.4375 6.53125H6.75C6.3125 6.53125 6 6.1875 6 5.78125C6 5.34375 6.3125 5.03125 6.75 5.03125H14.25V5Z" fill="#019ACE"></path></svg>			</div>
		</div>
				</div>
				</div>
				</div>
				<div class="elementor-element elementor-element-feaed59 elementor-widget elementor-widget-text-editor" data-id="feaed59" data-element_type="widget" data-widget_type="text-editor.default">
				<div class="elementor-widget-container">
							<p>AI-powered marketing that automates, personalizes, and converts.</p>						</div>
				</div>
				</a>
		<a class="elementor-element elementor-element-72d1acb e-con-full menu_box e-flex e-con e-child" data-id="72d1acb" data-element_type="container" href="https://www.bloomreach.com/en/products/genai-product-discovery">
		<div class="elementor-element elementor-element-2b9e09f e-con-full e-flex e-con e-child" data-id="2b9e09f" data-element_type="container">
				<div class="elementor-element elementor-element-d47d152 elementor-widget__width-inherit elementor-widget elementor-widget-heading" data-id="d47d152" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<p class="elementor-heading-title elementor-size-default">Search and Merchandising</p>		</div>
				</div>
				<div class="elementor-element elementor-element-e4ffa68 elementor-widget__width-initial elementor-view-default elementor-widget elementor-widget-icon" data-id="e4ffa68" data-element_type="widget" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none"><path d="M14.25 5C14.6562 5 15 5.34375 15 5.75V13.25C15 13.6875 14.6562 14 14.25 14C13.8125 14 13.5 13.6875 13.5 13.25V7.5625L6.28125 14.7812C5.96875 15.0938 5.5 15.0938 5.21875 14.7812C4.90625 14.5 4.90625 14.0312 5.21875 13.75L12.4375 6.53125H6.75C6.3125 6.53125 6 6.1875 6 5.78125C6 5.34375 6.3125 5.03125 6.75 5.03125H14.25V5Z" fill="#019ACE"></path></svg>			</div>
		</div>
				</div>
				</div>
				</div>
				<div class="elementor-element elementor-element-e4e20fe elementor-widget elementor-widget-text-editor" data-id="e4e20fe" data-element_type="widget" data-widget_type="text-editor.default">
				<div class="elementor-widget-container">
							<p>AI-native commerce search that maximizes revenue per visitor.</p>						</div>
				</div>
				</a>
		<a class="elementor-element elementor-element-eef1a2d e-con-full menu_box e-flex e-con e-child" data-id="eef1a2d" data-element_type="container" href="/en/products/clarity" target="_blank">
		<div class="elementor-element elementor-element-5dd043f e-con-full e-flex e-con e-child" data-id="5dd043f" data-element_type="container">
				<div class="elementor-element elementor-element-bfd2aa1 elementor-widget__width-inherit elementor-widget elementor-widget-heading" data-id="bfd2aa1" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<p class="elementor-heading-title elementor-size-default">Conversational Shopping</p>		</div>
				</div>
				<div class="elementor-element elementor-element-de8f407 elementor-widget__width-initial elementor-view-default elementor-widget elementor-widget-icon" data-id="de8f407" data-element_type="widget" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none"><path d="M14.25 5C14.6562 5 15 5.34375 15 5.75V13.25C15 13.6875 14.6562 14 14.25 14C13.8125 14 13.5 13.6875 13.5 13.25V7.5625L6.28125 14.7812C5.96875 15.0938 5.5 15.0938 5.21875 14.7812C4.90625 14.5 4.90625 14.0312 5.21875 13.75L12.4375 6.53125H6.75C6.3125 6.53125 6 6.1875 6 5.78125C6 5.34375 6.3125 5.03125 6.75 5.03125H14.25V5Z" fill="#019ACE"></path></svg>			</div>
		</div>
				</div>
				</div>
				</div>
				<div class="elementor-element elementor-element-2e27469 elementor-widget elementor-widget-text-editor" data-id="2e27469" data-element_type="widget" data-widget_type="text-editor.default">
				<div class="elementor-widget-container">
							<p>AI-driven shopping conversations that scale your best sales associate.</p>						</div>
				</div>
				</a>
		<a class="elementor-element elementor-element-1e22e75 e-con-full menu_box e-flex e-con e-child" data-id="1e22e75" data-element_type="container" href="/en/integrations">
		<div class="elementor-element elementor-element-a738305 e-con-full e-flex e-con e-child" data-id="a738305" data-element_type="container">
				<div class="elementor-element elementor-element-a7068da elementor-widget__width-inherit elementor-widget elementor-widget-heading" data-id="a7068da" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<p class="elementor-heading-title elementor-size-default">Integrations</p>		</div>
				</div>
				<div class="elementor-element elementor-element-2f45ebf elementor-widget__width-initial elementor-view-default elementor-widget elementor-widget-icon" data-id="2f45ebf" data-element_type="widget" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none"><path d="M14.25 5C14.6562 5 15 5.34375 15 5.75V13.25C15 13.6875 14.6562 14 14.25 14C13.8125 14 13.5 13.6875 13.5 13.25V7.5625L6.28125 14.7812C5.96875 15.0938 5.5 15.0938 5.21875 14.7812C4.90625 14.5 4.90625 14.0312 5.21875 13.75L12.4375 6.53125H6.75C6.3125 6.53125 6 6.1875 6 5.78125C6 5.34375 6.3125 5.03125 6.75 5.03125H14.25V5Z" fill="#019ACE"></path></svg>			</div>
		</div>
				</div>
				</div>
				</div>
				<div class="elementor-element elementor-element-fcbf216 elementor-widget elementor-widget-text-editor" data-id="fcbf216" data-element_type="widget" data-widget_type="text-editor.default">
				<div class="elementor-widget-container">
							<p>160+ integrations to make your job easier and more effective. Find yours.</p>						</div>
				</div>
				</a>
				</div>
		<div class="elementor-element elementor-element-6be2f26 e-con-full e-flex e-con e-child" data-id="6be2f26" data-element_type="container">
				<div class="elementor-element elementor-element-7f1e23f elementor-widget elementor-widget-n-accordion" data-id="7f1e23f" data-element_type="widget" data-settings="{&quot;default_state&quot;:&quot;all_collapsed&quot;,&quot;max_items_expended&quot;:&quot;one&quot;,&quot;n_accordion_animation_duration&quot;:{&quot;unit&quot;:&quot;ms&quot;,&quot;size&quot;:400,&quot;sizes&quot;:[]}}" data-widget_type="nested-accordion.default">
				<div class="elementor-widget-container">
					<div class="e-n-accordion" aria-label="Accordion. Open links with Enter or Space, close with Escape, and navigate with Arrow Keys">
						<details id="channels-border" class="e-n-accordion-item" >
				<summary class="e-n-accordion-item-title" data-accordion-index="1" tabindex="0" aria-expanded="false" aria-controls="channels-border" >
					<span class='e-n-accordion-item-title-header'><div class="e-n-accordion-item-title-text"> Channels </div></span>
							<span class='e-n-accordion-item-title-icon'>
			<span class='e-opened' ><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"><g clip-path="url(#clip0_627_2295)"><path d="M12.9766 18.1641L20.4766 10.6641C20.8672 10.3125 20.8672 9.72656 20.4766 9.33594C20.125 8.98438 19.5391 8.98438 19.1484 9.33594L12.3125 16.2109L5.47656 9.375C5.125 8.98438 4.53906 8.98438 4.14844 9.375C3.79688 9.72656 3.79688 10.3125 4.14844 10.6641L11.6875 18.1641C12.0391 18.5547 12.625 18.5547 12.9766 18.1641Z" fill="#002840" fill-opacity="0.5"></path></g><defs><clipPath id="clip0_627_2295"><rect width="24" height="24" fill="white" transform="matrix(-1 0 0 1 24 0)"></rect></clipPath></defs></svg></span>
			<span class='e-closed'><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"><g clip-path="url(#clip0_627_2295)"><path d="M12.9766 18.1641L20.4766 10.6641C20.8672 10.3125 20.8672 9.72656 20.4766 9.33594C20.125 8.98438 19.5391 8.98438 19.1484 9.33594L12.3125 16.2109L5.47656 9.375C5.125 8.98438 4.53906 8.98438 4.14844 9.375C3.79688 9.72656 3.79688 10.3125 4.14844 10.6641L11.6875 18.1641C12.0391 18.5547 12.625 18.5547 12.9766 18.1641Z" fill="#002840" fill-opacity="0.5"></path></g><defs><clipPath id="clip0_627_2295"><rect width="24" height="24" fill="white" transform="matrix(-1 0 0 1 24 0)"></rect></clipPath></defs></svg></span>
		</span>

						</summary>
				<div role="region" aria-labelledby="channels-border" class="elementor-element elementor-element-087f997 e-con-full e-flex e-con e-child" data-id="087f997" data-element_type="container">
				<div class="elementor-element elementor-element-e545eac elementor-nav-menu--dropdown-none wp_menu elementor-widget elementor-widget-nav-menu" data-id="e545eac" data-element_type="widget" data-settings="{&quot;layout&quot;:&quot;vertical&quot;,&quot;submenu_icon&quot;:{&quot;value&quot;:&quot;&lt;i class=\&quot;\&quot;&gt;&lt;\/i&gt;&quot;,&quot;library&quot;:&quot;&quot;}}" data-widget_type="nav-menu.default">
				<div class="elementor-widget-container">
						<nav aria-label="Menu" class="elementor-nav-menu--main elementor-nav-menu__container elementor-nav-menu--layout-vertical e--pointer-none">
				<ul id="menu-1-e545eac" class="elementor-nav-menu sm-vertical"><li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-57565"><a href="/en/products/engagement/email-marketing" class="elementor-item">Email Marketing<span class="menu-icon" ><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewBox="0 0 16 16">
  <defs>
    <clipPath id="clip-web_email_mktg">
      <rect width="16" height="16"/>
    </clipPath>
  </defs>
  <g id="web_email_mktg" data-name="web_email mktg" clip-path="url(#clip-web_email_mktg)">
    <g id="email-action-unread" transform="translate(-0.754 -1.868)">
      <path id="Path_3152" data-name="Path 3152" d="M2.35,15.736a1.6,1.6,0,0,1-1.6-1.6V5.6a1.579,1.579,0,0,1,.338-.981L1.1,4.6,1.12,4.58A1.6,1.6,0,0,1,2.35,4h12.8a1.6,1.6,0,0,1,1.231.579A.169.169,0,0,1,16.4,4.6l.013.019a1.58,1.58,0,0,1,.338.98v8.535a1.6,1.6,0,0,1-1.6,1.6Zm-.534-1.6a.534.534,0,0,0,.534.534h12.8a.534.534,0,0,0,.534-.534V5.822L10.512,9.8a2.888,2.888,0,0,1-3.519,0L1.817,5.822ZM7.642,8.956a1.82,1.82,0,0,0,2.218,0l5.058-3.89H2.584Z" transform="translate(0 0)" fill="none"/>
    </g>
  </g>
</svg>
</span></a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-57566"><a href="/en/products/engagement/web-personalization" class="elementor-item">Web Personalization<span class="menu-icon" ><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewBox="0 0 16 16">
  <defs>
    <clipPath id="clip-web_web_personalization">
      <rect width="16" height="16"/>
    </clipPath>
  </defs>
  <g id="web_web_personalization" data-name="web_web personalization" clip-path="url(#clip-web_web_personalization)">
    <g id="browser-page-layout" transform="translate(-0.754 -0.97)">
      <path id="Path_3170" data-name="Path 3170" d="M2.35,16.44a1.6,1.6,0,0,1-1.6-1.6V3.1a1.6,1.6,0,0,1,1.6-1.6H15.158a1.6,1.6,0,0,1,1.6,1.6V14.84a1.6,1.6,0,0,1-1.6,1.6Zm12.807-1.072a.534.534,0,0,0,.534-.534V11.1H7.154v4.264ZM1.818,14.84a.534.534,0,0,0,.534.534H6.088V5.768H1.818Zm13.869-4.8V5.768H7.154v4.268Zm0-5.336V3.1a.534.534,0,0,0-.534-.534H2.35a.534.534,0,0,0-.533.534v1.6Z" transform="translate(0 0)" fill="none"/>
    </g>
  </g>
</svg>
</span></a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-57567"><a href="/en/products/discovery/search-intelligence" class="elementor-item">Ecommerce Search<span class="menu-icon" ><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewBox="0 0 16 16">
  <defs>
    <clipPath id="clip-web_search_apis">
      <rect width="16" height="16"/>
    </clipPath>
  </defs>
  <g id="web_search_apis" data-name="web_search apis" clip-path="url(#clip-web_search_apis)">
    <g id="app-window-search-1" transform="translate(-0.013)">
      <path id="Path_3140" data-name="Path 3140" d="M1.509,14a1.5,1.5,0,0,1-1.5-1.5V1.5A1.5,1.5,0,0,1,1.509,0h12a1.5,1.5,0,0,1,1.5,1.5V5.5a.5.5,0,0,1-1,0v-1.5h-13v8.5a.5.5,0,0,0,.5.5h4a.5.5,0,1,1,0,1ZM14.01,3v-1.5a.5.5,0,0,0-.5-.5h-12a.5.5,0,0,0-.5.5V3Z" fill="none"/>
      <path id="Path_3141" data-name="Path 3141" d="M18.759,19.254a.5.5,0,0,1-.353-.147l-2.194-2.194a4,4,0,1,1,.707-.707L19.113,18.4a.5.5,0,0,1-.354.854Zm-5-8.5a3,3,0,1,0,3,3,3,3,0,0,0-3-3Z" transform="translate(-3.249 -3.254)" fill="none"/>
    </g>
  </g>
</svg>
</span></a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-57568"><a href="/en/products/discovery/merchandising" class="elementor-item">Ecommerce Merchandising<span class="menu-icon" ><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewBox="0 0 16 16">
  <defs>
    <clipPath id="clip-web_merch">
      <rect width="16" height="16"/>
    </clipPath>
  </defs>
  <g id="web_merch" clip-path="url(#clip-web_merch)">
    <g id="phone-action-cart" transform="translate(-9.607 -0.2)">
      <path id="Path_3198" data-name="Path 3198" d="M13.29,12.235a1.556,1.556,0,0,1-1.428-.942l-.013-.033L9.728,5.327a1.557,1.557,0,0,1,1.439-2.153h12.4l.941-2.6a.566.566,0,0,1,1.063.387L24.5,3.922l-.008.022-2.642,7.268A1.566,1.566,0,0,1,20.4,12.239ZM12.9,10.86a.426.426,0,0,0,.386.245H20.4a.428.428,0,0,0,.394-.281L23.159,4.3H11.166a.426.426,0,0,0-.391.594l.013.033Z" transform="translate(0 0)" fill="none"/>
      <path id="Path_3200" data-name="Path 3200" d="M13.67,12.822a1.061,1.061,0,1,1,1.061-1.061A1.061,1.061,0,0,1,13.67,12.822Z" transform="translate(0.965 3.378)" fill="none"/>
      <path id="Path_3202" data-name="Path 3202" d="M17.42,12.822a1.061,1.061,0,1,1,1.061-1.061A1.061,1.061,0,0,1,17.42,12.822Z" transform="translate(2.172 3.378)" fill="none"/>
    </g>
  </g>
</svg>
</span></a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-57569"><a href="/en/products/engagement/mobile-app-marketing" class="elementor-item">Mobile App<span class="menu-icon" ><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewBox="0 0 16 16">
  <defs>
    <clipPath id="clip-web_mobile_app">
      <rect width="16" height="16"/>
    </clipPath>
  </defs>
  <g id="web_mobile_app" data-name="web_mobile app" clip-path="url(#clip-web_mobile_app)">
    <g id="mobile-phone" transform="translate(-1.5)">
      <path id="Path_3155" data-name="Path 3155" d="M7,16a2.5,2.5,0,0,1-2.5-2.5V2.5A2.5,2.5,0,0,1,7,0h5a2.5,2.5,0,0,1,2.5,2.5v11A2.5,2.5,0,0,1,12,16ZM5.5,13.5A1.5,1.5,0,0,0,7,15h5a1.5,1.5,0,0,0,1.5-1.5V13h-8Zm8-1.5V2.5A1.5,1.5,0,0,0,12,1H7A1.5,1.5,0,0,0,5.5,2.5V12Z" fill="none"/>
    </g>
  </g>
</svg>
</span></a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-57570"><a href="/en/products/discovery/product-recommendations" class="elementor-item">Product Recommendations<span class="menu-icon" ><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewBox="0 0 16 16">
  <defs>
    <clipPath id="clip-web_product_recs">
      <rect width="16" height="16"/>
    </clipPath>
  </defs>
  <g id="web_product_recs" data-name="web_product recs" clip-path="url(#clip-web_product_recs)">
    <g id="rating-star" transform="translate(-0.001)">
      <path id="Path_3142" data-name="Path 3142" d="M12.595,16a1.048,1.048,0,0,1-.468-.112L8,13.845,3.875,15.887a1.026,1.026,0,0,1-.464.11A1.042,1.042,0,0,1,2.4,14.689l1.234-4.48L.308,6.913a1.037,1.037,0,0,1,.644-1.77l4.012-.4L7.067.576A1.033,1.033,0,0,1,8.476.12,1.035,1.035,0,0,1,8.93.574L11.038,4.75l4.02.4a1.036,1.036,0,0,1,.636,1.768l-3.326,3.291L13.6,14.684a1.045,1.045,0,0,1-.739,1.279,1.088,1.088,0,0,1-.267.037ZM8,12.787a.5.5,0,0,1,.222.053l4.352,2.154a.047.047,0,0,0,.021.006c.033-.007.047-.031.041-.053l-1.308-4.753a.5.5,0,0,1,.13-.488l3.533-3.5A.036.036,0,0,0,15,6.182a.038.038,0,0,0-.033-.04l-4.3-.425a.5.5,0,0,1-.4-.272L8.04,1.027a.048.048,0,0,0-.019-.019.043.043,0,0,0-.021,0c-.027.006-.035.013-.041.025L5.733,5.442a.5.5,0,0,1-.4.272l-4.288.425a.044.044,0,0,0-.031.011A.035.035,0,0,0,1,6.176a.033.033,0,0,0,.011.025L4.547,9.7a.5.5,0,0,1,.13.488L3.368,14.949a.041.041,0,0,0,0,.026A.044.044,0,0,0,3.405,15a.04.04,0,0,0,.018,0L7.778,12.84A.506.506,0,0,1,8,12.787Z" transform="translate(0)" fill="none"/>
    </g>
  </g>
</svg>
</span></a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-57571"><a href="/en/products/engagement/sms-messaging" class="elementor-item">SMS, RCS &#038; WhatsApp<span class="menu-icon" ><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewBox="0 0 16 16">
  <defs>
    <clipPath id="clip-web_sms-messaging">
      <rect width="16" height="16"/>
    </clipPath>
  </defs>
  <g id="web_sms-messaging" clip-path="url(#clip-web_sms-messaging)">
    <g id="phone-chatting" transform="translate(0.25)">
      <path id="Path_3153" data-name="Path 3153" d="M6.071,16a2.324,2.324,0,0,1-2.322-2.32V6.227L3.518,6H2.829A2.081,2.081,0,0,1,.75,3.922V2.079A2.081,2.081,0,0,1,2.829,0H7.171A2.081,2.081,0,0,1,9.25,2.079V3.921A2.082,2.082,0,0,1,7.171,6H6.25V7.5a.5.5,0,0,1-.852.356l-.65-.64V12h7V8.722L10.6,9.856A.5.5,0,0,1,9.748,9.5V8H9.327a2.085,2.085,0,0,1-1.468-.618.5.5,0,1,1,.709-.7A1.077,1.077,0,0,0,9.327,7h.923a.5.5,0,0,1,.5.5v.8l1.172-1.156A.5.5,0,0,1,12.274,7h1.4a1.081,1.081,0,0,0,1.079-1.079V3.583A1.081,1.081,0,0,0,13.67,2.5H11.249a.5.5,0,1,1,0-1H13.67a2.082,2.082,0,0,1,2.078,2.079V5.921A2.082,2.082,0,0,1,13.67,8H12.75v4.483a.226.226,0,0,1,0,.035v1.161A2.324,2.324,0,0,1,10.426,16ZM4.75,13.679A1.323,1.323,0,0,0,6.071,15h4.356a1.324,1.324,0,0,0,1.322-1.321V13h-7ZM2.829,1A1.081,1.081,0,0,0,1.75,2.079V3.921A1.08,1.08,0,0,0,2.828,5h.9a.5.5,0,0,1,.352.144L5.251,6.3V5.5a.5.5,0,0,1,.5-.5H7.173A1.081,1.081,0,0,0,8.251,3.921V2.079A1.081,1.081,0,0,0,7.171,1Z" transform="translate(0)" fill="none"/>
      <circle id="Ellipse_87" data-name="Ellipse 87" cx="0.75" cy="0.75" r="0.75" transform="translate(9.75 4)" fill="none"/>
      <circle id="Ellipse_88" data-name="Ellipse 88" cx="0.75" cy="0.75" r="0.75" transform="translate(12.25 4)" fill="none"/>
      <circle id="Ellipse_89" data-name="Ellipse 89" cx="0.75" cy="0.75" r="0.75" transform="translate(5.583 2.5)" fill="none"/>
      <path id="Path_3154" data-name="Path 3154" d="M4.745,5.25a.749.749,0,0,1-.076-1.5.561.561,0,0,1,.076,0h.083a.749.749,0,0,1-.083,1.5Z" transform="translate(-1.081 -1.25)" fill="none"/>
    </g>
  </g>
</svg>
</span></a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-57572"><a href="/en/products/engagement/ads-retargeting" class="elementor-item">Ad Optimization<span class="menu-icon" ><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewBox="0 0 16 16">
  <defs>
    <clipPath id="clip-web_ads-retargeting">
      <rect width="16" height="16"/>
    </clipPath>
  </defs>
  <g id="web_ads-retargeting" clip-path="url(#clip-web_ads-retargeting)">
    <g id="ads-retargeting" transform="translate(0.5 0.5)">
      <path id="Path_3156" data-name="Path 3156" d="M4.217,12.279a1.411,1.411,0,0,1-1.325-.942H1.4A1.412,1.412,0,0,1,0,9.924V2.362A1.412,1.412,0,0,1,1.4.942H2.888A1.411,1.411,0,0,1,4.217,0h6.559A1.411,1.411,0,0,1,12.1.942h1.486a1.412,1.412,0,0,1,1.4,1.413V9.911a.467.467,0,1,1-.935,0V2.362a.469.469,0,0,0-.467-.471h-1.4V8.475a.467.467,0,1,1-.935,0V1.413a.469.469,0,0,0-.467-.471H4.217a.469.469,0,0,0-.467.471v9.449a.469.469,0,0,0,.467.471H8.8a.471.471,0,0,1,0,.942ZM1.4,1.889a.469.469,0,0,0-.467.471V9.916a.469.469,0,0,0,.467.471H2.8v-8.5Z" transform="translate(0)" fill="none"/>
      <path id="Path_3157" data-name="Path 3157" d="M7.952,4.657a.452.452,0,0,1,0-.9h4.532a.452.452,0,1,1,0,.9Z" transform="translate(-2.722 -1.401)" fill="none"/>
      <path id="Path_3158" data-name="Path 3158" d="M7.952,8.4a.452.452,0,0,1,0-.9h4.532a.452.452,0,0,1,0,.9Z" transform="translate(-2.722 -2.803)" fill="none"/>
      <path id="Path_3159" data-name="Path 3159" d="M7.952,12.157a.452.452,0,1,1,0-.9H9.764a.452.452,0,1,1,0,.9Z" transform="translate(-2.779 -4.205)" fill="none"/>
      <path id="Path_3160" data-name="Path 3160" d="M20.224,20.677a.452.452,0,0,1-.32-.133l-1.192-1.192-.662,1.1a.452.452,0,0,1-.389.221h-.04a.452.452,0,0,1-.383-.289l-1.6-4.165a.452.452,0,0,1,.586-.586l4.168,1.6a.452.452,0,0,1,.07.813l-1.1.662,1.192,1.192a.452.452,0,0,1-.321.774Zm-2.474-1.483.484-.805a.433.433,0,0,1,.063-.082l.01-.01a.437.437,0,0,1,.083-.063l.805-.484-2.35-.9Z" transform="translate(-5.685 -5.68)" fill="none"/>
    </g>
  </g>
</svg>
</span></a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-57573"><a href="/en/products/engagement/experiments-ab-testing" class="elementor-item">A/B Testing &#038; Optimization<span class="menu-icon" ><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewBox="0 0 16 16">
  <defs>
    <clipPath id="clip-web_ab_test">
      <rect width="16" height="16"/>
    </clipPath>
  </defs>
  <g id="web_ab_test" data-name="web_ab test" clip-path="url(#clip-web_ab_test)">
    <g id="experiments_ab-testing_icon" transform="translate(-975.001 -522.932)">
      <path id="Path_5" data-name="Path 5" d="M10.718,16.747a1.6,1.6,0,0,1-1.6-1.6V2.347a1.6,1.6,0,0,1,1.6-1.6H14.9a1.6,1.6,0,0,1,1.6,1.6v12.8a1.6,1.6,0,0,1-1.6,1.6Z" transform="translate(974.502 522.185)" fill="none"/>
      <path id="Path_6" data-name="Path 6" d="M10.718,16.747a1.6,1.6,0,0,1-1.6-1.6V2.347a1.6,1.6,0,0,1,1.6-1.6H14.9a1.6,1.6,0,0,1,1.6,1.6v12.8a1.6,1.6,0,0,1-1.6,1.6ZM14.9,15.68a.534.534,0,0,0,.534-.534V2.347a.534.534,0,0,0-.534-.534H11.119V15.681ZM10.718,1.814a.534.534,0,0,0-.534.534v12.8a.534.534,0,0,0,.534.534h.4V1.814Z" transform="translate(965.883 522.185)" fill="none"/>
    </g>
  </g>
</svg>
</span></a></li>
</ul>			</nav>
						<nav class="elementor-nav-menu--dropdown elementor-nav-menu__container" aria-hidden="true">
				<ul id="menu-2-e545eac" class="elementor-nav-menu sm-vertical"><li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-57565"><a href="/en/products/engagement/email-marketing" class="elementor-item" tabindex="-1">Email Marketing<span class="menu-icon" ><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewBox="0 0 16 16">
  <defs>
    <clipPath id="clip-web_email_mktg">
      <rect width="16" height="16"/>
    </clipPath>
  </defs>
  <g id="web_email_mktg" data-name="web_email mktg" clip-path="url(#clip-web_email_mktg)">
    <g id="email-action-unread" transform="translate(-0.754 -1.868)">
      <path id="Path_3152" data-name="Path 3152" d="M2.35,15.736a1.6,1.6,0,0,1-1.6-1.6V5.6a1.579,1.579,0,0,1,.338-.981L1.1,4.6,1.12,4.58A1.6,1.6,0,0,1,2.35,4h12.8a1.6,1.6,0,0,1,1.231.579A.169.169,0,0,1,16.4,4.6l.013.019a1.58,1.58,0,0,1,.338.98v8.535a1.6,1.6,0,0,1-1.6,1.6Zm-.534-1.6a.534.534,0,0,0,.534.534h12.8a.534.534,0,0,0,.534-.534V5.822L10.512,9.8a2.888,2.888,0,0,1-3.519,0L1.817,5.822ZM7.642,8.956a1.82,1.82,0,0,0,2.218,0l5.058-3.89H2.584Z" transform="translate(0 0)" fill="none"/>
    </g>
  </g>
</svg>
</span></a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-57566"><a href="/en/products/engagement/web-personalization" class="elementor-item" tabindex="-1">Web Personalization<span class="menu-icon" ><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewBox="0 0 16 16">
  <defs>
    <clipPath id="clip-web_web_personalization">
      <rect width="16" height="16"/>
    </clipPath>
  </defs>
  <g id="web_web_personalization" data-name="web_web personalization" clip-path="url(#clip-web_web_personalization)">
    <g id="browser-page-layout" transform="translate(-0.754 -0.97)">
      <path id="Path_3170" data-name="Path 3170" d="M2.35,16.44a1.6,1.6,0,0,1-1.6-1.6V3.1a1.6,1.6,0,0,1,1.6-1.6H15.158a1.6,1.6,0,0,1,1.6,1.6V14.84a1.6,1.6,0,0,1-1.6,1.6Zm12.807-1.072a.534.534,0,0,0,.534-.534V11.1H7.154v4.264ZM1.818,14.84a.534.534,0,0,0,.534.534H6.088V5.768H1.818Zm13.869-4.8V5.768H7.154v4.268Zm0-5.336V3.1a.534.534,0,0,0-.534-.534H2.35a.534.534,0,0,0-.533.534v1.6Z" transform="translate(0 0)" fill="none"/>
    </g>
  </g>
</svg>
</span></a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-57567"><a href="/en/products/discovery/search-intelligence" class="elementor-item" tabindex="-1">Ecommerce Search<span class="menu-icon" ><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewBox="0 0 16 16">
  <defs>
    <clipPath id="clip-web_search_apis">
      <rect width="16" height="16"/>
    </clipPath>
  </defs>
  <g id="web_search_apis" data-name="web_search apis" clip-path="url(#clip-web_search_apis)">
    <g id="app-window-search-1" transform="translate(-0.013)">
      <path id="Path_3140" data-name="Path 3140" d="M1.509,14a1.5,1.5,0,0,1-1.5-1.5V1.5A1.5,1.5,0,0,1,1.509,0h12a1.5,1.5,0,0,1,1.5,1.5V5.5a.5.5,0,0,1-1,0v-1.5h-13v8.5a.5.5,0,0,0,.5.5h4a.5.5,0,1,1,0,1ZM14.01,3v-1.5a.5.5,0,0,0-.5-.5h-12a.5.5,0,0,0-.5.5V3Z" fill="none"/>
      <path id="Path_3141" data-name="Path 3141" d="M18.759,19.254a.5.5,0,0,1-.353-.147l-2.194-2.194a4,4,0,1,1,.707-.707L19.113,18.4a.5.5,0,0,1-.354.854Zm-5-8.5a3,3,0,1,0,3,3,3,3,0,0,0-3-3Z" transform="translate(-3.249 -3.254)" fill="none"/>
    </g>
  </g>
</svg>
</span></a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-57568"><a href="/en/products/discovery/merchandising" class="elementor-item" tabindex="-1">Ecommerce Merchandising<span class="menu-icon" ><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewBox="0 0 16 16">
  <defs>
    <clipPath id="clip-web_merch">
      <rect width="16" height="16"/>
    </clipPath>
  </defs>
  <g id="web_merch" clip-path="url(#clip-web_merch)">
    <g id="phone-action-cart" transform="translate(-9.607 -0.2)">
      <path id="Path_3198" data-name="Path 3198" d="M13.29,12.235a1.556,1.556,0,0,1-1.428-.942l-.013-.033L9.728,5.327a1.557,1.557,0,0,1,1.439-2.153h12.4l.941-2.6a.566.566,0,0,1,1.063.387L24.5,3.922l-.008.022-2.642,7.268A1.566,1.566,0,0,1,20.4,12.239ZM12.9,10.86a.426.426,0,0,0,.386.245H20.4a.428.428,0,0,0,.394-.281L23.159,4.3H11.166a.426.426,0,0,0-.391.594l.013.033Z" transform="translate(0 0)" fill="none"/>
      <path id="Path_3200" data-name="Path 3200" d="M13.67,12.822a1.061,1.061,0,1,1,1.061-1.061A1.061,1.061,0,0,1,13.67,12.822Z" transform="translate(0.965 3.378)" fill="none"/>
      <path id="Path_3202" data-name="Path 3202" d="M17.42,12.822a1.061,1.061,0,1,1,1.061-1.061A1.061,1.061,0,0,1,17.42,12.822Z" transform="translate(2.172 3.378)" fill="none"/>
    </g>
  </g>
</svg>
</span></a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-57569"><a href="/en/products/engagement/mobile-app-marketing" class="elementor-item" tabindex="-1">Mobile App<span class="menu-icon" ><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewBox="0 0 16 16">
  <defs>
    <clipPath id="clip-web_mobile_app">
      <rect width="16" height="16"/>
    </clipPath>
  </defs>
  <g id="web_mobile_app" data-name="web_mobile app" clip-path="url(#clip-web_mobile_app)">
    <g id="mobile-phone" transform="translate(-1.5)">
      <path id="Path_3155" data-name="Path 3155" d="M7,16a2.5,2.5,0,0,1-2.5-2.5V2.5A2.5,2.5,0,0,1,7,0h5a2.5,2.5,0,0,1,2.5,2.5v11A2.5,2.5,0,0,1,12,16ZM5.5,13.5A1.5,1.5,0,0,0,7,15h5a1.5,1.5,0,0,0,1.5-1.5V13h-8Zm8-1.5V2.5A1.5,1.5,0,0,0,12,1H7A1.5,1.5,0,0,0,5.5,2.5V12Z" fill="none"/>
    </g>
  </g>
</svg>
</span></a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-57570"><a href="/en/products/discovery/product-recommendations" class="elementor-item" tabindex="-1">Product Recommendations<span class="menu-icon" ><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewBox="0 0 16 16">
  <defs>
    <clipPath id="clip-web_product_recs">
      <rect width="16" height="16"/>
    </clipPath>
  </defs>
  <g id="web_product_recs" data-name="web_product recs" clip-path="url(#clip-web_product_recs)">
    <g id="rating-star" transform="translate(-0.001)">
      <path id="Path_3142" data-name="Path 3142" d="M12.595,16a1.048,1.048,0,0,1-.468-.112L8,13.845,3.875,15.887a1.026,1.026,0,0,1-.464.11A1.042,1.042,0,0,1,2.4,14.689l1.234-4.48L.308,6.913a1.037,1.037,0,0,1,.644-1.77l4.012-.4L7.067.576A1.033,1.033,0,0,1,8.476.12,1.035,1.035,0,0,1,8.93.574L11.038,4.75l4.02.4a1.036,1.036,0,0,1,.636,1.768l-3.326,3.291L13.6,14.684a1.045,1.045,0,0,1-.739,1.279,1.088,1.088,0,0,1-.267.037ZM8,12.787a.5.5,0,0,1,.222.053l4.352,2.154a.047.047,0,0,0,.021.006c.033-.007.047-.031.041-.053l-1.308-4.753a.5.5,0,0,1,.13-.488l3.533-3.5A.036.036,0,0,0,15,6.182a.038.038,0,0,0-.033-.04l-4.3-.425a.5.5,0,0,1-.4-.272L8.04,1.027a.048.048,0,0,0-.019-.019.043.043,0,0,0-.021,0c-.027.006-.035.013-.041.025L5.733,5.442a.5.5,0,0,1-.4.272l-4.288.425a.044.044,0,0,0-.031.011A.035.035,0,0,0,1,6.176a.033.033,0,0,0,.011.025L4.547,9.7a.5.5,0,0,1,.13.488L3.368,14.949a.041.041,0,0,0,0,.026A.044.044,0,0,0,3.405,15a.04.04,0,0,0,.018,0L7.778,12.84A.506.506,0,0,1,8,12.787Z" transform="translate(0)" fill="none"/>
    </g>
  </g>
</svg>
</span></a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-57571"><a href="/en/products/engagement/sms-messaging" class="elementor-item" tabindex="-1">SMS, RCS &#038; WhatsApp<span class="menu-icon" ><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewBox="0 0 16 16">
  <defs>
    <clipPath id="clip-web_sms-messaging">
      <rect width="16" height="16"/>
    </clipPath>
  </defs>
  <g id="web_sms-messaging" clip-path="url(#clip-web_sms-messaging)">
    <g id="phone-chatting" transform="translate(0.25)">
      <path id="Path_3153" data-name="Path 3153" d="M6.071,16a2.324,2.324,0,0,1-2.322-2.32V6.227L3.518,6H2.829A2.081,2.081,0,0,1,.75,3.922V2.079A2.081,2.081,0,0,1,2.829,0H7.171A2.081,2.081,0,0,1,9.25,2.079V3.921A2.082,2.082,0,0,1,7.171,6H6.25V7.5a.5.5,0,0,1-.852.356l-.65-.64V12h7V8.722L10.6,9.856A.5.5,0,0,1,9.748,9.5V8H9.327a2.085,2.085,0,0,1-1.468-.618.5.5,0,1,1,.709-.7A1.077,1.077,0,0,0,9.327,7h.923a.5.5,0,0,1,.5.5v.8l1.172-1.156A.5.5,0,0,1,12.274,7h1.4a1.081,1.081,0,0,0,1.079-1.079V3.583A1.081,1.081,0,0,0,13.67,2.5H11.249a.5.5,0,1,1,0-1H13.67a2.082,2.082,0,0,1,2.078,2.079V5.921A2.082,2.082,0,0,1,13.67,8H12.75v4.483a.226.226,0,0,1,0,.035v1.161A2.324,2.324,0,0,1,10.426,16ZM4.75,13.679A1.323,1.323,0,0,0,6.071,15h4.356a1.324,1.324,0,0,0,1.322-1.321V13h-7ZM2.829,1A1.081,1.081,0,0,0,1.75,2.079V3.921A1.08,1.08,0,0,0,2.828,5h.9a.5.5,0,0,1,.352.144L5.251,6.3V5.5a.5.5,0,0,1,.5-.5H7.173A1.081,1.081,0,0,0,8.251,3.921V2.079A1.081,1.081,0,0,0,7.171,1Z" transform="translate(0)" fill="none"/>
      <circle id="Ellipse_87" data-name="Ellipse 87" cx="0.75" cy="0.75" r="0.75" transform="translate(9.75 4)" fill="none"/>
      <circle id="Ellipse_88" data-name="Ellipse 88" cx="0.75" cy="0.75" r="0.75" transform="translate(12.25 4)" fill="none"/>
      <circle id="Ellipse_89" data-name="Ellipse 89" cx="0.75" cy="0.75" r="0.75" transform="translate(5.583 2.5)" fill="none"/>
      <path id="Path_3154" data-name="Path 3154" d="M4.745,5.25a.749.749,0,0,1-.076-1.5.561.561,0,0,1,.076,0h.083a.749.749,0,0,1-.083,1.5Z" transform="translate(-1.081 -1.25)" fill="none"/>
    </g>
  </g>
</svg>
</span></a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-57572"><a href="/en/products/engagement/ads-retargeting" class="elementor-item" tabindex="-1">Ad Optimization<span class="menu-icon" ><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewBox="0 0 16 16">
  <defs>
    <clipPath id="clip-web_ads-retargeting">
      <rect width="16" height="16"/>
    </clipPath>
  </defs>
  <g id="web_ads-retargeting" clip-path="url(#clip-web_ads-retargeting)">
    <g id="ads-retargeting" transform="translate(0.5 0.5)">
      <path id="Path_3156" data-name="Path 3156" d="M4.217,12.279a1.411,1.411,0,0,1-1.325-.942H1.4A1.412,1.412,0,0,1,0,9.924V2.362A1.412,1.412,0,0,1,1.4.942H2.888A1.411,1.411,0,0,1,4.217,0h6.559A1.411,1.411,0,0,1,12.1.942h1.486a1.412,1.412,0,0,1,1.4,1.413V9.911a.467.467,0,1,1-.935,0V2.362a.469.469,0,0,0-.467-.471h-1.4V8.475a.467.467,0,1,1-.935,0V1.413a.469.469,0,0,0-.467-.471H4.217a.469.469,0,0,0-.467.471v9.449a.469.469,0,0,0,.467.471H8.8a.471.471,0,0,1,0,.942ZM1.4,1.889a.469.469,0,0,0-.467.471V9.916a.469.469,0,0,0,.467.471H2.8v-8.5Z" transform="translate(0)" fill="none"/>
      <path id="Path_3157" data-name="Path 3157" d="M7.952,4.657a.452.452,0,0,1,0-.9h4.532a.452.452,0,1,1,0,.9Z" transform="translate(-2.722 -1.401)" fill="none"/>
      <path id="Path_3158" data-name="Path 3158" d="M7.952,8.4a.452.452,0,0,1,0-.9h4.532a.452.452,0,0,1,0,.9Z" transform="translate(-2.722 -2.803)" fill="none"/>
      <path id="Path_3159" data-name="Path 3159" d="M7.952,12.157a.452.452,0,1,1,0-.9H9.764a.452.452,0,1,1,0,.9Z" transform="translate(-2.779 -4.205)" fill="none"/>
      <path id="Path_3160" data-name="Path 3160" d="M20.224,20.677a.452.452,0,0,1-.32-.133l-1.192-1.192-.662,1.1a.452.452,0,0,1-.389.221h-.04a.452.452,0,0,1-.383-.289l-1.6-4.165a.452.452,0,0,1,.586-.586l4.168,1.6a.452.452,0,0,1,.07.813l-1.1.662,1.192,1.192a.452.452,0,0,1-.321.774Zm-2.474-1.483.484-.805a.433.433,0,0,1,.063-.082l.01-.01a.437.437,0,0,1,.083-.063l.805-.484-2.35-.9Z" transform="translate(-5.685 -5.68)" fill="none"/>
    </g>
  </g>
</svg>
</span></a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-57573"><a href="/en/products/engagement/experiments-ab-testing" class="elementor-item" tabindex="-1">A/B Testing &#038; Optimization<span class="menu-icon" ><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewBox="0 0 16 16">
  <defs>
    <clipPath id="clip-web_ab_test">
      <rect width="16" height="16"/>
    </clipPath>
  </defs>
  <g id="web_ab_test" data-name="web_ab test" clip-path="url(#clip-web_ab_test)">
    <g id="experiments_ab-testing_icon" transform="translate(-975.001 -522.932)">
      <path id="Path_5" data-name="Path 5" d="M10.718,16.747a1.6,1.6,0,0,1-1.6-1.6V2.347a1.6,1.6,0,0,1,1.6-1.6H14.9a1.6,1.6,0,0,1,1.6,1.6v12.8a1.6,1.6,0,0,1-1.6,1.6Z" transform="translate(974.502 522.185)" fill="none"/>
      <path id="Path_6" data-name="Path 6" d="M10.718,16.747a1.6,1.6,0,0,1-1.6-1.6V2.347a1.6,1.6,0,0,1,1.6-1.6H14.9a1.6,1.6,0,0,1,1.6,1.6v12.8a1.6,1.6,0,0,1-1.6,1.6ZM14.9,15.68a.534.534,0,0,0,.534-.534V2.347a.534.534,0,0,0-.534-.534H11.119V15.681ZM10.718,1.814a.534.534,0,0,0-.534.534v12.8a.534.534,0,0,0,.534.534h.4V1.814Z" transform="translate(965.883 522.185)" fill="none"/>
    </g>
  </g>
</svg>
</span></a></li>
</ul>			</nav>
				</div>
				</div>
				</div>
					</details>
					</div>
				</div>
				</div>
				</div>
		<a class="elementor-element elementor-element-9e2044f e-con-full loomi_btn e-flex e-con e-child" data-id="9e2044f" data-element_type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}" href="https://www.bloomreach.com/en/products/loomi">
		<div class="elementor-element elementor-element-faec3f3 e-con-full loomi_btn_inner e-flex e-con e-child" data-id="faec3f3" data-element_type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
		<div class="elementor-element elementor-element-140618e e-con-full e-flex e-con e-child" data-id="140618e" data-element_type="container">
				<div class="elementor-element elementor-element-c61c5e2 elementor-widget__width-initial elementor-widget elementor-widget-image" data-id="c61c5e2" data-element_type="widget" data-widget_type="image.default">
				<div class="elementor-widget-container">
													<img width="34" height="35" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%2034%2035'%3E%3C/svg%3E" class="attachment-full size-full wp-image-213" alt="bloomreach-icon" data-lazy-src="https://www.bloomreach.com/wp-content/uploads/2024/04/bloomreach-icon.svg" /><noscript><img width="34" height="35" src="https://www.bloomreach.com/wp-content/uploads/2024/04/bloomreach-icon.svg" class="attachment-full size-full wp-image-213" alt="bloomreach-icon" /></noscript>													</div>
				</div>
		<div class="elementor-element elementor-element-9bb42fc e-con-full e-flex e-con e-child" data-id="9bb42fc" data-element_type="container">
				<div class="elementor-element elementor-element-fe38d41 elementor-widget elementor-widget-heading" data-id="fe38d41" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<div class="elementor-heading-title elementor-size-default">Powered by</div>		</div>
				</div>
				<div class="elementor-element elementor-element-7e2c1c5 elementor-widget elementor-widget-heading" data-id="7e2c1c5" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<div class="elementor-heading-title elementor-size-default">Loomi</div>		</div>
				</div>
				</div>
				</div>
		<div class="elementor-element elementor-element-71ea2f4 e-con-full e-flex e-con e-child" data-id="71ea2f4" data-element_type="container">
				<div class="elementor-element elementor-element-c2606f6 elementor-widget elementor-widget-heading" data-id="c2606f6" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<div class="elementor-heading-title elementor-size-default">Boost revenue faster with AI powering every product you use.</div>		</div>
				</div>
				<div class="elementor-element elementor-element-f57f73d elementor-widget__width-initial elementor-view-default elementor-widget elementor-widget-icon" data-id="f57f73d" data-element_type="widget" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"><path d="M20.4375 13.2031L13.5625 19.7656C13.1719 20.1172 12.5859 20.1172 12.2344 19.7266C11.8828 19.3359 11.8828 18.75 12.2734 18.3984L17.4688 13.4375H4.1875C3.64062 13.4375 3.25 13.0469 3.25 12.5C3.25 11.9922 3.64062 11.5625 4.1875 11.5625H17.4688L12.2734 6.64062C11.8828 6.28906 11.8828 5.66406 12.2344 5.3125C12.5859 4.92188 13.2109 4.92188 13.5625 5.27344L20.4375 11.8359C20.6328 12.0312 20.75 12.2656 20.75 12.5C20.75 12.7734 20.6328 13.0078 20.4375 13.2031Z" fill="#0EB4DE"></path></svg>			</div>
		</div>
				</div>
				</div>
				</div>
				</div>
				</a>
				</div>
				</div>
				</div>
				</div>
				<div data-elementor-type="popup" data-elementor-id="1203" class="elementor elementor-1203 elementor-location-popup" data-elementor-settings="{&quot;entrance_animation&quot;:&quot;slideInRight&quot;,&quot;exit_animation&quot;:&quot;slideInRight&quot;,&quot;entrance_animation_duration&quot;:{&quot;unit&quot;:&quot;px&quot;,&quot;size&quot;:0.4,&quot;sizes&quot;:[]},&quot;prevent_scroll&quot;:&quot;yes&quot;,&quot;classes&quot;:&quot;mobile_menu_popup&quot;,&quot;a11y_navigation&quot;:&quot;yes&quot;,&quot;timing&quot;:[]}" data-elementor-post-type="elementor_library">
			<div  class="elementor-element elementor-element-37eb2f19 e-con-full mobile_menu_section e-flex e-con e-parent" data-id="37eb2f19" data-element_type="container">
		<div  class="elementor-element elementor-element-476d3ff4 e-con-full e-flex e-con e-child" data-id="476d3ff4" data-element_type="container">
				<div class="elementor-element elementor-element-4a726395 close_popup elementor-widget elementor-widget-heading" data-id="4a726395" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<div class="elementor-heading-title elementor-size-default"><a href="#">Back</a></div>		</div>
				</div>
		<div class="elementor-element elementor-element-426fe00 e-con-full e-flex e-con e-child" data-id="426fe00" data-element_type="container">
		<div class="elementor-element elementor-element-4e25802d e-con-full e-flex e-con e-child" data-id="4e25802d" data-element_type="container">
				<div class="elementor-element elementor-element-4e2cb371 elementor-widget elementor-widget-heading" data-id="4e2cb371" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<p class="elementor-heading-title elementor-size-default">Solutions</p>		</div>
				</div>
				<div class="elementor-element elementor-element-491f8162 elementor-widget elementor-widget-n-accordion" data-id="491f8162" data-element_type="widget" data-settings="{&quot;default_state&quot;:&quot;all_collapsed&quot;,&quot;max_items_expended&quot;:&quot;one&quot;,&quot;n_accordion_animation_duration&quot;:{&quot;unit&quot;:&quot;ms&quot;,&quot;size&quot;:400,&quot;sizes&quot;:[]}}" data-widget_type="nested-accordion.default">
				<div class="elementor-widget-container">
					<div class="e-n-accordion" aria-label="Accordion. Open links with Enter or Space, close with Escape, and navigate with Arrow Keys">
						<details id="e-n-accordion-item-1220" class="e-n-accordion-item" >
				<summary class="e-n-accordion-item-title" data-accordion-index="1" tabindex="0" aria-expanded="false" aria-controls="e-n-accordion-item-1220" >
					<span class='e-n-accordion-item-title-header'><div class="e-n-accordion-item-title-text"> For Industries </div></span>
							<span class='e-n-accordion-item-title-icon'>
			<span class='e-opened' ><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"><g clip-path="url(#clip0_627_2295)"><path d="M12.9766 18.1641L20.4766 10.6641C20.8672 10.3125 20.8672 9.72656 20.4766 9.33594C20.125 8.98438 19.5391 8.98438 19.1484 9.33594L12.3125 16.2109L5.47656 9.375C5.125 8.98438 4.53906 8.98438 4.14844 9.375C3.79688 9.72656 3.79688 10.3125 4.14844 10.6641L11.6875 18.1641C12.0391 18.5547 12.625 18.5547 12.9766 18.1641Z" fill="#002840" fill-opacity="0.5"></path></g><defs><clipPath id="clip0_627_2295"><rect width="24" height="24" fill="white" transform="matrix(-1 0 0 1 24 0)"></rect></clipPath></defs></svg></span>
			<span class='e-closed'><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"><g clip-path="url(#clip0_627_2295)"><path d="M12.9766 18.1641L20.4766 10.6641C20.8672 10.3125 20.8672 9.72656 20.4766 9.33594C20.125 8.98438 19.5391 8.98438 19.1484 9.33594L12.3125 16.2109L5.47656 9.375C5.125 8.98438 4.53906 8.98438 4.14844 9.375C3.79688 9.72656 3.79688 10.3125 4.14844 10.6641L11.6875 18.1641C12.0391 18.5547 12.625 18.5547 12.9766 18.1641Z" fill="#002840" fill-opacity="0.5"></path></g><defs><clipPath id="clip0_627_2295"><rect width="24" height="24" fill="white" transform="matrix(-1 0 0 1 24 0)"></rect></clipPath></defs></svg></span>
		</span>

						</summary>
				<div role="region" aria-labelledby="e-n-accordion-item-1220" class="elementor-element elementor-element-66428f78 e-con-full e-flex e-con e-child" data-id="66428f78" data-element_type="container">
				<div class="elementor-element elementor-element-19364d9f elementor-nav-menu--dropdown-none wp_menu elementor-widget elementor-widget-nav-menu" data-id="19364d9f" data-element_type="widget" data-settings="{&quot;layout&quot;:&quot;vertical&quot;,&quot;submenu_icon&quot;:{&quot;value&quot;:&quot;&lt;i class=\&quot;\&quot;&gt;&lt;\/i&gt;&quot;,&quot;library&quot;:&quot;&quot;}}" data-widget_type="nav-menu.default">
				<div class="elementor-widget-container">
						<nav aria-label="Menu" class="elementor-nav-menu--main elementor-nav-menu__container elementor-nav-menu--layout-vertical e--pointer-none">
				<ul id="menu-1-19364d9f" class="elementor-nav-menu sm-vertical"><li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-753"><a href="/en/industries/retail" class="elementor-item">Retail &#038; Brands</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-754"><a href="/en/industries/travel-hospitality" class="elementor-item">Travel &#038; Hospitality</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-755"><a href="/en/industries/food-beverage" class="elementor-item">Food &#038; Beverage</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-756"><a href="/en/industries/financial-services" class="elementor-item">Financial Services</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-757"><a href="/en/industries/b2b" class="elementor-item">B2B</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-54274"><a href="/en/industries/igaming" class="elementor-item">iGaming</a></li>
</ul>			</nav>
						<nav class="elementor-nav-menu--dropdown elementor-nav-menu__container" aria-hidden="true">
				<ul id="menu-2-19364d9f" class="elementor-nav-menu sm-vertical"><li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-753"><a href="/en/industries/retail" class="elementor-item" tabindex="-1">Retail &#038; Brands</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-754"><a href="/en/industries/travel-hospitality" class="elementor-item" tabindex="-1">Travel &#038; Hospitality</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-755"><a href="/en/industries/food-beverage" class="elementor-item" tabindex="-1">Food &#038; Beverage</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-756"><a href="/en/industries/financial-services" class="elementor-item" tabindex="-1">Financial Services</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-757"><a href="/en/industries/b2b" class="elementor-item" tabindex="-1">B2B</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-54274"><a href="/en/industries/igaming" class="elementor-item" tabindex="-1">iGaming</a></li>
</ul>			</nav>
				</div>
				</div>
				</div>
					</details>
						<details id="e-n-accordion-item-1221" class="e-n-accordion-item" >
				<summary class="e-n-accordion-item-title" data-accordion-index="2" tabindex="-1" aria-expanded="false" aria-controls="e-n-accordion-item-1221" >
					<span class='e-n-accordion-item-title-header'><div class="e-n-accordion-item-title-text"> For Customers </div></span>
							<span class='e-n-accordion-item-title-icon'>
			<span class='e-opened' ><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"><g clip-path="url(#clip0_627_2295)"><path d="M12.9766 18.1641L20.4766 10.6641C20.8672 10.3125 20.8672 9.72656 20.4766 9.33594C20.125 8.98438 19.5391 8.98438 19.1484 9.33594L12.3125 16.2109L5.47656 9.375C5.125 8.98438 4.53906 8.98438 4.14844 9.375C3.79688 9.72656 3.79688 10.3125 4.14844 10.6641L11.6875 18.1641C12.0391 18.5547 12.625 18.5547 12.9766 18.1641Z" fill="#002840" fill-opacity="0.5"></path></g><defs><clipPath id="clip0_627_2295"><rect width="24" height="24" fill="white" transform="matrix(-1 0 0 1 24 0)"></rect></clipPath></defs></svg></span>
			<span class='e-closed'><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"><g clip-path="url(#clip0_627_2295)"><path d="M12.9766 18.1641L20.4766 10.6641C20.8672 10.3125 20.8672 9.72656 20.4766 9.33594C20.125 8.98438 19.5391 8.98438 19.1484 9.33594L12.3125 16.2109L5.47656 9.375C5.125 8.98438 4.53906 8.98438 4.14844 9.375C3.79688 9.72656 3.79688 10.3125 4.14844 10.6641L11.6875 18.1641C12.0391 18.5547 12.625 18.5547 12.9766 18.1641Z" fill="#002840" fill-opacity="0.5"></path></g><defs><clipPath id="clip0_627_2295"><rect width="24" height="24" fill="white" transform="matrix(-1 0 0 1 24 0)"></rect></clipPath></defs></svg></span>
		</span>

						</summary>
				<div role="region" aria-labelledby="e-n-accordion-item-1221" class="elementor-element elementor-element-546b1403 e-con-full e-flex e-con e-child" data-id="546b1403" data-element_type="container">
				<div class="elementor-element elementor-element-2efb3bb9 elementor-nav-menu--dropdown-none wp_menu elementor-widget elementor-widget-nav-menu" data-id="2efb3bb9" data-element_type="widget" data-settings="{&quot;layout&quot;:&quot;vertical&quot;,&quot;submenu_icon&quot;:{&quot;value&quot;:&quot;&lt;i class=\&quot;\&quot;&gt;&lt;\/i&gt;&quot;,&quot;library&quot;:&quot;&quot;}}" data-widget_type="nav-menu.default">
				<div class="elementor-widget-container">
						<nav aria-label="Menu" class="elementor-nav-menu--main elementor-nav-menu__container elementor-nav-menu--layout-vertical e--pointer-none">
				<ul id="menu-1-2efb3bb9" class="elementor-nav-menu sm-vertical"><li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-758"><a href="https://academy.bloomreach.com/" class="elementor-item">Bloomreach Academy</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-760"><a href="/en/library/use-cases" class="elementor-item">Use Case Library</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-759"><a href="/en/products/engagement/plug-and-play" class="elementor-item">Plug &#038; Play Library</a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-32988"><a href="https://www.bloomreach.com/en/bloomreach-experience-strategy-group" class="elementor-item">Experience Strategy Group</a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-32989"><a href="https://www.bloomreach.com/en/privacy-at-bloomreach" class="elementor-item">Privacy at Bloomreach</a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-32990"><a href="https://www.bloomreach.com/en/security-at-bloomreach" class="elementor-item">Security at Bloomreach</a></li>
</ul>			</nav>
						<nav class="elementor-nav-menu--dropdown elementor-nav-menu__container" aria-hidden="true">
				<ul id="menu-2-2efb3bb9" class="elementor-nav-menu sm-vertical"><li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-758"><a href="https://academy.bloomreach.com/" class="elementor-item" tabindex="-1">Bloomreach Academy</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-760"><a href="/en/library/use-cases" class="elementor-item" tabindex="-1">Use Case Library</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-759"><a href="/en/products/engagement/plug-and-play" class="elementor-item" tabindex="-1">Plug &#038; Play Library</a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-32988"><a href="https://www.bloomreach.com/en/bloomreach-experience-strategy-group" class="elementor-item" tabindex="-1">Experience Strategy Group</a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-32989"><a href="https://www.bloomreach.com/en/privacy-at-bloomreach" class="elementor-item" tabindex="-1">Privacy at Bloomreach</a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-32990"><a href="https://www.bloomreach.com/en/security-at-bloomreach" class="elementor-item" tabindex="-1">Security at Bloomreach</a></li>
</ul>			</nav>
				</div>
				</div>
				</div>
					</details>
						<details id="e-n-accordion-item-1222" class="e-n-accordion-item" >
				<summary class="e-n-accordion-item-title" data-accordion-index="3" tabindex="-1" aria-expanded="false" aria-controls="e-n-accordion-item-1222" >
					<span class='e-n-accordion-item-title-header'><div class="e-n-accordion-item-title-text"> For Getting Started </div></span>
							<span class='e-n-accordion-item-title-icon'>
			<span class='e-opened' ><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"><g clip-path="url(#clip0_627_2295)"><path d="M12.9766 18.1641L20.4766 10.6641C20.8672 10.3125 20.8672 9.72656 20.4766 9.33594C20.125 8.98438 19.5391 8.98438 19.1484 9.33594L12.3125 16.2109L5.47656 9.375C5.125 8.98438 4.53906 8.98438 4.14844 9.375C3.79688 9.72656 3.79688 10.3125 4.14844 10.6641L11.6875 18.1641C12.0391 18.5547 12.625 18.5547 12.9766 18.1641Z" fill="#002840" fill-opacity="0.5"></path></g><defs><clipPath id="clip0_627_2295"><rect width="24" height="24" fill="white" transform="matrix(-1 0 0 1 24 0)"></rect></clipPath></defs></svg></span>
			<span class='e-closed'><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"><g clip-path="url(#clip0_627_2295)"><path d="M12.9766 18.1641L20.4766 10.6641C20.8672 10.3125 20.8672 9.72656 20.4766 9.33594C20.125 8.98438 19.5391 8.98438 19.1484 9.33594L12.3125 16.2109L5.47656 9.375C5.125 8.98438 4.53906 8.98438 4.14844 9.375C3.79688 9.72656 3.79688 10.3125 4.14844 10.6641L11.6875 18.1641C12.0391 18.5547 12.625 18.5547 12.9766 18.1641Z" fill="#002840" fill-opacity="0.5"></path></g><defs><clipPath id="clip0_627_2295"><rect width="24" height="24" fill="white" transform="matrix(-1 0 0 1 24 0)"></rect></clipPath></defs></svg></span>
		</span>

						</summary>
				<div role="region" aria-labelledby="e-n-accordion-item-1222" class="elementor-element elementor-element-772f89b1 e-con-full e-flex e-con e-child" data-id="772f89b1" data-element_type="container">
				<div class="elementor-element elementor-element-487d5457 elementor-nav-menu--dropdown-none wp_menu elementor-widget elementor-widget-nav-menu" data-id="487d5457" data-element_type="widget" data-settings="{&quot;layout&quot;:&quot;vertical&quot;,&quot;submenu_icon&quot;:{&quot;value&quot;:&quot;&lt;i class=\&quot;\&quot;&gt;&lt;\/i&gt;&quot;,&quot;library&quot;:&quot;&quot;}}" data-widget_type="nav-menu.default">
				<div class="elementor-widget-container">
						<nav aria-label="Menu" class="elementor-nav-menu--main elementor-nav-menu__container elementor-nav-menu--layout-vertical e--pointer-none">
				<ul id="menu-1-487d5457" class="elementor-nav-menu sm-vertical"><li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-765"><a href="https://documentation.bloomreach.com" class="elementor-item">Documentation</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-766"><a href="/en/library/calculators" class="elementor-item">Calculators</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-767"><a href="https://academy.bloomreach.com/" class="elementor-item">Upcoming Free Courses</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-45328"><a href="https://www.bloomreach.com/en/products/tours" class="elementor-item">Product Tours (NEW!)<span class="menu-icon" ><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"><path d="M7.91141 19.501C7.44041 19.501 7.01641 19.24 6.80641 18.819C6.67041 18.546 6.63941 18.234 6.72041 17.941L7.77341 14.077L4.92741 11.23C4.69441 10.997 4.56641 10.687 4.56641 10.358C4.56641 10.028 4.69441 9.718 4.92841 9.485C5.12941 9.284 5.39641 9.157 5.68041 9.13L9.09441 8.788L10.8984 5.181C11.1094 4.761 11.5324 4.5 12.0034 4.5C12.1944 4.5 12.3854 4.545 12.5564 4.631C12.7934 4.75 12.9894 4.947 13.1074 5.184L14.9104 8.79L18.3254 9.132C19.0014 9.198 19.4974 9.803 19.4314 10.48C19.4034 10.765 19.2764 11.032 19.0754 11.233L16.2314 14.077L17.2854 17.94C17.3714 18.26 17.3284 18.593 17.1644 18.879C16.9994 19.166 16.7334 19.37 16.4154 19.456C16.3114 19.485 16.2024 19.499 16.0924 19.499C15.9024 19.499 15.7124 19.454 15.5434 19.37L12.0024 17.599L8.46241 19.371C8.28841 19.457 8.10341 19.501 7.91141 19.501Z" fill="#FFD500"></path></svg></span></a></li>
</ul>			</nav>
						<nav class="elementor-nav-menu--dropdown elementor-nav-menu__container" aria-hidden="true">
				<ul id="menu-2-487d5457" class="elementor-nav-menu sm-vertical"><li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-765"><a href="https://documentation.bloomreach.com" class="elementor-item" tabindex="-1">Documentation</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-766"><a href="/en/library/calculators" class="elementor-item" tabindex="-1">Calculators</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-767"><a href="https://academy.bloomreach.com/" class="elementor-item" tabindex="-1">Upcoming Free Courses</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-45328"><a href="https://www.bloomreach.com/en/products/tours" class="elementor-item" tabindex="-1">Product Tours (NEW!)<span class="menu-icon" ><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"><path d="M7.91141 19.501C7.44041 19.501 7.01641 19.24 6.80641 18.819C6.67041 18.546 6.63941 18.234 6.72041 17.941L7.77341 14.077L4.92741 11.23C4.69441 10.997 4.56641 10.687 4.56641 10.358C4.56641 10.028 4.69441 9.718 4.92841 9.485C5.12941 9.284 5.39641 9.157 5.68041 9.13L9.09441 8.788L10.8984 5.181C11.1094 4.761 11.5324 4.5 12.0034 4.5C12.1944 4.5 12.3854 4.545 12.5564 4.631C12.7934 4.75 12.9894 4.947 13.1074 5.184L14.9104 8.79L18.3254 9.132C19.0014 9.198 19.4974 9.803 19.4314 10.48C19.4034 10.765 19.2764 11.032 19.0754 11.233L16.2314 14.077L17.2854 17.94C17.3714 18.26 17.3284 18.593 17.1644 18.879C16.9994 19.166 16.7334 19.37 16.4154 19.456C16.3114 19.485 16.2024 19.499 16.0924 19.499C15.9024 19.499 15.7124 19.454 15.5434 19.37L12.0024 17.599L8.46241 19.371C8.28841 19.457 8.10341 19.501 7.91141 19.501Z" fill="#FFD500"></path></svg></span></a></li>
</ul>			</nav>
				</div>
				</div>
				</div>
					</details>
					</div>
				</div>
				</div>
				</div>
		<div class="elementor-element elementor-element-ba0a217 e-con-full e-flex e-con e-child" data-id="ba0a217" data-element_type="container">
		<a class="elementor-element elementor-element-a672416 e-con-full menu_box e-flex e-con e-child" data-id="a672416" data-element_type="container" href="#">
		<div class="elementor-element elementor-element-2576e35 e-con-full e-flex e-con e-child" data-id="2576e35" data-element_type="container">
				<div class="elementor-element elementor-element-6d75339 elementor-widget__width-inherit elementor-widget elementor-widget-heading" data-id="6d75339" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<p class="elementor-heading-title elementor-size-default">Integrations</p>		</div>
				</div>
				<div class="elementor-element elementor-element-80328cf elementor-widget__width-initial elementor-view-default elementor-widget elementor-widget-icon" data-id="80328cf" data-element_type="widget" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none"><path d="M14.25 5C14.6562 5 15 5.34375 15 5.75V13.25C15 13.6875 14.6562 14 14.25 14C13.8125 14 13.5 13.6875 13.5 13.25V7.5625L6.28125 14.7812C5.96875 15.0938 5.5 15.0938 5.21875 14.7812C4.90625 14.5 4.90625 14.0312 5.21875 13.75L12.4375 6.53125H6.75C6.3125 6.53125 6 6.1875 6 5.78125C6 5.34375 6.3125 5.03125 6.75 5.03125H14.25V5Z" fill="#019ACE"></path></svg>			</div>
		</div>
				</div>
				</div>
				</div>
				<div class="elementor-element elementor-element-42b0552 elementor-widget elementor-widget-text-editor" data-id="42b0552" data-element_type="widget" data-widget_type="text-editor.default">
				<div class="elementor-widget-container">
							Use our integrations to easily connect and move data between your technologies and systems.						</div>
				</div>
				</a>
		<a class="elementor-element elementor-element-4434210 e-con-full menu_box e-flex e-con e-child" data-id="4434210" data-element_type="container" href="https://www.bloomreach.com/en/partners/bloomreach-technology-partners">
		<div class="elementor-element elementor-element-71eb40c e-con-full e-flex e-con e-child" data-id="71eb40c" data-element_type="container">
				<div class="elementor-element elementor-element-b0f242e elementor-widget__width-inherit elementor-widget elementor-widget-heading" data-id="b0f242e" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<p class="elementor-heading-title elementor-size-default">Technology Partners</p>		</div>
				</div>
				<div class="elementor-element elementor-element-e0c4f8e elementor-widget__width-initial elementor-view-default elementor-widget elementor-widget-icon" data-id="e0c4f8e" data-element_type="widget" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none"><path d="M14.25 5C14.6562 5 15 5.34375 15 5.75V13.25C15 13.6875 14.6562 14 14.25 14C13.8125 14 13.5 13.6875 13.5 13.25V7.5625L6.28125 14.7812C5.96875 15.0938 5.5 15.0938 5.21875 14.7812C4.90625 14.5 4.90625 14.0312 5.21875 13.75L12.4375 6.53125H6.75C6.3125 6.53125 6 6.1875 6 5.78125C6 5.34375 6.3125 5.03125 6.75 5.03125H14.25V5Z" fill="#019ACE"></path></svg>			</div>
		</div>
				</div>
				</div>
				</div>
				<div class="elementor-element elementor-element-73ebc7b elementor-widget elementor-widget-text-editor" data-id="73ebc7b" data-element_type="widget" data-widget_type="text-editor.default">
				<div class="elementor-widget-container">
							With our partnered solutions, you get access to additional services and technologies to solve customer problems.						</div>
				</div>
				</a>
		<a class="elementor-element elementor-element-2168abb e-con-full menu_box e-flex e-con e-child" data-id="2168abb" data-element_type="container" href="#">
		<div class="elementor-element elementor-element-7cecc54 e-con-full e-flex e-con e-child" data-id="7cecc54" data-element_type="container">
				<div class="elementor-element elementor-element-86c5348 elementor-widget__width-inherit elementor-widget elementor-widget-heading" data-id="86c5348" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<p class="elementor-heading-title elementor-size-default">Become a Partner</p>		</div>
				</div>
				<div class="elementor-element elementor-element-4eeb067 elementor-widget__width-initial elementor-view-default elementor-widget elementor-widget-icon" data-id="4eeb067" data-element_type="widget" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none"><path d="M14.25 5C14.6562 5 15 5.34375 15 5.75V13.25C15 13.6875 14.6562 14 14.25 14C13.8125 14 13.5 13.6875 13.5 13.25V7.5625L6.28125 14.7812C5.96875 15.0938 5.5 15.0938 5.21875 14.7812C4.90625 14.5 4.90625 14.0312 5.21875 13.75L12.4375 6.53125H6.75C6.3125 6.53125 6 6.1875 6 5.78125C6 5.34375 6.3125 5.03125 6.75 5.03125H14.25V5Z" fill="#019ACE"></path></svg>			</div>
		</div>
				</div>
				</div>
				</div>
				<div class="elementor-element elementor-element-3b056fd elementor-widget elementor-widget-text-editor" data-id="3b056fd" data-element_type="widget" data-widget_type="text-editor.default">
				<div class="elementor-widget-container">
							Join our partner ecosystem to unlock limitless potential.						</div>
				</div>
				</a>
				</div>
				</div>
				</div>
				</div>
				</div>
				<div data-elementor-type="popup" data-elementor-id="1208" class="elementor elementor-1208 elementor-location-popup" data-elementor-settings="{&quot;entrance_animation&quot;:&quot;slideInRight&quot;,&quot;exit_animation&quot;:&quot;slideInRight&quot;,&quot;entrance_animation_duration&quot;:{&quot;unit&quot;:&quot;px&quot;,&quot;size&quot;:0.4,&quot;sizes&quot;:[]},&quot;prevent_scroll&quot;:&quot;yes&quot;,&quot;classes&quot;:&quot;mobile_menu_popup&quot;,&quot;a11y_navigation&quot;:&quot;yes&quot;,&quot;timing&quot;:[]}" data-elementor-post-type="elementor_library">
			<div  class="elementor-element elementor-element-2fddf9a e-con-full mobile_menu_section e-flex e-con e-parent" data-id="2fddf9a" data-element_type="container">
		<div  class="elementor-element elementor-element-553b080a e-con-full e-flex e-con e-child" data-id="553b080a" data-element_type="container">
				<div class="elementor-element elementor-element-6c195c06 close_popup elementor-widget elementor-widget-heading" data-id="6c195c06" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<div class="elementor-heading-title elementor-size-default"><a href="#">Back</a></div>		</div>
				</div>
		<div class="elementor-element elementor-element-4fa965fe e-con-full e-flex e-con e-child" data-id="4fa965fe" data-element_type="container">
		<div class="elementor-element elementor-element-7048cf2a e-con-full e-flex e-con e-child" data-id="7048cf2a" data-element_type="container">
				<div class="elementor-element elementor-element-322ec934 elementor-widget elementor-widget-heading" data-id="322ec934" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<p class="elementor-heading-title elementor-size-default">Resources</p>		</div>
				</div>
				<div class="elementor-element elementor-element-7f0e75a elementor-widget elementor-widget-n-accordion" data-id="7f0e75a" data-element_type="widget" data-settings="{&quot;default_state&quot;:&quot;all_collapsed&quot;,&quot;max_items_expended&quot;:&quot;one&quot;,&quot;n_accordion_animation_duration&quot;:{&quot;unit&quot;:&quot;ms&quot;,&quot;size&quot;:400,&quot;sizes&quot;:[]}}" data-widget_type="nested-accordion.default">
				<div class="elementor-widget-container">
					<div class="e-n-accordion" aria-label="Accordion. Open links with Enter or Space, close with Escape, and navigate with Arrow Keys">
						<details id="e-n-accordion-item-1330" class="e-n-accordion-item" >
				<summary class="e-n-accordion-item-title" data-accordion-index="1" tabindex="0" aria-expanded="false" aria-controls="e-n-accordion-item-1330" >
					<span class='e-n-accordion-item-title-header'><div class="e-n-accordion-item-title-text"> Case Studies </div></span>
							<span class='e-n-accordion-item-title-icon'>
			<span class='e-opened' ><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"><g clip-path="url(#clip0_627_2295)"><path d="M12.9766 18.1641L20.4766 10.6641C20.8672 10.3125 20.8672 9.72656 20.4766 9.33594C20.125 8.98438 19.5391 8.98438 19.1484 9.33594L12.3125 16.2109L5.47656 9.375C5.125 8.98438 4.53906 8.98438 4.14844 9.375C3.79688 9.72656 3.79688 10.3125 4.14844 10.6641L11.6875 18.1641C12.0391 18.5547 12.625 18.5547 12.9766 18.1641Z" fill="#002840" fill-opacity="0.5"></path></g><defs><clipPath id="clip0_627_2295"><rect width="24" height="24" fill="white" transform="matrix(-1 0 0 1 24 0)"></rect></clipPath></defs></svg></span>
			<span class='e-closed'><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"><g clip-path="url(#clip0_627_2295)"><path d="M12.9766 18.1641L20.4766 10.6641C20.8672 10.3125 20.8672 9.72656 20.4766 9.33594C20.125 8.98438 19.5391 8.98438 19.1484 9.33594L12.3125 16.2109L5.47656 9.375C5.125 8.98438 4.53906 8.98438 4.14844 9.375C3.79688 9.72656 3.79688 10.3125 4.14844 10.6641L11.6875 18.1641C12.0391 18.5547 12.625 18.5547 12.9766 18.1641Z" fill="#002840" fill-opacity="0.5"></path></g><defs><clipPath id="clip0_627_2295"><rect width="24" height="24" fill="white" transform="matrix(-1 0 0 1 24 0)"></rect></clipPath></defs></svg></span>
		</span>

						</summary>
				<div role="region" aria-labelledby="e-n-accordion-item-1330" class="elementor-element elementor-element-3629fa2a e-con-full e-flex e-con e-child" data-id="3629fa2a" data-element_type="container">
				<div class="elementor-element elementor-element-2c30925b elementor-nav-menu--dropdown-none wp_menu elementor-widget elementor-widget-nav-menu" data-id="2c30925b" data-element_type="widget" data-settings="{&quot;layout&quot;:&quot;vertical&quot;,&quot;submenu_icon&quot;:{&quot;value&quot;:&quot;&lt;i class=\&quot;\&quot;&gt;&lt;\/i&gt;&quot;,&quot;library&quot;:&quot;&quot;}}" data-widget_type="nav-menu.default">
				<div class="elementor-widget-container">
						<nav aria-label="Menu" class="elementor-nav-menu--main elementor-nav-menu__container elementor-nav-menu--layout-vertical e--pointer-none">
				<ul id="menu-1-2c30925b" class="elementor-nav-menu sm-vertical"><li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-768"><a href="/en/case-studies?industry=retail&#038;filter=true" class="elementor-item">Retail &#038; Brands</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-769"><a href="/en/case-studies?industry=travel-and-hospitality&#038;filter=true" class="elementor-item">Travel &#038; Hospitality</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-770"><a href="/en/case-studies?industry=food-and-beverage&#038;filter=true" class="elementor-item">Food &#038; Beverage</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-771"><a href="/en/case-studies?industry=fintech-and-telco&#038;filter=true" class="elementor-item">Fintech &#038; Telco</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-41541"><a href="/en/case-studies?industry=b2b&#038;filter=true" class="elementor-item">B2B</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-773"><a href="/en/case-studies" class="elementor-item">View All Case Studies</a></li>
</ul>			</nav>
						<nav class="elementor-nav-menu--dropdown elementor-nav-menu__container" aria-hidden="true">
				<ul id="menu-2-2c30925b" class="elementor-nav-menu sm-vertical"><li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-768"><a href="/en/case-studies?industry=retail&#038;filter=true" class="elementor-item" tabindex="-1">Retail &#038; Brands</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-769"><a href="/en/case-studies?industry=travel-and-hospitality&#038;filter=true" class="elementor-item" tabindex="-1">Travel &#038; Hospitality</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-770"><a href="/en/case-studies?industry=food-and-beverage&#038;filter=true" class="elementor-item" tabindex="-1">Food &#038; Beverage</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-771"><a href="/en/case-studies?industry=fintech-and-telco&#038;filter=true" class="elementor-item" tabindex="-1">Fintech &#038; Telco</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-41541"><a href="/en/case-studies?industry=b2b&#038;filter=true" class="elementor-item" tabindex="-1">B2B</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-773"><a href="/en/case-studies" class="elementor-item" tabindex="-1">View All Case Studies</a></li>
</ul>			</nav>
				</div>
				</div>
				</div>
					</details>
						<details id="e-n-accordion-item-1331" class="e-n-accordion-item" >
				<summary class="e-n-accordion-item-title" data-accordion-index="2" tabindex="-1" aria-expanded="false" aria-controls="e-n-accordion-item-1331" >
					<span class='e-n-accordion-item-title-header'><div class="e-n-accordion-item-title-text"> Optimize Performance </div></span>
							<span class='e-n-accordion-item-title-icon'>
			<span class='e-opened' ><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"><g clip-path="url(#clip0_627_2295)"><path d="M12.9766 18.1641L20.4766 10.6641C20.8672 10.3125 20.8672 9.72656 20.4766 9.33594C20.125 8.98438 19.5391 8.98438 19.1484 9.33594L12.3125 16.2109L5.47656 9.375C5.125 8.98438 4.53906 8.98438 4.14844 9.375C3.79688 9.72656 3.79688 10.3125 4.14844 10.6641L11.6875 18.1641C12.0391 18.5547 12.625 18.5547 12.9766 18.1641Z" fill="#002840" fill-opacity="0.5"></path></g><defs><clipPath id="clip0_627_2295"><rect width="24" height="24" fill="white" transform="matrix(-1 0 0 1 24 0)"></rect></clipPath></defs></svg></span>
			<span class='e-closed'><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"><g clip-path="url(#clip0_627_2295)"><path d="M12.9766 18.1641L20.4766 10.6641C20.8672 10.3125 20.8672 9.72656 20.4766 9.33594C20.125 8.98438 19.5391 8.98438 19.1484 9.33594L12.3125 16.2109L5.47656 9.375C5.125 8.98438 4.53906 8.98438 4.14844 9.375C3.79688 9.72656 3.79688 10.3125 4.14844 10.6641L11.6875 18.1641C12.0391 18.5547 12.625 18.5547 12.9766 18.1641Z" fill="#002840" fill-opacity="0.5"></path></g><defs><clipPath id="clip0_627_2295"><rect width="24" height="24" fill="white" transform="matrix(-1 0 0 1 24 0)"></rect></clipPath></defs></svg></span>
		</span>

						</summary>
				<div role="region" aria-labelledby="e-n-accordion-item-1331" class="elementor-element elementor-element-134efb4a e-con-full e-flex e-con e-child" data-id="134efb4a" data-element_type="container">
				<div class="elementor-element elementor-element-1f147e4e elementor-nav-menu--dropdown-none wp_menu elementor-widget elementor-widget-nav-menu" data-id="1f147e4e" data-element_type="widget" data-settings="{&quot;layout&quot;:&quot;vertical&quot;,&quot;submenu_icon&quot;:{&quot;value&quot;:&quot;&lt;i class=\&quot;\&quot;&gt;&lt;\/i&gt;&quot;,&quot;library&quot;:&quot;&quot;}}" data-widget_type="nav-menu.default">
				<div class="elementor-widget-container">
						<nav aria-label="Menu" class="elementor-nav-menu--main elementor-nav-menu__container elementor-nav-menu--layout-vertical e--pointer-none">
				<ul id="menu-1-1f147e4e" class="elementor-nav-menu sm-vertical"><li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-774"><a href="/en/topic/ai" class="elementor-item">Leverage Al</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-777"><a href="/en/topic/profitability" class="elementor-item">Increase Profitability</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-775"><a href="/en/topic/personalization" class="elementor-item">Ecommerce Personalization</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-776"><a href="/en/topic/retention-loyalty" class="elementor-item">Retention and Loyalty</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-778"><a href="/en/topic/acquisition" class="elementor-item">Acquire More Customers</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-779"><a href="/en/topic/customer-data" class="elementor-item">Understand Customer Data</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-780"><a href="/en/topic/grow-aov" class="elementor-item">Grow AOV</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-781"><a href="/en/library" class="elementor-item">View More</a></li>
</ul>			</nav>
						<nav class="elementor-nav-menu--dropdown elementor-nav-menu__container" aria-hidden="true">
				<ul id="menu-2-1f147e4e" class="elementor-nav-menu sm-vertical"><li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-774"><a href="/en/topic/ai" class="elementor-item" tabindex="-1">Leverage Al</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-777"><a href="/en/topic/profitability" class="elementor-item" tabindex="-1">Increase Profitability</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-775"><a href="/en/topic/personalization" class="elementor-item" tabindex="-1">Ecommerce Personalization</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-776"><a href="/en/topic/retention-loyalty" class="elementor-item" tabindex="-1">Retention and Loyalty</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-778"><a href="/en/topic/acquisition" class="elementor-item" tabindex="-1">Acquire More Customers</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-779"><a href="/en/topic/customer-data" class="elementor-item" tabindex="-1">Understand Customer Data</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-780"><a href="/en/topic/grow-aov" class="elementor-item" tabindex="-1">Grow AOV</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-781"><a href="/en/library" class="elementor-item" tabindex="-1">View More</a></li>
</ul>			</nav>
				</div>
				</div>
				</div>
					</details>
						<details id="e-n-accordion-item-1332" class="e-n-accordion-item" >
				<summary class="e-n-accordion-item-title" data-accordion-index="3" tabindex="-1" aria-expanded="false" aria-controls="e-n-accordion-item-1332" >
					<span class='e-n-accordion-item-title-header'><div class="e-n-accordion-item-title-text"> Get Expert Insights </div></span>
							<span class='e-n-accordion-item-title-icon'>
			<span class='e-opened' ><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"><g clip-path="url(#clip0_627_2295)"><path d="M12.9766 18.1641L20.4766 10.6641C20.8672 10.3125 20.8672 9.72656 20.4766 9.33594C20.125 8.98438 19.5391 8.98438 19.1484 9.33594L12.3125 16.2109L5.47656 9.375C5.125 8.98438 4.53906 8.98438 4.14844 9.375C3.79688 9.72656 3.79688 10.3125 4.14844 10.6641L11.6875 18.1641C12.0391 18.5547 12.625 18.5547 12.9766 18.1641Z" fill="#002840" fill-opacity="0.5"></path></g><defs><clipPath id="clip0_627_2295"><rect width="24" height="24" fill="white" transform="matrix(-1 0 0 1 24 0)"></rect></clipPath></defs></svg></span>
			<span class='e-closed'><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"><g clip-path="url(#clip0_627_2295)"><path d="M12.9766 18.1641L20.4766 10.6641C20.8672 10.3125 20.8672 9.72656 20.4766 9.33594C20.125 8.98438 19.5391 8.98438 19.1484 9.33594L12.3125 16.2109L5.47656 9.375C5.125 8.98438 4.53906 8.98438 4.14844 9.375C3.79688 9.72656 3.79688 10.3125 4.14844 10.6641L11.6875 18.1641C12.0391 18.5547 12.625 18.5547 12.9766 18.1641Z" fill="#002840" fill-opacity="0.5"></path></g><defs><clipPath id="clip0_627_2295"><rect width="24" height="24" fill="white" transform="matrix(-1 0 0 1 24 0)"></rect></clipPath></defs></svg></span>
		</span>

						</summary>
				<div role="region" aria-labelledby="e-n-accordion-item-1332" class="elementor-element elementor-element-33049904 e-con-full e-flex e-con e-child" data-id="33049904" data-element_type="container">
				<div class="elementor-element elementor-element-197874c7 elementor-nav-menu--dropdown-none wp_menu elementor-widget elementor-widget-nav-menu" data-id="197874c7" data-element_type="widget" data-settings="{&quot;layout&quot;:&quot;vertical&quot;,&quot;submenu_icon&quot;:{&quot;value&quot;:&quot;&lt;i class=\&quot;\&quot;&gt;&lt;\/i&gt;&quot;,&quot;library&quot;:&quot;&quot;}}" data-widget_type="nav-menu.default">
				<div class="elementor-widget-container">
						<nav aria-label="Menu" class="elementor-nav-menu--main elementor-nav-menu__container elementor-nav-menu--layout-vertical e--pointer-none">
				<ul id="menu-1-197874c7" class="elementor-nav-menu sm-vertical"><li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-782"><a href="/en/blog" class="elementor-item">Blog</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-783"><a href="/en/library/podcasts" class="elementor-item">Podcasts</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-43922"><a href="/en/library/events" class="elementor-item">Events</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-784"><a href="/en/library/analyst-reports" class="elementor-item">Analyst Reports</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-785"><a href="/en/library/webinars" class="elementor-item">Upcoming Webinars</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-786"><a href="/en/bloomreach-experience-strategy-group" class="elementor-item">Experience Strategy Group</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-55651"><a href="/en/exclusive-insights-from-bloomreach" class="elementor-item">Exclusive Insights from Bloomreach</a></li>
</ul>			</nav>
						<nav class="elementor-nav-menu--dropdown elementor-nav-menu__container" aria-hidden="true">
				<ul id="menu-2-197874c7" class="elementor-nav-menu sm-vertical"><li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-782"><a href="/en/blog" class="elementor-item" tabindex="-1">Blog</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-783"><a href="/en/library/podcasts" class="elementor-item" tabindex="-1">Podcasts</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-43922"><a href="/en/library/events" class="elementor-item" tabindex="-1">Events</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-784"><a href="/en/library/analyst-reports" class="elementor-item" tabindex="-1">Analyst Reports</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-785"><a href="/en/library/webinars" class="elementor-item" tabindex="-1">Upcoming Webinars</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-786"><a href="/en/bloomreach-experience-strategy-group" class="elementor-item" tabindex="-1">Experience Strategy Group</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-55651"><a href="/en/exclusive-insights-from-bloomreach" class="elementor-item" tabindex="-1">Exclusive Insights from Bloomreach</a></li>
</ul>			</nav>
				</div>
				</div>
				</div>
					</details>
					</div>
				</div>
				</div>
				</div>
		<div class="elementor-element elementor-element-53f98e7 e-con-full e-flex e-con e-child" data-id="53f98e7" data-element_type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
				<div class="elementor-element elementor-element-b003d15 elementor-widget-tablet__width-initial elementor-widget elementor-widget-image" data-id="b003d15" data-element_type="widget" data-widget_type="image.default">
				<div class="elementor-widget-container">
													<img width="318" height="225" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20318%20225'%3E%3C/svg%3E" class="attachment-full size-full wp-image-235" alt="bloomreach-menu-resources" data-lazy-srcset="https://www.bloomreach.com/wp-content/uploads/2024/04/bloomreach-menu-resources.png 318w, https://www.bloomreach.com/wp-content/uploads/2024/04/bloomreach-menu-resources-300x212.png 300w" data-lazy-sizes="(max-width: 318px) 100vw, 318px" data-lazy-src="https://www.bloomreach.com/wp-content/uploads/2024/04/bloomreach-menu-resources.png" /><noscript><img width="318" height="225" src="https://www.bloomreach.com/wp-content/uploads/2024/04/bloomreach-menu-resources.png" class="attachment-full size-full wp-image-235" alt="bloomreach-menu-resources" srcset="https://www.bloomreach.com/wp-content/uploads/2024/04/bloomreach-menu-resources.png 318w, https://www.bloomreach.com/wp-content/uploads/2024/04/bloomreach-menu-resources-300x212.png 300w" sizes="(max-width: 318px) 100vw, 318px" /></noscript>													</div>
				</div>
		<div class="elementor-element elementor-element-9d617f2 e-con-full e-flex e-con e-child" data-id="9d617f2" data-element_type="container">
		<div class="elementor-element elementor-element-8b1e632 e-con-full e-flex e-con e-child" data-id="8b1e632" data-element_type="container">
				<div class="elementor-element elementor-element-2c65ee5 elementor-widget__width-inherit elementor-widget elementor-widget-heading" data-id="2c65ee5" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<p class="elementor-heading-title elementor-size-default">The Edge Summit</p>		</div>
				</div>
				<div class="elementor-element elementor-element-bf3e0fc elementor-widget elementor-widget-text-editor" data-id="bf3e0fc" data-element_type="widget" data-widget_type="text-editor.default">
				<div class="elementor-widget-container">
							<p>London &amp; New York, Sep 2024</p>						</div>
				</div>
				</div>
				<div class="elementor-element elementor-element-e30be2b button_blue elementor-widget elementor-widget-button" data-id="e30be2b" data-element_type="widget" data-widget_type="button.default">
				<div class="elementor-widget-container">
					<div class="elementor-button-wrapper">
			<a class="elementor-button elementor-button-link elementor-size-sm" href="https://theedgesummit.com/">
						<span class="elementor-button-content-wrapper">
									<span class="elementor-button-text">Register Now</span>
					</span>
					</a>
		</div>
				</div>
				</div>
				</div>
				</div>
				</div>
				</div>
				</div>
				</div>
				<div data-elementor-type="popup" data-elementor-id="1214" class="elementor elementor-1214 elementor-location-popup" data-elementor-settings="{&quot;entrance_animation&quot;:&quot;slideInRight&quot;,&quot;exit_animation&quot;:&quot;slideInRight&quot;,&quot;entrance_animation_duration&quot;:{&quot;unit&quot;:&quot;px&quot;,&quot;size&quot;:0.4,&quot;sizes&quot;:[]},&quot;prevent_scroll&quot;:&quot;yes&quot;,&quot;classes&quot;:&quot;mobile_menu_popup&quot;,&quot;a11y_navigation&quot;:&quot;yes&quot;,&quot;timing&quot;:[]}" data-elementor-post-type="elementor_library">
			<div  class="elementor-element elementor-element-1f012d3c e-con-full mobile_menu_section e-flex e-con e-parent" data-id="1f012d3c" data-element_type="container">
		<div  class="elementor-element elementor-element-61edf3f3 e-con-full e-flex e-con e-child" data-id="61edf3f3" data-element_type="container">
				<div class="elementor-element elementor-element-7ab4434c close_popup elementor-widget elementor-widget-heading" data-id="7ab4434c" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<div class="elementor-heading-title elementor-size-default"><a href="#">Back</a></div>		</div>
				</div>
		<div class="elementor-element elementor-element-74423e39 e-con-full e-flex e-con e-child" data-id="74423e39" data-element_type="container">
		<div class="elementor-element elementor-element-40db4a68 e-con-full e-flex e-con e-child" data-id="40db4a68" data-element_type="container">
				<div class="elementor-element elementor-element-7343c361 elementor-widget elementor-widget-heading" data-id="7343c361" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<p class="elementor-heading-title elementor-size-default">Pricing</p>		</div>
				</div>
				<div class="elementor-element elementor-element-788f0369 elementor-widget elementor-widget-n-accordion" data-id="788f0369" data-element_type="widget" data-settings="{&quot;default_state&quot;:&quot;all_collapsed&quot;,&quot;max_items_expended&quot;:&quot;one&quot;,&quot;n_accordion_animation_duration&quot;:{&quot;unit&quot;:&quot;ms&quot;,&quot;size&quot;:400,&quot;sizes&quot;:[]}}" data-widget_type="nested-accordion.default">
				<div class="elementor-widget-container">
					<div class="e-n-accordion" aria-label="Accordion. Open links with Enter or Space, close with Escape, and navigate with Arrow Keys">
						<details id="e-n-accordion-item-2020" class="e-n-accordion-item" >
				<summary class="e-n-accordion-item-title" data-accordion-index="1" tabindex="0" aria-expanded="false" aria-controls="e-n-accordion-item-2020" >
					<span class='e-n-accordion-item-title-header'><div class="e-n-accordion-item-title-text"> Autonomous Marketing </div></span>
							<span class='e-n-accordion-item-title-icon'>
			<span class='e-opened' ><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"><g clip-path="url(#clip0_627_2295)"><path d="M12.9766 18.1641L20.4766 10.6641C20.8672 10.3125 20.8672 9.72656 20.4766 9.33594C20.125 8.98438 19.5391 8.98438 19.1484 9.33594L12.3125 16.2109L5.47656 9.375C5.125 8.98438 4.53906 8.98438 4.14844 9.375C3.79688 9.72656 3.79688 10.3125 4.14844 10.6641L11.6875 18.1641C12.0391 18.5547 12.625 18.5547 12.9766 18.1641Z" fill="#002840" fill-opacity="0.5"></path></g><defs><clipPath id="clip0_627_2295"><rect width="24" height="24" fill="white" transform="matrix(-1 0 0 1 24 0)"></rect></clipPath></defs></svg></span>
			<span class='e-closed'><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"><g clip-path="url(#clip0_627_2295)"><path d="M12.9766 18.1641L20.4766 10.6641C20.8672 10.3125 20.8672 9.72656 20.4766 9.33594C20.125 8.98438 19.5391 8.98438 19.1484 9.33594L12.3125 16.2109L5.47656 9.375C5.125 8.98438 4.53906 8.98438 4.14844 9.375C3.79688 9.72656 3.79688 10.3125 4.14844 10.6641L11.6875 18.1641C12.0391 18.5547 12.625 18.5547 12.9766 18.1641Z" fill="#002840" fill-opacity="0.5"></path></g><defs><clipPath id="clip0_627_2295"><rect width="24" height="24" fill="white" transform="matrix(-1 0 0 1 24 0)"></rect></clipPath></defs></svg></span>
		</span>

						</summary>
				<div role="region" aria-labelledby="e-n-accordion-item-2020" class="elementor-element elementor-element-6280d40b e-con-full e-flex e-con e-child" data-id="6280d40b" data-element_type="container">
				<div class="elementor-element elementor-element-54221774 elementor-nav-menu--dropdown-none wp_menu elementor-widget elementor-widget-nav-menu" data-id="54221774" data-element_type="widget" data-settings="{&quot;layout&quot;:&quot;vertical&quot;,&quot;submenu_icon&quot;:{&quot;value&quot;:&quot;&lt;i class=\&quot;\&quot;&gt;&lt;\/i&gt;&quot;,&quot;library&quot;:&quot;&quot;}}" data-widget_type="nav-menu.default">
				<div class="elementor-widget-container">
						<nav aria-label="Menu" class="elementor-nav-menu--main elementor-nav-menu__container elementor-nav-menu--layout-vertical e--pointer-none">
				<ul id="menu-1-54221774" class="elementor-nav-menu sm-vertical"><li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1217"><a href="/en/pricing/engagement#accordition-email-marketing" class="elementor-item elementor-item-anchor">Email Marketing<span class="menu-icon" ><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewBox="0 0 16 16">
  <defs>
    <clipPath id="clip-web_email_mktg">
      <rect width="16" height="16"/>
    </clipPath>
  </defs>
  <g id="web_email_mktg" data-name="web_email mktg" clip-path="url(#clip-web_email_mktg)">
    <g id="email-action-unread" transform="translate(-0.754 -1.868)">
      <path id="Path_3152" data-name="Path 3152" d="M2.35,15.736a1.6,1.6,0,0,1-1.6-1.6V5.6a1.579,1.579,0,0,1,.338-.981L1.1,4.6,1.12,4.58A1.6,1.6,0,0,1,2.35,4h12.8a1.6,1.6,0,0,1,1.231.579A.169.169,0,0,1,16.4,4.6l.013.019a1.58,1.58,0,0,1,.338.98v8.535a1.6,1.6,0,0,1-1.6,1.6Zm-.534-1.6a.534.534,0,0,0,.534.534h12.8a.534.534,0,0,0,.534-.534V5.822L10.512,9.8a2.888,2.888,0,0,1-3.519,0L1.817,5.822ZM7.642,8.956a1.82,1.82,0,0,0,2.218,0l5.058-3.89H2.584Z" transform="translate(0 0)" fill="none"/>
    </g>
  </g>
</svg>
</span></a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1218"><a href="/en/pricing/engagement#accordition-sms-mobile-messaging" class="elementor-item elementor-item-anchor">SMS &#038; Mobile Messaging<span class="menu-icon" ><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewBox="0 0 16 16">
  <defs>
    <clipPath id="clip-web_sms-messaging">
      <rect width="16" height="16"/>
    </clipPath>
  </defs>
  <g id="web_sms-messaging" clip-path="url(#clip-web_sms-messaging)">
    <g id="phone-chatting" transform="translate(0.25)">
      <path id="Path_3153" data-name="Path 3153" d="M6.071,16a2.324,2.324,0,0,1-2.322-2.32V6.227L3.518,6H2.829A2.081,2.081,0,0,1,.75,3.922V2.079A2.081,2.081,0,0,1,2.829,0H7.171A2.081,2.081,0,0,1,9.25,2.079V3.921A2.082,2.082,0,0,1,7.171,6H6.25V7.5a.5.5,0,0,1-.852.356l-.65-.64V12h7V8.722L10.6,9.856A.5.5,0,0,1,9.748,9.5V8H9.327a2.085,2.085,0,0,1-1.468-.618.5.5,0,1,1,.709-.7A1.077,1.077,0,0,0,9.327,7h.923a.5.5,0,0,1,.5.5v.8l1.172-1.156A.5.5,0,0,1,12.274,7h1.4a1.081,1.081,0,0,0,1.079-1.079V3.583A1.081,1.081,0,0,0,13.67,2.5H11.249a.5.5,0,1,1,0-1H13.67a2.082,2.082,0,0,1,2.078,2.079V5.921A2.082,2.082,0,0,1,13.67,8H12.75v4.483a.226.226,0,0,1,0,.035v1.161A2.324,2.324,0,0,1,10.426,16ZM4.75,13.679A1.323,1.323,0,0,0,6.071,15h4.356a1.324,1.324,0,0,0,1.322-1.321V13h-7ZM2.829,1A1.081,1.081,0,0,0,1.75,2.079V3.921A1.08,1.08,0,0,0,2.828,5h.9a.5.5,0,0,1,.352.144L5.251,6.3V5.5a.5.5,0,0,1,.5-.5H7.173A1.081,1.081,0,0,0,8.251,3.921V2.079A1.081,1.081,0,0,0,7.171,1Z" transform="translate(0)" fill="none"/>
      <circle id="Ellipse_87" data-name="Ellipse 87" cx="0.75" cy="0.75" r="0.75" transform="translate(9.75 4)" fill="none"/>
      <circle id="Ellipse_88" data-name="Ellipse 88" cx="0.75" cy="0.75" r="0.75" transform="translate(12.25 4)" fill="none"/>
      <circle id="Ellipse_89" data-name="Ellipse 89" cx="0.75" cy="0.75" r="0.75" transform="translate(5.583 2.5)" fill="none"/>
      <path id="Path_3154" data-name="Path 3154" d="M4.745,5.25a.749.749,0,0,1-.076-1.5.561.561,0,0,1,.076,0h.083a.749.749,0,0,1-.083,1.5Z" transform="translate(-1.081 -1.25)" fill="none"/>
    </g>
  </g>
</svg>
</span></a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1219"><a href="/en/pricing/engagement#accordition-web-personalization" class="elementor-item elementor-item-anchor">Web Personalization<span class="menu-icon" ><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewBox="0 0 16 16">
  <defs>
    <clipPath id="clip-web_web_personalization">
      <rect width="16" height="16"/>
    </clipPath>
  </defs>
  <g id="web_web_personalization" data-name="web_web personalization" clip-path="url(#clip-web_web_personalization)">
    <g id="browser-page-layout" transform="translate(-0.754 -0.97)">
      <path id="Path_3170" data-name="Path 3170" d="M2.35,16.44a1.6,1.6,0,0,1-1.6-1.6V3.1a1.6,1.6,0,0,1,1.6-1.6H15.158a1.6,1.6,0,0,1,1.6,1.6V14.84a1.6,1.6,0,0,1-1.6,1.6Zm12.807-1.072a.534.534,0,0,0,.534-.534V11.1H7.154v4.264ZM1.818,14.84a.534.534,0,0,0,.534.534H6.088V5.768H1.818Zm13.869-4.8V5.768H7.154v4.268Zm0-5.336V3.1a.534.534,0,0,0-.534-.534H2.35a.534.534,0,0,0-.533.534v1.6Z" transform="translate(0 0)" fill="none"/>
    </g>
  </g>
</svg>
</span></a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1220"><a href="/en/pricing/engagement#accordition-intelligence-orchestration" class="elementor-item elementor-item-anchor">App Personalization<span class="menu-icon" ><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewBox="0 0 16 16">
  <defs>
    <clipPath id="clip-web_mktg_intelligence">
      <rect width="16" height="16"/>
    </clipPath>
  </defs>
  <g id="web_mktg_intelligence" data-name="web_mktg intelligence" clip-path="url(#clip-web_mktg_intelligence)">
    <g id="Group_3430" data-name="Group 3430" transform="translate(-974.001 -406)">
      <g id="lightbulb" transform="translate(977.755 409.592)">
        <path id="Path_3211" data-name="Path 3211" d="M10.128,13.907h-2.3A1.022,1.022,0,0,1,6.8,12.886V11.865h4.345v1.021A1.022,1.022,0,0,1,10.128,13.907ZM7.694,12.755v.131a.133.133,0,0,0,.131.131h2.3a.133.133,0,0,0,.131-.131v-.131ZM10.7,11.6H7.249A1.022,1.022,0,0,1,6.228,10.58V9.485A4.376,4.376,0,0,1,4.5,5.976a4.476,4.476,0,1,1,7.225,3.5v1.1A1.022,1.022,0,0,1,10.7,11.6ZM8.976,2.39A3.561,3.561,0,0,0,5.39,5.976,3.479,3.479,0,0,0,6.919,8.888l.2.132v1.56a.133.133,0,0,0,.131.131H10.7a.133.133,0,0,0,.131-.131V9.031l.184-.134a3.64,3.64,0,0,0,1.543-2.922A3.561,3.561,0,0,0,8.976,2.39Z" transform="translate(-4.5 -1.5)" fill="none"/>
      </g>
      <path id="Line_82" data-name="Line 82" d="M-.055,2.171A.445.445,0,0,1-.5,1.725V-.055A.445.445,0,0,1-.055-.5.445.445,0,0,1,.39-.055v1.78a.445.445,0,0,1-.445.445Z" transform="translate(982.286 406.5)" fill="none"/>
      <path id="Line_83" data-name="Line 83" d="M-.055,1.28A.445.445,0,0,1-.37,1.15a.445.445,0,0,1,0-.629l.89-.89a.445.445,0,0,1,.629,0,.445.445,0,0,1,0,.629l-.89.89a.445.445,0,0,1-.314.13Z" transform="translate(985.402 407.39)" fill="none"/>
      <path id="Line_85" data-name="Line 85" d="M-.055.867a.445.445,0,0,1-.38-.21A.445.445,0,0,1-.489.318a.445.445,0,0,1,.2-.276L.5-.435a.445.445,0,0,1,.612.15.445.445,0,0,1-.15.612L.175.8A.445.445,0,0,1-.055.867Z" transform="translate(987.286 410.061)" fill="none"/>
      <path id="Line_86" data-name="Line 86" d="M.731.867A.445.445,0,0,1,.5.8L-.285.325a.445.445,0,0,1-.15-.611.445.445,0,0,1,.611-.15L.963.042A.445.445,0,0,1,.731.868Z" transform="translate(976.5 410.061)" fill="none"/>
      <path id="Line_84" data-name="Line 84" d="M.835,1.28A.445.445,0,0,1,.52,1.15L-.37.26a.445.445,0,0,1,0-.629.445.445,0,0,1,.629,0l.89.89a.445.445,0,0,1-.314.759Z" transform="translate(978.28 407.39)" fill="none"/>
    </g>
  </g>
</svg>
</span></a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1221"><a href="/en/pricing/engagement#accordition-ad-optimization" class="elementor-item elementor-item-anchor">Ad Optimization<span class="menu-icon" ><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewBox="0 0 16 16">
  <defs>
    <clipPath id="clip-web_ads-retargeting">
      <rect width="16" height="16"/>
    </clipPath>
  </defs>
  <g id="web_ads-retargeting" clip-path="url(#clip-web_ads-retargeting)">
    <g id="ads-retargeting" transform="translate(0.5 0.5)">
      <path id="Path_3156" data-name="Path 3156" d="M4.217,12.279a1.411,1.411,0,0,1-1.325-.942H1.4A1.412,1.412,0,0,1,0,9.924V2.362A1.412,1.412,0,0,1,1.4.942H2.888A1.411,1.411,0,0,1,4.217,0h6.559A1.411,1.411,0,0,1,12.1.942h1.486a1.412,1.412,0,0,1,1.4,1.413V9.911a.467.467,0,1,1-.935,0V2.362a.469.469,0,0,0-.467-.471h-1.4V8.475a.467.467,0,1,1-.935,0V1.413a.469.469,0,0,0-.467-.471H4.217a.469.469,0,0,0-.467.471v9.449a.469.469,0,0,0,.467.471H8.8a.471.471,0,0,1,0,.942ZM1.4,1.889a.469.469,0,0,0-.467.471V9.916a.469.469,0,0,0,.467.471H2.8v-8.5Z" transform="translate(0)" fill="none"/>
      <path id="Path_3157" data-name="Path 3157" d="M7.952,4.657a.452.452,0,0,1,0-.9h4.532a.452.452,0,1,1,0,.9Z" transform="translate(-2.722 -1.401)" fill="none"/>
      <path id="Path_3158" data-name="Path 3158" d="M7.952,8.4a.452.452,0,0,1,0-.9h4.532a.452.452,0,0,1,0,.9Z" transform="translate(-2.722 -2.803)" fill="none"/>
      <path id="Path_3159" data-name="Path 3159" d="M7.952,12.157a.452.452,0,1,1,0-.9H9.764a.452.452,0,1,1,0,.9Z" transform="translate(-2.779 -4.205)" fill="none"/>
      <path id="Path_3160" data-name="Path 3160" d="M20.224,20.677a.452.452,0,0,1-.32-.133l-1.192-1.192-.662,1.1a.452.452,0,0,1-.389.221h-.04a.452.452,0,0,1-.383-.289l-1.6-4.165a.452.452,0,0,1,.586-.586l4.168,1.6a.452.452,0,0,1,.07.813l-1.1.662,1.192,1.192a.452.452,0,0,1-.321.774Zm-2.474-1.483.484-.805a.433.433,0,0,1,.063-.082l.01-.01a.437.437,0,0,1,.083-.063l.805-.484-2.35-.9Z" transform="translate(-5.685 -5.68)" fill="none"/>
    </g>
  </g>
</svg>
</span></a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1222"><a href="/en/pricing/engagement#accordition-enterprise-engagement" class="elementor-item elementor-item-anchor">Enterprise Engagement<span class="menu-icon" ><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewBox="0 0 16 16">
  <defs>
    <clipPath id="clip-web_omni_orch">
      <rect width="16" height="16"/>
    </clipPath>
  </defs>
  <g id="web_omni_orch" data-name="web_omni orch" clip-path="url(#clip-web_omni_orch)">
    <g id="hierarchy-9" transform="translate(-0.25 -0.249)">
      <path id="Union_1" data-name="Union 1" d="M-9800.234,6665.779a1.99,1.99,0,0,1,1.5-1.929l0-2.135a2.955,2.955,0,0,1-1.256-.521l-3.567,3.565a1.97,1.97,0,0,1,.284,1.021,1.992,1.992,0,0,1-1.99,1.987,1.991,1.991,0,0,1-1.988-1.987,2,2,0,0,1,1.988-1.989,1.98,1.98,0,0,1,1.02.283l3.567-3.564a2.982,2.982,0,0,1-.563-1.746,3.007,3.007,0,0,1,.079-.68l-2.263-1.358a1.981,1.981,0,0,1-1.338.519,1.992,1.992,0,0,1-1.99-1.987,1.993,1.993,0,0,1,1.99-1.989,1.992,1.992,0,0,1,1.989,1.99,1.973,1.973,0,0,1-.113.66l2.1,1.261a2.989,2.989,0,0,1,2.535-1.406,2.972,2.972,0,0,1,1.742.56l1.561-1.561a1.955,1.955,0,0,1-.281-1.02,1.986,1.986,0,0,1,1.986-1.986,1.99,1.99,0,0,1,1.99,1.986,1.993,1.993,0,0,1-1.99,1.989,1.97,1.97,0,0,1-1.019-.283l-1.561,1.561a2.972,2.972,0,0,1,.563,1.741,2.969,2.969,0,0,1-.211,1.1l.918.917a1.974,1.974,0,0,1,1.309-.494,1.993,1.993,0,0,1,1.99,1.99,1.992,1.992,0,0,1-1.99,1.988,1.991,1.991,0,0,1-1.986-1.989,1.964,1.964,0,0,1,.119-.679l-.873-.874a2.988,2.988,0,0,1-1.779,1v2.136a1.994,1.994,0,0,1,1.5,1.928,1.989,1.989,0,0,1-1.987,1.987,1.987,1.987,0,0,1-1.408-.581A1.99,1.99,0,0,1-9800.234,6665.779Zm.97,0a1.018,1.018,0,0,0,1.019,1.017,1.019,1.019,0,0,0,1.02-1.017,1.022,1.022,0,0,0-1.02-1.02,1.019,1.019,0,0,0-1.02,1.02Zm-7.013,0a1.016,1.016,0,0,0,1.016,1.017,1.016,1.016,0,0,0,1.016-1.017,1.014,1.014,0,0,0-.277-.7l-.018-.017-.02-.021a1.009,1.009,0,0,0-.7-.281A1.017,1.017,0,0,0-9806.277,6665.779Zm12.023-3.508a1.017,1.017,0,0,0,1.017,1.017,1.022,1.022,0,0,0,1.021-1.018,1.02,1.02,0,0,0-1.021-1.017,1.015,1.015,0,0,0-.856.471l-.021.034a.989.989,0,0,0-.141.512Zm-3.99-1.489a2.02,2.02,0,0,0,2.019-2.02,2.019,2.019,0,0,0-.571-1.406l-.021-.021-.022-.022a2,2,0,0,0-1.4-.572,2.023,2.023,0,0,0-2.021,2.022,2.015,2.015,0,0,0,.581,1.417l.01.01.008.008a2.018,2.018,0,0,0,1.42.586Zm-7.532-5.53a1.017,1.017,0,0,0,1.018,1.017,1.018,1.018,0,0,0,.841-.446v0a1.011,1.011,0,0,0,.174-.566,1.019,1.019,0,0,0-1.019-1.02,1.02,1.02,0,0,0-.721.3,1.02,1.02,0,0,0-.295.724Zm12.539-.485a1.021,1.021,0,0,0,1.021-1.018,1.021,1.021,0,0,0-1.021-1.017,1.018,1.018,0,0,0-1.017,1.018,1.01,1.01,0,0,0,.291.71l.008.008.008.008a1.022,1.022,0,0,0,.71.294Z" transform="translate(9807.5 -6651.518)" fill="none"/>
    </g>
  </g>
</svg>
</span></a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1223"><a href="/en/pricing/engagement" class="elementor-item">View All Packages</a></li>
</ul>			</nav>
						<nav class="elementor-nav-menu--dropdown elementor-nav-menu__container" aria-hidden="true">
				<ul id="menu-2-54221774" class="elementor-nav-menu sm-vertical"><li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1217"><a href="/en/pricing/engagement#accordition-email-marketing" class="elementor-item elementor-item-anchor" tabindex="-1">Email Marketing<span class="menu-icon" ><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewBox="0 0 16 16">
  <defs>
    <clipPath id="clip-web_email_mktg">
      <rect width="16" height="16"/>
    </clipPath>
  </defs>
  <g id="web_email_mktg" data-name="web_email mktg" clip-path="url(#clip-web_email_mktg)">
    <g id="email-action-unread" transform="translate(-0.754 -1.868)">
      <path id="Path_3152" data-name="Path 3152" d="M2.35,15.736a1.6,1.6,0,0,1-1.6-1.6V5.6a1.579,1.579,0,0,1,.338-.981L1.1,4.6,1.12,4.58A1.6,1.6,0,0,1,2.35,4h12.8a1.6,1.6,0,0,1,1.231.579A.169.169,0,0,1,16.4,4.6l.013.019a1.58,1.58,0,0,1,.338.98v8.535a1.6,1.6,0,0,1-1.6,1.6Zm-.534-1.6a.534.534,0,0,0,.534.534h12.8a.534.534,0,0,0,.534-.534V5.822L10.512,9.8a2.888,2.888,0,0,1-3.519,0L1.817,5.822ZM7.642,8.956a1.82,1.82,0,0,0,2.218,0l5.058-3.89H2.584Z" transform="translate(0 0)" fill="none"/>
    </g>
  </g>
</svg>
</span></a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1218"><a href="/en/pricing/engagement#accordition-sms-mobile-messaging" class="elementor-item elementor-item-anchor" tabindex="-1">SMS &#038; Mobile Messaging<span class="menu-icon" ><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewBox="0 0 16 16">
  <defs>
    <clipPath id="clip-web_sms-messaging">
      <rect width="16" height="16"/>
    </clipPath>
  </defs>
  <g id="web_sms-messaging" clip-path="url(#clip-web_sms-messaging)">
    <g id="phone-chatting" transform="translate(0.25)">
      <path id="Path_3153" data-name="Path 3153" d="M6.071,16a2.324,2.324,0,0,1-2.322-2.32V6.227L3.518,6H2.829A2.081,2.081,0,0,1,.75,3.922V2.079A2.081,2.081,0,0,1,2.829,0H7.171A2.081,2.081,0,0,1,9.25,2.079V3.921A2.082,2.082,0,0,1,7.171,6H6.25V7.5a.5.5,0,0,1-.852.356l-.65-.64V12h7V8.722L10.6,9.856A.5.5,0,0,1,9.748,9.5V8H9.327a2.085,2.085,0,0,1-1.468-.618.5.5,0,1,1,.709-.7A1.077,1.077,0,0,0,9.327,7h.923a.5.5,0,0,1,.5.5v.8l1.172-1.156A.5.5,0,0,1,12.274,7h1.4a1.081,1.081,0,0,0,1.079-1.079V3.583A1.081,1.081,0,0,0,13.67,2.5H11.249a.5.5,0,1,1,0-1H13.67a2.082,2.082,0,0,1,2.078,2.079V5.921A2.082,2.082,0,0,1,13.67,8H12.75v4.483a.226.226,0,0,1,0,.035v1.161A2.324,2.324,0,0,1,10.426,16ZM4.75,13.679A1.323,1.323,0,0,0,6.071,15h4.356a1.324,1.324,0,0,0,1.322-1.321V13h-7ZM2.829,1A1.081,1.081,0,0,0,1.75,2.079V3.921A1.08,1.08,0,0,0,2.828,5h.9a.5.5,0,0,1,.352.144L5.251,6.3V5.5a.5.5,0,0,1,.5-.5H7.173A1.081,1.081,0,0,0,8.251,3.921V2.079A1.081,1.081,0,0,0,7.171,1Z" transform="translate(0)" fill="none"/>
      <circle id="Ellipse_87" data-name="Ellipse 87" cx="0.75" cy="0.75" r="0.75" transform="translate(9.75 4)" fill="none"/>
      <circle id="Ellipse_88" data-name="Ellipse 88" cx="0.75" cy="0.75" r="0.75" transform="translate(12.25 4)" fill="none"/>
      <circle id="Ellipse_89" data-name="Ellipse 89" cx="0.75" cy="0.75" r="0.75" transform="translate(5.583 2.5)" fill="none"/>
      <path id="Path_3154" data-name="Path 3154" d="M4.745,5.25a.749.749,0,0,1-.076-1.5.561.561,0,0,1,.076,0h.083a.749.749,0,0,1-.083,1.5Z" transform="translate(-1.081 -1.25)" fill="none"/>
    </g>
  </g>
</svg>
</span></a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1219"><a href="/en/pricing/engagement#accordition-web-personalization" class="elementor-item elementor-item-anchor" tabindex="-1">Web Personalization<span class="menu-icon" ><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewBox="0 0 16 16">
  <defs>
    <clipPath id="clip-web_web_personalization">
      <rect width="16" height="16"/>
    </clipPath>
  </defs>
  <g id="web_web_personalization" data-name="web_web personalization" clip-path="url(#clip-web_web_personalization)">
    <g id="browser-page-layout" transform="translate(-0.754 -0.97)">
      <path id="Path_3170" data-name="Path 3170" d="M2.35,16.44a1.6,1.6,0,0,1-1.6-1.6V3.1a1.6,1.6,0,0,1,1.6-1.6H15.158a1.6,1.6,0,0,1,1.6,1.6V14.84a1.6,1.6,0,0,1-1.6,1.6Zm12.807-1.072a.534.534,0,0,0,.534-.534V11.1H7.154v4.264ZM1.818,14.84a.534.534,0,0,0,.534.534H6.088V5.768H1.818Zm13.869-4.8V5.768H7.154v4.268Zm0-5.336V3.1a.534.534,0,0,0-.534-.534H2.35a.534.534,0,0,0-.533.534v1.6Z" transform="translate(0 0)" fill="none"/>
    </g>
  </g>
</svg>
</span></a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1220"><a href="/en/pricing/engagement#accordition-intelligence-orchestration" class="elementor-item elementor-item-anchor" tabindex="-1">App Personalization<span class="menu-icon" ><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewBox="0 0 16 16">
  <defs>
    <clipPath id="clip-web_mktg_intelligence">
      <rect width="16" height="16"/>
    </clipPath>
  </defs>
  <g id="web_mktg_intelligence" data-name="web_mktg intelligence" clip-path="url(#clip-web_mktg_intelligence)">
    <g id="Group_3430" data-name="Group 3430" transform="translate(-974.001 -406)">
      <g id="lightbulb" transform="translate(977.755 409.592)">
        <path id="Path_3211" data-name="Path 3211" d="M10.128,13.907h-2.3A1.022,1.022,0,0,1,6.8,12.886V11.865h4.345v1.021A1.022,1.022,0,0,1,10.128,13.907ZM7.694,12.755v.131a.133.133,0,0,0,.131.131h2.3a.133.133,0,0,0,.131-.131v-.131ZM10.7,11.6H7.249A1.022,1.022,0,0,1,6.228,10.58V9.485A4.376,4.376,0,0,1,4.5,5.976a4.476,4.476,0,1,1,7.225,3.5v1.1A1.022,1.022,0,0,1,10.7,11.6ZM8.976,2.39A3.561,3.561,0,0,0,5.39,5.976,3.479,3.479,0,0,0,6.919,8.888l.2.132v1.56a.133.133,0,0,0,.131.131H10.7a.133.133,0,0,0,.131-.131V9.031l.184-.134a3.64,3.64,0,0,0,1.543-2.922A3.561,3.561,0,0,0,8.976,2.39Z" transform="translate(-4.5 -1.5)" fill="none"/>
      </g>
      <path id="Line_82" data-name="Line 82" d="M-.055,2.171A.445.445,0,0,1-.5,1.725V-.055A.445.445,0,0,1-.055-.5.445.445,0,0,1,.39-.055v1.78a.445.445,0,0,1-.445.445Z" transform="translate(982.286 406.5)" fill="none"/>
      <path id="Line_83" data-name="Line 83" d="M-.055,1.28A.445.445,0,0,1-.37,1.15a.445.445,0,0,1,0-.629l.89-.89a.445.445,0,0,1,.629,0,.445.445,0,0,1,0,.629l-.89.89a.445.445,0,0,1-.314.13Z" transform="translate(985.402 407.39)" fill="none"/>
      <path id="Line_85" data-name="Line 85" d="M-.055.867a.445.445,0,0,1-.38-.21A.445.445,0,0,1-.489.318a.445.445,0,0,1,.2-.276L.5-.435a.445.445,0,0,1,.612.15.445.445,0,0,1-.15.612L.175.8A.445.445,0,0,1-.055.867Z" transform="translate(987.286 410.061)" fill="none"/>
      <path id="Line_86" data-name="Line 86" d="M.731.867A.445.445,0,0,1,.5.8L-.285.325a.445.445,0,0,1-.15-.611.445.445,0,0,1,.611-.15L.963.042A.445.445,0,0,1,.731.868Z" transform="translate(976.5 410.061)" fill="none"/>
      <path id="Line_84" data-name="Line 84" d="M.835,1.28A.445.445,0,0,1,.52,1.15L-.37.26a.445.445,0,0,1,0-.629.445.445,0,0,1,.629,0l.89.89a.445.445,0,0,1-.314.759Z" transform="translate(978.28 407.39)" fill="none"/>
    </g>
  </g>
</svg>
</span></a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1221"><a href="/en/pricing/engagement#accordition-ad-optimization" class="elementor-item elementor-item-anchor" tabindex="-1">Ad Optimization<span class="menu-icon" ><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewBox="0 0 16 16">
  <defs>
    <clipPath id="clip-web_ads-retargeting">
      <rect width="16" height="16"/>
    </clipPath>
  </defs>
  <g id="web_ads-retargeting" clip-path="url(#clip-web_ads-retargeting)">
    <g id="ads-retargeting" transform="translate(0.5 0.5)">
      <path id="Path_3156" data-name="Path 3156" d="M4.217,12.279a1.411,1.411,0,0,1-1.325-.942H1.4A1.412,1.412,0,0,1,0,9.924V2.362A1.412,1.412,0,0,1,1.4.942H2.888A1.411,1.411,0,0,1,4.217,0h6.559A1.411,1.411,0,0,1,12.1.942h1.486a1.412,1.412,0,0,1,1.4,1.413V9.911a.467.467,0,1,1-.935,0V2.362a.469.469,0,0,0-.467-.471h-1.4V8.475a.467.467,0,1,1-.935,0V1.413a.469.469,0,0,0-.467-.471H4.217a.469.469,0,0,0-.467.471v9.449a.469.469,0,0,0,.467.471H8.8a.471.471,0,0,1,0,.942ZM1.4,1.889a.469.469,0,0,0-.467.471V9.916a.469.469,0,0,0,.467.471H2.8v-8.5Z" transform="translate(0)" fill="none"/>
      <path id="Path_3157" data-name="Path 3157" d="M7.952,4.657a.452.452,0,0,1,0-.9h4.532a.452.452,0,1,1,0,.9Z" transform="translate(-2.722 -1.401)" fill="none"/>
      <path id="Path_3158" data-name="Path 3158" d="M7.952,8.4a.452.452,0,0,1,0-.9h4.532a.452.452,0,0,1,0,.9Z" transform="translate(-2.722 -2.803)" fill="none"/>
      <path id="Path_3159" data-name="Path 3159" d="M7.952,12.157a.452.452,0,1,1,0-.9H9.764a.452.452,0,1,1,0,.9Z" transform="translate(-2.779 -4.205)" fill="none"/>
      <path id="Path_3160" data-name="Path 3160" d="M20.224,20.677a.452.452,0,0,1-.32-.133l-1.192-1.192-.662,1.1a.452.452,0,0,1-.389.221h-.04a.452.452,0,0,1-.383-.289l-1.6-4.165a.452.452,0,0,1,.586-.586l4.168,1.6a.452.452,0,0,1,.07.813l-1.1.662,1.192,1.192a.452.452,0,0,1-.321.774Zm-2.474-1.483.484-.805a.433.433,0,0,1,.063-.082l.01-.01a.437.437,0,0,1,.083-.063l.805-.484-2.35-.9Z" transform="translate(-5.685 -5.68)" fill="none"/>
    </g>
  </g>
</svg>
</span></a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1222"><a href="/en/pricing/engagement#accordition-enterprise-engagement" class="elementor-item elementor-item-anchor" tabindex="-1">Enterprise Engagement<span class="menu-icon" ><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewBox="0 0 16 16">
  <defs>
    <clipPath id="clip-web_omni_orch">
      <rect width="16" height="16"/>
    </clipPath>
  </defs>
  <g id="web_omni_orch" data-name="web_omni orch" clip-path="url(#clip-web_omni_orch)">
    <g id="hierarchy-9" transform="translate(-0.25 -0.249)">
      <path id="Union_1" data-name="Union 1" d="M-9800.234,6665.779a1.99,1.99,0,0,1,1.5-1.929l0-2.135a2.955,2.955,0,0,1-1.256-.521l-3.567,3.565a1.97,1.97,0,0,1,.284,1.021,1.992,1.992,0,0,1-1.99,1.987,1.991,1.991,0,0,1-1.988-1.987,2,2,0,0,1,1.988-1.989,1.98,1.98,0,0,1,1.02.283l3.567-3.564a2.982,2.982,0,0,1-.563-1.746,3.007,3.007,0,0,1,.079-.68l-2.263-1.358a1.981,1.981,0,0,1-1.338.519,1.992,1.992,0,0,1-1.99-1.987,1.993,1.993,0,0,1,1.99-1.989,1.992,1.992,0,0,1,1.989,1.99,1.973,1.973,0,0,1-.113.66l2.1,1.261a2.989,2.989,0,0,1,2.535-1.406,2.972,2.972,0,0,1,1.742.56l1.561-1.561a1.955,1.955,0,0,1-.281-1.02,1.986,1.986,0,0,1,1.986-1.986,1.99,1.99,0,0,1,1.99,1.986,1.993,1.993,0,0,1-1.99,1.989,1.97,1.97,0,0,1-1.019-.283l-1.561,1.561a2.972,2.972,0,0,1,.563,1.741,2.969,2.969,0,0,1-.211,1.1l.918.917a1.974,1.974,0,0,1,1.309-.494,1.993,1.993,0,0,1,1.99,1.99,1.992,1.992,0,0,1-1.99,1.988,1.991,1.991,0,0,1-1.986-1.989,1.964,1.964,0,0,1,.119-.679l-.873-.874a2.988,2.988,0,0,1-1.779,1v2.136a1.994,1.994,0,0,1,1.5,1.928,1.989,1.989,0,0,1-1.987,1.987,1.987,1.987,0,0,1-1.408-.581A1.99,1.99,0,0,1-9800.234,6665.779Zm.97,0a1.018,1.018,0,0,0,1.019,1.017,1.019,1.019,0,0,0,1.02-1.017,1.022,1.022,0,0,0-1.02-1.02,1.019,1.019,0,0,0-1.02,1.02Zm-7.013,0a1.016,1.016,0,0,0,1.016,1.017,1.016,1.016,0,0,0,1.016-1.017,1.014,1.014,0,0,0-.277-.7l-.018-.017-.02-.021a1.009,1.009,0,0,0-.7-.281A1.017,1.017,0,0,0-9806.277,6665.779Zm12.023-3.508a1.017,1.017,0,0,0,1.017,1.017,1.022,1.022,0,0,0,1.021-1.018,1.02,1.02,0,0,0-1.021-1.017,1.015,1.015,0,0,0-.856.471l-.021.034a.989.989,0,0,0-.141.512Zm-3.99-1.489a2.02,2.02,0,0,0,2.019-2.02,2.019,2.019,0,0,0-.571-1.406l-.021-.021-.022-.022a2,2,0,0,0-1.4-.572,2.023,2.023,0,0,0-2.021,2.022,2.015,2.015,0,0,0,.581,1.417l.01.01.008.008a2.018,2.018,0,0,0,1.42.586Zm-7.532-5.53a1.017,1.017,0,0,0,1.018,1.017,1.018,1.018,0,0,0,.841-.446v0a1.011,1.011,0,0,0,.174-.566,1.019,1.019,0,0,0-1.019-1.02,1.02,1.02,0,0,0-.721.3,1.02,1.02,0,0,0-.295.724Zm12.539-.485a1.021,1.021,0,0,0,1.021-1.018,1.021,1.021,0,0,0-1.021-1.017,1.018,1.018,0,0,0-1.017,1.018,1.01,1.01,0,0,0,.291.71l.008.008.008.008a1.022,1.022,0,0,0,.71.294Z" transform="translate(9807.5 -6651.518)" fill="none"/>
    </g>
  </g>
</svg>
</span></a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1223"><a href="/en/pricing/engagement" class="elementor-item" tabindex="-1">View All Packages</a></li>
</ul>			</nav>
				</div>
				</div>
				</div>
					</details>
						<details id="e-n-accordion-item-2021" class="e-n-accordion-item" >
				<summary class="e-n-accordion-item-title" data-accordion-index="2" tabindex="-1" aria-expanded="false" aria-controls="e-n-accordion-item-2021" >
					<span class='e-n-accordion-item-title-header'><div class="e-n-accordion-item-title-text"> Autonomous Search </div></span>
							<span class='e-n-accordion-item-title-icon'>
			<span class='e-opened' ><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"><g clip-path="url(#clip0_627_2295)"><path d="M12.9766 18.1641L20.4766 10.6641C20.8672 10.3125 20.8672 9.72656 20.4766 9.33594C20.125 8.98438 19.5391 8.98438 19.1484 9.33594L12.3125 16.2109L5.47656 9.375C5.125 8.98438 4.53906 8.98438 4.14844 9.375C3.79688 9.72656 3.79688 10.3125 4.14844 10.6641L11.6875 18.1641C12.0391 18.5547 12.625 18.5547 12.9766 18.1641Z" fill="#002840" fill-opacity="0.5"></path></g><defs><clipPath id="clip0_627_2295"><rect width="24" height="24" fill="white" transform="matrix(-1 0 0 1 24 0)"></rect></clipPath></defs></svg></span>
			<span class='e-closed'><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"><g clip-path="url(#clip0_627_2295)"><path d="M12.9766 18.1641L20.4766 10.6641C20.8672 10.3125 20.8672 9.72656 20.4766 9.33594C20.125 8.98438 19.5391 8.98438 19.1484 9.33594L12.3125 16.2109L5.47656 9.375C5.125 8.98438 4.53906 8.98438 4.14844 9.375C3.79688 9.72656 3.79688 10.3125 4.14844 10.6641L11.6875 18.1641C12.0391 18.5547 12.625 18.5547 12.9766 18.1641Z" fill="#002840" fill-opacity="0.5"></path></g><defs><clipPath id="clip0_627_2295"><rect width="24" height="24" fill="white" transform="matrix(-1 0 0 1 24 0)"></rect></clipPath></defs></svg></span>
		</span>

						</summary>
				<div role="region" aria-labelledby="e-n-accordion-item-2021" class="elementor-element elementor-element-455d2c1b e-con-full e-flex e-con e-child" data-id="455d2c1b" data-element_type="container">
				<div class="elementor-element elementor-element-3ec2b5e elementor-nav-menu--dropdown-none wp_menu elementor-widget elementor-widget-nav-menu" data-id="3ec2b5e" data-element_type="widget" data-settings="{&quot;layout&quot;:&quot;vertical&quot;,&quot;submenu_icon&quot;:{&quot;value&quot;:&quot;&lt;i class=\&quot;\&quot;&gt;&lt;\/i&gt;&quot;,&quot;library&quot;:&quot;&quot;}}" data-widget_type="nav-menu.default">
				<div class="elementor-widget-container">
						<nav aria-label="Menu" class="elementor-nav-menu--main elementor-nav-menu__container elementor-nav-menu--layout-vertical e--pointer-none">
				<ul id="menu-1-3ec2b5e" class="elementor-nav-menu sm-vertical"><li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1224"><a href="/en/pricing/discovery#accordition-search" class="elementor-item elementor-item-anchor">Ecommerce Search<span class="menu-icon" ><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewBox="0 0 16 16">
  <defs>
    <clipPath id="clip-web_search_apis">
      <rect width="16" height="16"/>
    </clipPath>
  </defs>
  <g id="web_search_apis" data-name="web_search apis" clip-path="url(#clip-web_search_apis)">
    <g id="app-window-search-1" transform="translate(-0.013)">
      <path id="Path_3140" data-name="Path 3140" d="M1.509,14a1.5,1.5,0,0,1-1.5-1.5V1.5A1.5,1.5,0,0,1,1.509,0h12a1.5,1.5,0,0,1,1.5,1.5V5.5a.5.5,0,0,1-1,0v-1.5h-13v8.5a.5.5,0,0,0,.5.5h4a.5.5,0,1,1,0,1ZM14.01,3v-1.5a.5.5,0,0,0-.5-.5h-12a.5.5,0,0,0-.5.5V3Z" fill="none"/>
      <path id="Path_3141" data-name="Path 3141" d="M18.759,19.254a.5.5,0,0,1-.353-.147l-2.194-2.194a4,4,0,1,1,.707-.707L19.113,18.4a.5.5,0,0,1-.354.854Zm-5-8.5a3,3,0,1,0,3,3,3,3,0,0,0-3-3Z" transform="translate(-3.249 -3.254)" fill="none"/>
    </g>
  </g>
</svg>
</span></a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1225"><a href="/en/pricing/discovery#accordition-merchandising" class="elementor-item elementor-item-anchor">Merchandising<span class="menu-icon" ><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewBox="0 0 16 16">
  <defs>
    <clipPath id="clip-web_merch">
      <rect width="16" height="16"/>
    </clipPath>
  </defs>
  <g id="web_merch" clip-path="url(#clip-web_merch)">
    <g id="phone-action-cart" transform="translate(-9.607 -0.2)">
      <path id="Path_3198" data-name="Path 3198" d="M13.29,12.235a1.556,1.556,0,0,1-1.428-.942l-.013-.033L9.728,5.327a1.557,1.557,0,0,1,1.439-2.153h12.4l.941-2.6a.566.566,0,0,1,1.063.387L24.5,3.922l-.008.022-2.642,7.268A1.566,1.566,0,0,1,20.4,12.239ZM12.9,10.86a.426.426,0,0,0,.386.245H20.4a.428.428,0,0,0,.394-.281L23.159,4.3H11.166a.426.426,0,0,0-.391.594l.013.033Z" transform="translate(0 0)" fill="none"/>
      <path id="Path_3200" data-name="Path 3200" d="M13.67,12.822a1.061,1.061,0,1,1,1.061-1.061A1.061,1.061,0,0,1,13.67,12.822Z" transform="translate(0.965 3.378)" fill="none"/>
      <path id="Path_3202" data-name="Path 3202" d="M17.42,12.822a1.061,1.061,0,1,1,1.061-1.061A1.061,1.061,0,0,1,17.42,12.822Z" transform="translate(2.172 3.378)" fill="none"/>
    </g>
  </g>
</svg>
</span></a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1226"><a href="/en/pricing/discovery#accordition-recommendations" class="elementor-item elementor-item-anchor">Recommendations<span class="menu-icon" ><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewBox="0 0 16 16">
  <defs>
    <clipPath id="clip-web_product_recs">
      <rect width="16" height="16"/>
    </clipPath>
  </defs>
  <g id="web_product_recs" data-name="web_product recs" clip-path="url(#clip-web_product_recs)">
    <g id="rating-star" transform="translate(-0.001)">
      <path id="Path_3142" data-name="Path 3142" d="M12.595,16a1.048,1.048,0,0,1-.468-.112L8,13.845,3.875,15.887a1.026,1.026,0,0,1-.464.11A1.042,1.042,0,0,1,2.4,14.689l1.234-4.48L.308,6.913a1.037,1.037,0,0,1,.644-1.77l4.012-.4L7.067.576A1.033,1.033,0,0,1,8.476.12,1.035,1.035,0,0,1,8.93.574L11.038,4.75l4.02.4a1.036,1.036,0,0,1,.636,1.768l-3.326,3.291L13.6,14.684a1.045,1.045,0,0,1-.739,1.279,1.088,1.088,0,0,1-.267.037ZM8,12.787a.5.5,0,0,1,.222.053l4.352,2.154a.047.047,0,0,0,.021.006c.033-.007.047-.031.041-.053l-1.308-4.753a.5.5,0,0,1,.13-.488l3.533-3.5A.036.036,0,0,0,15,6.182a.038.038,0,0,0-.033-.04l-4.3-.425a.5.5,0,0,1-.4-.272L8.04,1.027a.048.048,0,0,0-.019-.019.043.043,0,0,0-.021,0c-.027.006-.035.013-.041.025L5.733,5.442a.5.5,0,0,1-.4.272l-4.288.425a.044.044,0,0,0-.031.011A.035.035,0,0,0,1,6.176a.033.033,0,0,0,.011.025L4.547,9.7a.5.5,0,0,1,.13.488L3.368,14.949a.041.041,0,0,0,0,.026A.044.044,0,0,0,3.405,15a.04.04,0,0,0,.018,0L7.778,12.84A.506.506,0,0,1,8,12.787Z" transform="translate(0)" fill="none"/>
    </g>
  </g>
</svg>
</span></a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1227"><a href="/en/pricing/discovery#accordition-seo" class="elementor-item elementor-item-anchor">SEO<span class="menu-icon" ><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewBox="0 0 16 16">
  <defs>
    <clipPath id="clip-web_seo">
      <rect width="16" height="16"/>
    </clipPath>
  </defs>
  <g id="web_seo" clip-path="url(#clip-web_seo)">
    <g id="seo">
      <path id="Path_3143" data-name="Path 3143" d="M1.5,13.993A1.5,1.5,0,0,1,0,12.5V1.5A1.5,1.5,0,0,1,1.5,0H8.61A1.5,1.5,0,0,1,9.672.439l1.92,1.914a1.487,1.487,0,0,1,.441,1.061V5a.5.5,0,0,1-1,0V3.412a.5.5,0,0,0-.146-.353L8.967,1.145A.5.5,0,0,0,8.61,1H1.5a.5.5,0,0,0-.5.5V12.49a.5.5,0,0,0,.5.5H5.01a.5.5,0,1,1,0,1Z" transform="translate(0 0)" fill="none"/>
      <path id="Path_3144" data-name="Path 3144" d="M18.779,19.276a.5.5,0,0,1-.355-.148l-2.192-2.2a4.024,4.024,0,1,1,.709-.709l2.193,2.2a.5.5,0,0,1-.355.857Zm-5-8.523a3.008,3.008,0,1,0,3.008,3.008,3.008,3.008,0,0,0-3.008-3.008Z" transform="translate(-3.282 -3.277)" fill="none"/>
    </g>
  </g>
</svg>
</span></a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1230"><a href="/en/pricing/discovery" class="elementor-item">View All Packages</a></li>
</ul>			</nav>
						<nav class="elementor-nav-menu--dropdown elementor-nav-menu__container" aria-hidden="true">
				<ul id="menu-2-3ec2b5e" class="elementor-nav-menu sm-vertical"><li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1224"><a href="/en/pricing/discovery#accordition-search" class="elementor-item elementor-item-anchor" tabindex="-1">Ecommerce Search<span class="menu-icon" ><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewBox="0 0 16 16">
  <defs>
    <clipPath id="clip-web_search_apis">
      <rect width="16" height="16"/>
    </clipPath>
  </defs>
  <g id="web_search_apis" data-name="web_search apis" clip-path="url(#clip-web_search_apis)">
    <g id="app-window-search-1" transform="translate(-0.013)">
      <path id="Path_3140" data-name="Path 3140" d="M1.509,14a1.5,1.5,0,0,1-1.5-1.5V1.5A1.5,1.5,0,0,1,1.509,0h12a1.5,1.5,0,0,1,1.5,1.5V5.5a.5.5,0,0,1-1,0v-1.5h-13v8.5a.5.5,0,0,0,.5.5h4a.5.5,0,1,1,0,1ZM14.01,3v-1.5a.5.5,0,0,0-.5-.5h-12a.5.5,0,0,0-.5.5V3Z" fill="none"/>
      <path id="Path_3141" data-name="Path 3141" d="M18.759,19.254a.5.5,0,0,1-.353-.147l-2.194-2.194a4,4,0,1,1,.707-.707L19.113,18.4a.5.5,0,0,1-.354.854Zm-5-8.5a3,3,0,1,0,3,3,3,3,0,0,0-3-3Z" transform="translate(-3.249 -3.254)" fill="none"/>
    </g>
  </g>
</svg>
</span></a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1225"><a href="/en/pricing/discovery#accordition-merchandising" class="elementor-item elementor-item-anchor" tabindex="-1">Merchandising<span class="menu-icon" ><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewBox="0 0 16 16">
  <defs>
    <clipPath id="clip-web_merch">
      <rect width="16" height="16"/>
    </clipPath>
  </defs>
  <g id="web_merch" clip-path="url(#clip-web_merch)">
    <g id="phone-action-cart" transform="translate(-9.607 -0.2)">
      <path id="Path_3198" data-name="Path 3198" d="M13.29,12.235a1.556,1.556,0,0,1-1.428-.942l-.013-.033L9.728,5.327a1.557,1.557,0,0,1,1.439-2.153h12.4l.941-2.6a.566.566,0,0,1,1.063.387L24.5,3.922l-.008.022-2.642,7.268A1.566,1.566,0,0,1,20.4,12.239ZM12.9,10.86a.426.426,0,0,0,.386.245H20.4a.428.428,0,0,0,.394-.281L23.159,4.3H11.166a.426.426,0,0,0-.391.594l.013.033Z" transform="translate(0 0)" fill="none"/>
      <path id="Path_3200" data-name="Path 3200" d="M13.67,12.822a1.061,1.061,0,1,1,1.061-1.061A1.061,1.061,0,0,1,13.67,12.822Z" transform="translate(0.965 3.378)" fill="none"/>
      <path id="Path_3202" data-name="Path 3202" d="M17.42,12.822a1.061,1.061,0,1,1,1.061-1.061A1.061,1.061,0,0,1,17.42,12.822Z" transform="translate(2.172 3.378)" fill="none"/>
    </g>
  </g>
</svg>
</span></a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1226"><a href="/en/pricing/discovery#accordition-recommendations" class="elementor-item elementor-item-anchor" tabindex="-1">Recommendations<span class="menu-icon" ><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewBox="0 0 16 16">
  <defs>
    <clipPath id="clip-web_product_recs">
      <rect width="16" height="16"/>
    </clipPath>
  </defs>
  <g id="web_product_recs" data-name="web_product recs" clip-path="url(#clip-web_product_recs)">
    <g id="rating-star" transform="translate(-0.001)">
      <path id="Path_3142" data-name="Path 3142" d="M12.595,16a1.048,1.048,0,0,1-.468-.112L8,13.845,3.875,15.887a1.026,1.026,0,0,1-.464.11A1.042,1.042,0,0,1,2.4,14.689l1.234-4.48L.308,6.913a1.037,1.037,0,0,1,.644-1.77l4.012-.4L7.067.576A1.033,1.033,0,0,1,8.476.12,1.035,1.035,0,0,1,8.93.574L11.038,4.75l4.02.4a1.036,1.036,0,0,1,.636,1.768l-3.326,3.291L13.6,14.684a1.045,1.045,0,0,1-.739,1.279,1.088,1.088,0,0,1-.267.037ZM8,12.787a.5.5,0,0,1,.222.053l4.352,2.154a.047.047,0,0,0,.021.006c.033-.007.047-.031.041-.053l-1.308-4.753a.5.5,0,0,1,.13-.488l3.533-3.5A.036.036,0,0,0,15,6.182a.038.038,0,0,0-.033-.04l-4.3-.425a.5.5,0,0,1-.4-.272L8.04,1.027a.048.048,0,0,0-.019-.019.043.043,0,0,0-.021,0c-.027.006-.035.013-.041.025L5.733,5.442a.5.5,0,0,1-.4.272l-4.288.425a.044.044,0,0,0-.031.011A.035.035,0,0,0,1,6.176a.033.033,0,0,0,.011.025L4.547,9.7a.5.5,0,0,1,.13.488L3.368,14.949a.041.041,0,0,0,0,.026A.044.044,0,0,0,3.405,15a.04.04,0,0,0,.018,0L7.778,12.84A.506.506,0,0,1,8,12.787Z" transform="translate(0)" fill="none"/>
    </g>
  </g>
</svg>
</span></a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1227"><a href="/en/pricing/discovery#accordition-seo" class="elementor-item elementor-item-anchor" tabindex="-1">SEO<span class="menu-icon" ><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewBox="0 0 16 16">
  <defs>
    <clipPath id="clip-web_seo">
      <rect width="16" height="16"/>
    </clipPath>
  </defs>
  <g id="web_seo" clip-path="url(#clip-web_seo)">
    <g id="seo">
      <path id="Path_3143" data-name="Path 3143" d="M1.5,13.993A1.5,1.5,0,0,1,0,12.5V1.5A1.5,1.5,0,0,1,1.5,0H8.61A1.5,1.5,0,0,1,9.672.439l1.92,1.914a1.487,1.487,0,0,1,.441,1.061V5a.5.5,0,0,1-1,0V3.412a.5.5,0,0,0-.146-.353L8.967,1.145A.5.5,0,0,0,8.61,1H1.5a.5.5,0,0,0-.5.5V12.49a.5.5,0,0,0,.5.5H5.01a.5.5,0,1,1,0,1Z" transform="translate(0 0)" fill="none"/>
      <path id="Path_3144" data-name="Path 3144" d="M18.779,19.276a.5.5,0,0,1-.355-.148l-2.192-2.2a4.024,4.024,0,1,1,.709-.709l2.193,2.2a.5.5,0,0,1-.355.857Zm-5-8.523a3.008,3.008,0,1,0,3.008,3.008,3.008,3.008,0,0,0-3.008-3.008Z" transform="translate(-3.282 -3.277)" fill="none"/>
    </g>
  </g>
</svg>
</span></a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1230"><a href="/en/pricing/discovery" class="elementor-item" tabindex="-1">View All Packages</a></li>
</ul>			</nav>
				</div>
				</div>
				</div>
					</details>
						<details id="e-n-accordion-item-2022" class="e-n-accordion-item" >
				<summary class="e-n-accordion-item-title" data-accordion-index="3" tabindex="-1" aria-expanded="false" aria-controls="e-n-accordion-item-2022" >
					<span class='e-n-accordion-item-title-header'><div class="e-n-accordion-item-title-text"> Conversational Shopping </div></span>
							<span class='e-n-accordion-item-title-icon'>
			<span class='e-opened' ><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"><g clip-path="url(#clip0_627_2295)"><path d="M12.9766 18.1641L20.4766 10.6641C20.8672 10.3125 20.8672 9.72656 20.4766 9.33594C20.125 8.98438 19.5391 8.98438 19.1484 9.33594L12.3125 16.2109L5.47656 9.375C5.125 8.98438 4.53906 8.98438 4.14844 9.375C3.79688 9.72656 3.79688 10.3125 4.14844 10.6641L11.6875 18.1641C12.0391 18.5547 12.625 18.5547 12.9766 18.1641Z" fill="#002840" fill-opacity="0.5"></path></g><defs><clipPath id="clip0_627_2295"><rect width="24" height="24" fill="white" transform="matrix(-1 0 0 1 24 0)"></rect></clipPath></defs></svg></span>
			<span class='e-closed'><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"><g clip-path="url(#clip0_627_2295)"><path d="M12.9766 18.1641L20.4766 10.6641C20.8672 10.3125 20.8672 9.72656 20.4766 9.33594C20.125 8.98438 19.5391 8.98438 19.1484 9.33594L12.3125 16.2109L5.47656 9.375C5.125 8.98438 4.53906 8.98438 4.14844 9.375C3.79688 9.72656 3.79688 10.3125 4.14844 10.6641L11.6875 18.1641C12.0391 18.5547 12.625 18.5547 12.9766 18.1641Z" fill="#002840" fill-opacity="0.5"></path></g><defs><clipPath id="clip0_627_2295"><rect width="24" height="24" fill="white" transform="matrix(-1 0 0 1 24 0)"></rect></clipPath></defs></svg></span>
		</span>

						</summary>
				<div role="region" aria-labelledby="e-n-accordion-item-2022" class="elementor-element elementor-element-fe6a824 e-con-full e-flex e-con e-child" data-id="fe6a824" data-element_type="container">
				<div class="elementor-element elementor-element-c839abe elementor-nav-menu--dropdown-none wp_menu elementor-widget elementor-widget-nav-menu" data-id="c839abe" data-element_type="widget" data-settings="{&quot;layout&quot;:&quot;vertical&quot;,&quot;submenu_icon&quot;:{&quot;value&quot;:&quot;&lt;i class=\&quot;\&quot;&gt;&lt;\/i&gt;&quot;,&quot;library&quot;:&quot;&quot;}}" data-widget_type="nav-menu.default">
				<div class="elementor-widget-container">
						<nav aria-label="Menu" class="elementor-nav-menu--main elementor-nav-menu__container elementor-nav-menu--layout-vertical e--pointer-none">
				<ul id="menu-1-c839abe" class="elementor-nav-menu sm-vertical"><li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-59549"><a href="/en/pricing/clarity" class="elementor-item">View pricing</a></li>
</ul>			</nav>
						<nav class="elementor-nav-menu--dropdown elementor-nav-menu__container" aria-hidden="true">
				<ul id="menu-2-c839abe" class="elementor-nav-menu sm-vertical"><li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-59549"><a href="/en/pricing/clarity" class="elementor-item" tabindex="-1">View pricing</a></li>
</ul>			</nav>
				</div>
				</div>
				</div>
					</details>
					</div>
				</div>
				</div>
				</div>
		<div class="elementor-element elementor-element-87345e5 e-con-full e-flex e-con e-child" data-id="87345e5" data-element_type="container">
		<div class="elementor-element elementor-element-e5201c6 e-con-full e-flex e-con e-child" data-id="e5201c6" data-element_type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
		<div class="elementor-element elementor-element-36767a2 e-con-full e-flex e-con e-child" data-id="36767a2" data-element_type="container">
				<div class="elementor-element elementor-element-6e3e0ff elementor-widget__width-inherit elementor-widget elementor-widget-heading" data-id="6e3e0ff" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<p class="elementor-heading-title elementor-size-default">There Is No Upgrade From Bloomreach</p>		</div>
				</div>
				<div class="elementor-element elementor-element-08cd52c elementor-widget elementor-widget-text-editor" data-id="08cd52c" data-element_type="widget" data-widget_type="text-editor.default">
				<div class="elementor-widget-container">
							<p>Find the perfect package for your business. Unify all your customer and product data and deliver connected customer experiences with our three commerce-specific products.</p>						</div>
				</div>
				</div>
				<div class="elementor-element elementor-element-2859b37 button_blue elementor-widget elementor-widget-button" data-id="2859b37" data-element_type="widget" data-widget_type="button.default">
				<div class="elementor-widget-container">
					<div class="elementor-button-wrapper">
			<a class="elementor-button elementor-button-link elementor-size-sm" href="https://www.bloomreach.com/en/pricing">
						<span class="elementor-button-content-wrapper">
									<span class="elementor-button-text">View Pricing</span>
					</span>
					</a>
		</div>
				</div>
				</div>
				</div>
		<a class="elementor-element elementor-element-92c598c e-con-full e-flex e-con e-child" data-id="92c598c" data-element_type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}" href="https://www.bloomreach.com/en/contact-us">
		<div class="elementor-element elementor-element-11ebb80 e-con-full e-flex e-con e-child" data-id="11ebb80" data-element_type="container">
				<div class="elementor-element elementor-element-a948897 elementor-widget__width-initial elementor-widget elementor-widget-image" data-id="a948897" data-element_type="widget" data-widget_type="image.default">
				<div class="elementor-widget-container">
													<img width="80" height="80" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%2080%2080'%3E%3C/svg%3E" class="attachment-full size-full wp-image-261" alt="bloomreach-avatar-menu-1" data-lazy-src="https://www.bloomreach.com/wp-content/uploads/2024/04/bloomreach-avatar-menu-1.png" /><noscript><img width="80" height="80" src="https://www.bloomreach.com/wp-content/uploads/2024/04/bloomreach-avatar-menu-1.png" class="attachment-full size-full wp-image-261" alt="bloomreach-avatar-menu-1" /></noscript>													</div>
				</div>
				<div class="elementor-element elementor-element-9aaa267 elementor-widget__width-initial elementor-widget elementor-widget-image" data-id="9aaa267" data-element_type="widget" data-widget_type="image.default">
				<div class="elementor-widget-container">
													<img width="80" height="80" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%2080%2080'%3E%3C/svg%3E" class="attachment-full size-full wp-image-255" alt="bloomreach-avatar-menu-3" data-lazy-src="https://www.bloomreach.com/wp-content/uploads/2024/04/bloomreach-avatar-menu-3.png" /><noscript><img width="80" height="80" src="https://www.bloomreach.com/wp-content/uploads/2024/04/bloomreach-avatar-menu-3.png" class="attachment-full size-full wp-image-255" alt="bloomreach-avatar-menu-3" /></noscript>													</div>
				</div>
				<div class="elementor-element elementor-element-99affc7 elementor-widget__width-initial elementor-widget elementor-widget-image" data-id="99affc7" data-element_type="widget" data-widget_type="image.default">
				<div class="elementor-widget-container">
													<img width="80" height="80" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%2080%2080'%3E%3C/svg%3E" class="attachment-full size-full wp-image-258" alt="bloomreach-avatar-menu-2" data-lazy-src="https://www.bloomreach.com/wp-content/uploads/2024/04/bloomreach-avatar-menu-2.png" /><noscript><img width="80" height="80" src="https://www.bloomreach.com/wp-content/uploads/2024/04/bloomreach-avatar-menu-2.png" class="attachment-full size-full wp-image-258" alt="bloomreach-avatar-menu-2" /></noscript>													</div>
				</div>
				</div>
		<div class="elementor-element elementor-element-41d9cfa e-con-full e-flex e-con e-child" data-id="41d9cfa" data-element_type="container">
				<div class="elementor-element elementor-element-59c8d7a elementor-widget__width-inherit elementor-widget elementor-widget-heading" data-id="59c8d7a" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<p class="elementor-heading-title elementor-size-default">Book a call with one of our experts</p>		</div>
				</div>
				<div class="elementor-element elementor-element-cb1f6f5 elementor-widget__width-initial icon_button_link elementor-view-default elementor-widget elementor-widget-icon" data-id="cb1f6f5" data-element_type="widget" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 16 16" fill="none"><path d="M11.1875 4.75C11.4922 4.75 11.75 5.00781 11.75 5.3125V10.9375C11.75 11.2656 11.4922 11.5 11.1875 11.5C10.8594 11.5 10.625 11.2656 10.625 10.9375V6.67188L5.21094 12.0859C4.97656 12.3203 4.625 12.3203 4.41406 12.0859C4.17969 11.875 4.17969 11.5234 4.41406 11.3125L9.82812 5.89844H5.5625C5.23438 5.89844 5 5.64062 5 5.33594C5 5.00781 5.23438 4.77344 5.5625 4.77344H11.1875V4.75Z" fill="white"></path></svg>			</div>
		</div>
				</div>
				</div>
				</div>
				</a>
				</div>
				</div>
				</div>
				</div>
				</div>
				<div data-elementor-type="popup" data-elementor-id="1239" class="elementor elementor-1239 elementor-location-popup" data-elementor-settings="{&quot;entrance_animation&quot;:&quot;slideInRight&quot;,&quot;exit_animation&quot;:&quot;slideInRight&quot;,&quot;entrance_animation_duration&quot;:{&quot;unit&quot;:&quot;px&quot;,&quot;size&quot;:0.4,&quot;sizes&quot;:[]},&quot;prevent_scroll&quot;:&quot;yes&quot;,&quot;classes&quot;:&quot;mobile_menu_popup&quot;,&quot;a11y_navigation&quot;:&quot;yes&quot;,&quot;timing&quot;:[]}" data-elementor-post-type="elementor_library">
			<div  class="elementor-element elementor-element-6239652d e-con-full mobile_menu_section e-flex e-con e-parent" data-id="6239652d" data-element_type="container">
		<div  class="elementor-element elementor-element-36699da1 e-con-full e-flex e-con e-child" data-id="36699da1" data-element_type="container">
				<div class="elementor-element elementor-element-44b797c6 close_popup elementor-widget elementor-widget-heading" data-id="44b797c6" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<div class="elementor-heading-title elementor-size-default"><a href="#">Back</a></div>		</div>
				</div>
		<div class="elementor-element elementor-element-5f8f09e1 e-con-full e-flex e-con e-child" data-id="5f8f09e1" data-element_type="container">
		<div class="elementor-element elementor-element-7c8f49e5 e-con-full e-flex e-con e-child" data-id="7c8f49e5" data-element_type="container">
				<div class="elementor-element elementor-element-5c7271a5 elementor-widget elementor-widget-heading" data-id="5c7271a5" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<p class="elementor-heading-title elementor-size-default">About Us</p>		</div>
				</div>
				<div class="elementor-element elementor-element-1b28c44a elementor-widget elementor-widget-n-accordion" data-id="1b28c44a" data-element_type="widget" data-settings="{&quot;default_state&quot;:&quot;all_collapsed&quot;,&quot;max_items_expended&quot;:&quot;one&quot;,&quot;n_accordion_animation_duration&quot;:{&quot;unit&quot;:&quot;ms&quot;,&quot;size&quot;:400,&quot;sizes&quot;:[]}}" data-widget_type="nested-accordion.default">
				<div class="elementor-widget-container">
					<div class="e-n-accordion" aria-label="Accordion. Open links with Enter or Space, close with Escape, and navigate with Arrow Keys">
						<details id="e-n-accordion-item-4550" class="e-n-accordion-item" >
				<summary class="e-n-accordion-item-title" data-accordion-index="1" tabindex="0" aria-expanded="false" aria-controls="e-n-accordion-item-4550" >
					<span class='e-n-accordion-item-title-header'><div class="e-n-accordion-item-title-text"> About Bloomreach </div></span>
							<span class='e-n-accordion-item-title-icon'>
			<span class='e-opened' ><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"><g clip-path="url(#clip0_627_2295)"><path d="M12.9766 18.1641L20.4766 10.6641C20.8672 10.3125 20.8672 9.72656 20.4766 9.33594C20.125 8.98438 19.5391 8.98438 19.1484 9.33594L12.3125 16.2109L5.47656 9.375C5.125 8.98438 4.53906 8.98438 4.14844 9.375C3.79688 9.72656 3.79688 10.3125 4.14844 10.6641L11.6875 18.1641C12.0391 18.5547 12.625 18.5547 12.9766 18.1641Z" fill="#002840" fill-opacity="0.5"></path></g><defs><clipPath id="clip0_627_2295"><rect width="24" height="24" fill="white" transform="matrix(-1 0 0 1 24 0)"></rect></clipPath></defs></svg></span>
			<span class='e-closed'><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"><g clip-path="url(#clip0_627_2295)"><path d="M12.9766 18.1641L20.4766 10.6641C20.8672 10.3125 20.8672 9.72656 20.4766 9.33594C20.125 8.98438 19.5391 8.98438 19.1484 9.33594L12.3125 16.2109L5.47656 9.375C5.125 8.98438 4.53906 8.98438 4.14844 9.375C3.79688 9.72656 3.79688 10.3125 4.14844 10.6641L11.6875 18.1641C12.0391 18.5547 12.625 18.5547 12.9766 18.1641Z" fill="#002840" fill-opacity="0.5"></path></g><defs><clipPath id="clip0_627_2295"><rect width="24" height="24" fill="white" transform="matrix(-1 0 0 1 24 0)"></rect></clipPath></defs></svg></span>
		</span>

						</summary>
				<div role="region" aria-labelledby="e-n-accordion-item-4550" class="elementor-element elementor-element-69e0c0b9 e-con-full e-flex e-con e-child" data-id="69e0c0b9" data-element_type="container">
				<div class="elementor-element elementor-element-19154254 elementor-nav-menu--dropdown-none wp_menu elementor-widget elementor-widget-nav-menu" data-id="19154254" data-element_type="widget" data-settings="{&quot;layout&quot;:&quot;vertical&quot;,&quot;submenu_icon&quot;:{&quot;value&quot;:&quot;&lt;i class=\&quot;\&quot;&gt;&lt;\/i&gt;&quot;,&quot;library&quot;:&quot;&quot;}}" data-widget_type="nav-menu.default">
				<div class="elementor-widget-container">
						<nav aria-label="Menu" class="elementor-nav-menu--main elementor-nav-menu__container elementor-nav-menu--layout-vertical e--pointer-none">
				<ul id="menu-1-19154254" class="elementor-nav-menu sm-vertical"><li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-793"><a href="/en/about-us" class="elementor-item">Our Story</a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-32973"><a href="https://www.bloomreach.com/en/about-us/leadership-team" class="elementor-item">Leadership Team</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-55278"><a href="/en/about-us/impact" class="elementor-item">ESG at Bloomreach</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-60652"><a href="/en/about-us/compliance" class="elementor-item">Compliance</a></li>
<li class="add-careers-counter menu-item menu-item-type-custom menu-item-object-custom menu-item-791"><a href="/en/careers" class="elementor-item">Careers</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-794"><a href="/en/contact-us" class="elementor-item">Contact Us</a></li>
</ul>			</nav>
						<nav class="elementor-nav-menu--dropdown elementor-nav-menu__container" aria-hidden="true">
				<ul id="menu-2-19154254" class="elementor-nav-menu sm-vertical"><li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-793"><a href="/en/about-us" class="elementor-item" tabindex="-1">Our Story</a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-32973"><a href="https://www.bloomreach.com/en/about-us/leadership-team" class="elementor-item" tabindex="-1">Leadership Team</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-55278"><a href="/en/about-us/impact" class="elementor-item" tabindex="-1">ESG at Bloomreach</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-60652"><a href="/en/about-us/compliance" class="elementor-item" tabindex="-1">Compliance</a></li>
<li class="add-careers-counter menu-item menu-item-type-custom menu-item-object-custom menu-item-791"><a href="/en/careers" class="elementor-item" tabindex="-1">Careers</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-794"><a href="/en/contact-us" class="elementor-item" tabindex="-1">Contact Us</a></li>
</ul>			</nav>
				</div>
				</div>
				</div>
					</details>
						<details id="e-n-accordion-item-4551" class="e-n-accordion-item" >
				<summary class="e-n-accordion-item-title" data-accordion-index="2" tabindex="-1" aria-expanded="false" aria-controls="e-n-accordion-item-4551" >
					<span class='e-n-accordion-item-title-header'><div class="e-n-accordion-item-title-text"> Innovation Hub </div></span>
							<span class='e-n-accordion-item-title-icon'>
			<span class='e-opened' ><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"><g clip-path="url(#clip0_627_2295)"><path d="M12.9766 18.1641L20.4766 10.6641C20.8672 10.3125 20.8672 9.72656 20.4766 9.33594C20.125 8.98438 19.5391 8.98438 19.1484 9.33594L12.3125 16.2109L5.47656 9.375C5.125 8.98438 4.53906 8.98438 4.14844 9.375C3.79688 9.72656 3.79688 10.3125 4.14844 10.6641L11.6875 18.1641C12.0391 18.5547 12.625 18.5547 12.9766 18.1641Z" fill="#002840" fill-opacity="0.5"></path></g><defs><clipPath id="clip0_627_2295"><rect width="24" height="24" fill="white" transform="matrix(-1 0 0 1 24 0)"></rect></clipPath></defs></svg></span>
			<span class='e-closed'><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"><g clip-path="url(#clip0_627_2295)"><path d="M12.9766 18.1641L20.4766 10.6641C20.8672 10.3125 20.8672 9.72656 20.4766 9.33594C20.125 8.98438 19.5391 8.98438 19.1484 9.33594L12.3125 16.2109L5.47656 9.375C5.125 8.98438 4.53906 8.98438 4.14844 9.375C3.79688 9.72656 3.79688 10.3125 4.14844 10.6641L11.6875 18.1641C12.0391 18.5547 12.625 18.5547 12.9766 18.1641Z" fill="#002840" fill-opacity="0.5"></path></g><defs><clipPath id="clip0_627_2295"><rect width="24" height="24" fill="white" transform="matrix(-1 0 0 1 24 0)"></rect></clipPath></defs></svg></span>
		</span>

						</summary>
				<div role="region" aria-labelledby="e-n-accordion-item-4551" class="elementor-element elementor-element-7e88f02c e-con-full e-flex e-con e-child" data-id="7e88f02c" data-element_type="container">
				<div class="elementor-element elementor-element-7bc1ce63 elementor-nav-menu--dropdown-none wp_menu elementor-widget elementor-widget-nav-menu" data-id="7bc1ce63" data-element_type="widget" data-settings="{&quot;layout&quot;:&quot;vertical&quot;,&quot;submenu_icon&quot;:{&quot;value&quot;:&quot;&lt;i class=\&quot;\&quot;&gt;&lt;\/i&gt;&quot;,&quot;library&quot;:&quot;&quot;}}" data-widget_type="nav-menu.default">
				<div class="elementor-widget-container">
						<nav aria-label="Menu" class="elementor-nav-menu--main elementor-nav-menu__container elementor-nav-menu--layout-vertical e--pointer-none">
				<ul id="menu-1-7bc1ce63" class="elementor-nav-menu sm-vertical"><li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-796"><a href="/en/products/engagement/roadmap" class="elementor-item">What’s New in Marketing Automation</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-797"><a href="/en/products/discovery/whats-new" class="elementor-item">What’s New in Product Discovery</a></li>
</ul>			</nav>
						<nav class="elementor-nav-menu--dropdown elementor-nav-menu__container" aria-hidden="true">
				<ul id="menu-2-7bc1ce63" class="elementor-nav-menu sm-vertical"><li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-796"><a href="/en/products/engagement/roadmap" class="elementor-item" tabindex="-1">What’s New in Marketing Automation</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-797"><a href="/en/products/discovery/whats-new" class="elementor-item" tabindex="-1">What’s New in Product Discovery</a></li>
</ul>			</nav>
				</div>
				</div>
				</div>
					</details>
					</div>
				</div>
				</div>
				</div>
		<div class="elementor-element elementor-element-9bfd3fc e-con-full e-flex e-con e-child" data-id="9bfd3fc" data-element_type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
				<div class="elementor-element elementor-element-b45fc8f elementor-widget-mobile__width-inherit elementor-widget__width-initial elementor-widget elementor-widget-vidyard_widget" data-id="b45fc8f" data-element_type="widget" data-widget_type="vidyard_widget.default">
				<div class="elementor-widget-container">
			<img style="width: 100%; margin: auto; display: block;" class="vidyard-player-embed" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%200%200'%3E%3C/svg%3E" data-uuid="N5zsgJDiefaCSWBvrBsApy" data-v="4" data-type="lightbox" data-lazy-src="https://play.vidyard.com/N5zsgJDiefaCSWBvrBsApy.jpg"/><noscript><img style="width: 100%; margin: auto; display: block;" class="vidyard-player-embed" src="https://play.vidyard.com/N5zsgJDiefaCSWBvrBsApy.jpg" data-uuid="N5zsgJDiefaCSWBvrBsApy" data-v="4" data-type="lightbox"/></noscript><script type="rocketlazyloadscript">window.vidyardEmbed.api.renderDOMPlayers()</script>		</div>
				</div>
		<div class="elementor-element elementor-element-be7ff94 e-con-full e-flex e-con e-child" data-id="be7ff94" data-element_type="container">
				<div class="elementor-element elementor-element-9ad6977 elementor-widget__width-inherit elementor-widget elementor-widget-heading" data-id="9ad6977" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<p class="elementor-heading-title elementor-size-default">Life With Bloomreach</p>		</div>
				</div>
				<div class="elementor-element elementor-element-e9d658e elementor-widget elementor-widget-text-editor" data-id="e9d658e" data-element_type="widget" data-widget_type="text-editor.default">
				<div class="elementor-widget-container">
							<p>Watch this video to learn what your life could look like when you use Bloomreach.</p>						</div>
				</div>
				</div>
				</div>
				</div>
				</div>
				</div>
				</div>
				<div data-elementor-type="popup" data-elementor-id="1024" class="elementor elementor-1024 elementor-location-popup" data-elementor-settings="{&quot;entrance_animation&quot;:&quot;slideInRight&quot;,&quot;exit_animation&quot;:&quot;slideInRight&quot;,&quot;entrance_animation_duration&quot;:{&quot;unit&quot;:&quot;px&quot;,&quot;size&quot;:0.4,&quot;sizes&quot;:[]},&quot;prevent_scroll&quot;:&quot;yes&quot;,&quot;classes&quot;:&quot;mobile_menu_popup&quot;,&quot;a11y_navigation&quot;:&quot;yes&quot;,&quot;triggers&quot;:[],&quot;timing&quot;:[]}" data-elementor-post-type="elementor_library">
			<div  class="elementor-element elementor-element-2c3f059e e-con-full mobile_menu_section e-flex e-con e-parent" data-id="2c3f059e" data-element_type="container">
		<div  class="elementor-element elementor-element-58df7303 e-con-full e-flex e-con e-child" data-id="58df7303" data-element_type="container">
				<div class="elementor-element elementor-element-319b0c6 close_popup elementor-widget elementor-widget-heading" data-id="319b0c6" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<div class="elementor-heading-title elementor-size-default"><a href="#">Back</a></div>		</div>
				</div>
		<div class="elementor-element elementor-element-93f1887 e-con-full e-flex e-con e-child" data-id="93f1887" data-element_type="container">
		<div class="elementor-element elementor-element-6be2f26 e-con-full e-flex e-con e-child" data-id="6be2f26" data-element_type="container">
				<div class="elementor-element elementor-element-891ab34 elementor-widget elementor-widget-heading" data-id="891ab34" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<p class="elementor-heading-title elementor-size-default">Products</p>		</div>
				</div>
				<div class="elementor-element elementor-element-7f1e23f elementor-widget elementor-widget-n-accordion" data-id="7f1e23f" data-element_type="widget" data-settings="{&quot;default_state&quot;:&quot;all_collapsed&quot;,&quot;max_items_expended&quot;:&quot;one&quot;,&quot;n_accordion_animation_duration&quot;:{&quot;unit&quot;:&quot;ms&quot;,&quot;size&quot;:400,&quot;sizes&quot;:[]}}" data-widget_type="nested-accordion.default">
				<div class="elementor-widget-container">
					<div class="e-n-accordion" aria-label="Accordion. Open links with Enter or Space, close with Escape, and navigate with Arrow Keys">
						<details id="e-n-accordion-item-1330" class="e-n-accordion-item" >
				<summary class="e-n-accordion-item-title" data-accordion-index="1" tabindex="0" aria-expanded="false" aria-controls="e-n-accordion-item-1330" >
					<span class='e-n-accordion-item-title-header'><div class="e-n-accordion-item-title-text"> For Marketers </div></span>
							<span class='e-n-accordion-item-title-icon'>
			<span class='e-opened' ><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"><g clip-path="url(#clip0_627_2295)"><path d="M12.9766 18.1641L20.4766 10.6641C20.8672 10.3125 20.8672 9.72656 20.4766 9.33594C20.125 8.98438 19.5391 8.98438 19.1484 9.33594L12.3125 16.2109L5.47656 9.375C5.125 8.98438 4.53906 8.98438 4.14844 9.375C3.79688 9.72656 3.79688 10.3125 4.14844 10.6641L11.6875 18.1641C12.0391 18.5547 12.625 18.5547 12.9766 18.1641Z" fill="#002840" fill-opacity="0.5"></path></g><defs><clipPath id="clip0_627_2295"><rect width="24" height="24" fill="white" transform="matrix(-1 0 0 1 24 0)"></rect></clipPath></defs></svg></span>
			<span class='e-closed'><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"><g clip-path="url(#clip0_627_2295)"><path d="M12.9766 18.1641L20.4766 10.6641C20.8672 10.3125 20.8672 9.72656 20.4766 9.33594C20.125 8.98438 19.5391 8.98438 19.1484 9.33594L12.3125 16.2109L5.47656 9.375C5.125 8.98438 4.53906 8.98438 4.14844 9.375C3.79688 9.72656 3.79688 10.3125 4.14844 10.6641L11.6875 18.1641C12.0391 18.5547 12.625 18.5547 12.9766 18.1641Z" fill="#002840" fill-opacity="0.5"></path></g><defs><clipPath id="clip0_627_2295"><rect width="24" height="24" fill="white" transform="matrix(-1 0 0 1 24 0)"></rect></clipPath></defs></svg></span>
		</span>

						</summary>
				<div role="region" aria-labelledby="e-n-accordion-item-1330" class="elementor-element elementor-element-087f997 e-con-full e-flex e-con e-child" data-id="087f997" data-element_type="container">
				<div class="elementor-element elementor-element-e545eac elementor-nav-menu--dropdown-none wp_menu elementor-widget elementor-widget-nav-menu" data-id="e545eac" data-element_type="widget" data-settings="{&quot;layout&quot;:&quot;vertical&quot;,&quot;submenu_icon&quot;:{&quot;value&quot;:&quot;&lt;i class=\&quot;\&quot;&gt;&lt;\/i&gt;&quot;,&quot;library&quot;:&quot;&quot;}}" data-widget_type="nav-menu.default">
				<div class="elementor-widget-container">
						<nav aria-label="Menu" class="elementor-nav-menu--main elementor-nav-menu__container elementor-nav-menu--layout-vertical e--pointer-none">
				<ul id="menu-1-e545eac" class="elementor-nav-menu sm-vertical"><li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-106"><a href="/en/products/engagement/email-marketing" class="elementor-item">Email Marketing<span class="menu-icon" ><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewBox="0 0 16 16">
  <defs>
    <clipPath id="clip-web_email_mktg">
      <rect width="16" height="16"/>
    </clipPath>
  </defs>
  <g id="web_email_mktg" data-name="web_email mktg" clip-path="url(#clip-web_email_mktg)">
    <g id="email-action-unread" transform="translate(-0.754 -1.868)">
      <path id="Path_3152" data-name="Path 3152" d="M2.35,15.736a1.6,1.6,0,0,1-1.6-1.6V5.6a1.579,1.579,0,0,1,.338-.981L1.1,4.6,1.12,4.58A1.6,1.6,0,0,1,2.35,4h12.8a1.6,1.6,0,0,1,1.231.579A.169.169,0,0,1,16.4,4.6l.013.019a1.58,1.58,0,0,1,.338.98v8.535a1.6,1.6,0,0,1-1.6,1.6Zm-.534-1.6a.534.534,0,0,0,.534.534h12.8a.534.534,0,0,0,.534-.534V5.822L10.512,9.8a2.888,2.888,0,0,1-3.519,0L1.817,5.822ZM7.642,8.956a1.82,1.82,0,0,0,2.218,0l5.058-3.89H2.584Z" transform="translate(0 0)" fill="none"/>
    </g>
  </g>
</svg>
</span></a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-154"><a href="/en/products/engagement/sms-messaging" class="elementor-item">SMS, RCS &#038; WhatsApp<span class="menu-icon" ><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewBox="0 0 16 16">
  <defs>
    <clipPath id="clip-web_sms-messaging">
      <rect width="16" height="16"/>
    </clipPath>
  </defs>
  <g id="web_sms-messaging" clip-path="url(#clip-web_sms-messaging)">
    <g id="phone-chatting" transform="translate(0.25)">
      <path id="Path_3153" data-name="Path 3153" d="M6.071,16a2.324,2.324,0,0,1-2.322-2.32V6.227L3.518,6H2.829A2.081,2.081,0,0,1,.75,3.922V2.079A2.081,2.081,0,0,1,2.829,0H7.171A2.081,2.081,0,0,1,9.25,2.079V3.921A2.082,2.082,0,0,1,7.171,6H6.25V7.5a.5.5,0,0,1-.852.356l-.65-.64V12h7V8.722L10.6,9.856A.5.5,0,0,1,9.748,9.5V8H9.327a2.085,2.085,0,0,1-1.468-.618.5.5,0,1,1,.709-.7A1.077,1.077,0,0,0,9.327,7h.923a.5.5,0,0,1,.5.5v.8l1.172-1.156A.5.5,0,0,1,12.274,7h1.4a1.081,1.081,0,0,0,1.079-1.079V3.583A1.081,1.081,0,0,0,13.67,2.5H11.249a.5.5,0,1,1,0-1H13.67a2.082,2.082,0,0,1,2.078,2.079V5.921A2.082,2.082,0,0,1,13.67,8H12.75v4.483a.226.226,0,0,1,0,.035v1.161A2.324,2.324,0,0,1,10.426,16ZM4.75,13.679A1.323,1.323,0,0,0,6.071,15h4.356a1.324,1.324,0,0,0,1.322-1.321V13h-7ZM2.829,1A1.081,1.081,0,0,0,1.75,2.079V3.921A1.08,1.08,0,0,0,2.828,5h.9a.5.5,0,0,1,.352.144L5.251,6.3V5.5a.5.5,0,0,1,.5-.5H7.173A1.081,1.081,0,0,0,8.251,3.921V2.079A1.081,1.081,0,0,0,7.171,1Z" transform="translate(0)" fill="none"/>
      <circle id="Ellipse_87" data-name="Ellipse 87" cx="0.75" cy="0.75" r="0.75" transform="translate(9.75 4)" fill="none"/>
      <circle id="Ellipse_88" data-name="Ellipse 88" cx="0.75" cy="0.75" r="0.75" transform="translate(12.25 4)" fill="none"/>
      <circle id="Ellipse_89" data-name="Ellipse 89" cx="0.75" cy="0.75" r="0.75" transform="translate(5.583 2.5)" fill="none"/>
      <path id="Path_3154" data-name="Path 3154" d="M4.745,5.25a.749.749,0,0,1-.076-1.5.561.561,0,0,1,.076,0h.083a.749.749,0,0,1-.083,1.5Z" transform="translate(-1.081 -1.25)" fill="none"/>
    </g>
  </g>
</svg>
</span></a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-155"><a href="/en/products/engagement/web-personalization" class="elementor-item">Web Personalization<span class="menu-icon" ><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewBox="0 0 16 16">
  <defs>
    <clipPath id="clip-web_web_personalization">
      <rect width="16" height="16"/>
    </clipPath>
  </defs>
  <g id="web_web_personalization" data-name="web_web personalization" clip-path="url(#clip-web_web_personalization)">
    <g id="browser-page-layout" transform="translate(-0.754 -0.97)">
      <path id="Path_3170" data-name="Path 3170" d="M2.35,16.44a1.6,1.6,0,0,1-1.6-1.6V3.1a1.6,1.6,0,0,1,1.6-1.6H15.158a1.6,1.6,0,0,1,1.6,1.6V14.84a1.6,1.6,0,0,1-1.6,1.6Zm12.807-1.072a.534.534,0,0,0,.534-.534V11.1H7.154v4.264ZM1.818,14.84a.534.534,0,0,0,.534.534H6.088V5.768H1.818Zm13.869-4.8V5.768H7.154v4.268Zm0-5.336V3.1a.534.534,0,0,0-.534-.534H2.35a.534.534,0,0,0-.533.534v1.6Z" transform="translate(0 0)" fill="none"/>
    </g>
  </g>
</svg>
</span></a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-156"><a href="/en/products/engagement/mobile-app-marketing" class="elementor-item">Mobile App<span class="menu-icon" ><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewBox="0 0 16 16">
  <defs>
    <clipPath id="clip-web_mobile_app">
      <rect width="16" height="16"/>
    </clipPath>
  </defs>
  <g id="web_mobile_app" data-name="web_mobile app" clip-path="url(#clip-web_mobile_app)">
    <g id="mobile-phone" transform="translate(-1.5)">
      <path id="Path_3155" data-name="Path 3155" d="M7,16a2.5,2.5,0,0,1-2.5-2.5V2.5A2.5,2.5,0,0,1,7,0h5a2.5,2.5,0,0,1,2.5,2.5v11A2.5,2.5,0,0,1,12,16ZM5.5,13.5A1.5,1.5,0,0,0,7,15h5a1.5,1.5,0,0,0,1.5-1.5V13h-8Zm8-1.5V2.5A1.5,1.5,0,0,0,12,1H7A1.5,1.5,0,0,0,5.5,2.5V12Z" fill="none"/>
    </g>
  </g>
</svg>
</span></a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-157"><a href="/en/products/engagement/ads-retargeting" class="elementor-item">Ad Optimization<span class="menu-icon" ><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewBox="0 0 16 16">
  <defs>
    <clipPath id="clip-web_ads-retargeting">
      <rect width="16" height="16"/>
    </clipPath>
  </defs>
  <g id="web_ads-retargeting" clip-path="url(#clip-web_ads-retargeting)">
    <g id="ads-retargeting" transform="translate(0.5 0.5)">
      <path id="Path_3156" data-name="Path 3156" d="M4.217,12.279a1.411,1.411,0,0,1-1.325-.942H1.4A1.412,1.412,0,0,1,0,9.924V2.362A1.412,1.412,0,0,1,1.4.942H2.888A1.411,1.411,0,0,1,4.217,0h6.559A1.411,1.411,0,0,1,12.1.942h1.486a1.412,1.412,0,0,1,1.4,1.413V9.911a.467.467,0,1,1-.935,0V2.362a.469.469,0,0,0-.467-.471h-1.4V8.475a.467.467,0,1,1-.935,0V1.413a.469.469,0,0,0-.467-.471H4.217a.469.469,0,0,0-.467.471v9.449a.469.469,0,0,0,.467.471H8.8a.471.471,0,0,1,0,.942ZM1.4,1.889a.469.469,0,0,0-.467.471V9.916a.469.469,0,0,0,.467.471H2.8v-8.5Z" transform="translate(0)" fill="none"/>
      <path id="Path_3157" data-name="Path 3157" d="M7.952,4.657a.452.452,0,0,1,0-.9h4.532a.452.452,0,1,1,0,.9Z" transform="translate(-2.722 -1.401)" fill="none"/>
      <path id="Path_3158" data-name="Path 3158" d="M7.952,8.4a.452.452,0,0,1,0-.9h4.532a.452.452,0,0,1,0,.9Z" transform="translate(-2.722 -2.803)" fill="none"/>
      <path id="Path_3159" data-name="Path 3159" d="M7.952,12.157a.452.452,0,1,1,0-.9H9.764a.452.452,0,1,1,0,.9Z" transform="translate(-2.779 -4.205)" fill="none"/>
      <path id="Path_3160" data-name="Path 3160" d="M20.224,20.677a.452.452,0,0,1-.32-.133l-1.192-1.192-.662,1.1a.452.452,0,0,1-.389.221h-.04a.452.452,0,0,1-.383-.289l-1.6-4.165a.452.452,0,0,1,.586-.586l4.168,1.6a.452.452,0,0,1,.07.813l-1.1.662,1.192,1.192a.452.452,0,0,1-.321.774Zm-2.474-1.483.484-.805a.433.433,0,0,1,.063-.082l.01-.01a.437.437,0,0,1,.083-.063l.805-.484-2.35-.9Z" transform="translate(-5.685 -5.68)" fill="none"/>
    </g>
  </g>
</svg>
</span></a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-158"><a href="/en/products/engagement/experiments-ab-testing" class="elementor-item">Testing &#038; Optimization<span class="menu-icon" ><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewBox="0 0 16 16">
  <defs>
    <clipPath id="clip-web_ab_test">
      <rect width="16" height="16"/>
    </clipPath>
  </defs>
  <g id="web_ab_test" data-name="web_ab test" clip-path="url(#clip-web_ab_test)">
    <g id="experiments_ab-testing_icon" transform="translate(-975.001 -522.932)">
      <path id="Path_5" data-name="Path 5" d="M10.718,16.747a1.6,1.6,0,0,1-1.6-1.6V2.347a1.6,1.6,0,0,1,1.6-1.6H14.9a1.6,1.6,0,0,1,1.6,1.6v12.8a1.6,1.6,0,0,1-1.6,1.6Z" transform="translate(974.502 522.185)" fill="none"/>
      <path id="Path_6" data-name="Path 6" d="M10.718,16.747a1.6,1.6,0,0,1-1.6-1.6V2.347a1.6,1.6,0,0,1,1.6-1.6H14.9a1.6,1.6,0,0,1,1.6,1.6v12.8a1.6,1.6,0,0,1-1.6,1.6ZM14.9,15.68a.534.534,0,0,0,.534-.534V2.347a.534.534,0,0,0-.534-.534H11.119V15.681ZM10.718,1.814a.534.534,0,0,0-.534.534v12.8a.534.534,0,0,0,.534.534h.4V1.814Z" transform="translate(965.883 522.185)" fill="none"/>
    </g>
  </g>
</svg>
</span></a></li>
</ul>			</nav>
						<nav class="elementor-nav-menu--dropdown elementor-nav-menu__container" aria-hidden="true">
				<ul id="menu-2-e545eac" class="elementor-nav-menu sm-vertical"><li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-106"><a href="/en/products/engagement/email-marketing" class="elementor-item" tabindex="-1">Email Marketing<span class="menu-icon" ><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewBox="0 0 16 16">
  <defs>
    <clipPath id="clip-web_email_mktg">
      <rect width="16" height="16"/>
    </clipPath>
  </defs>
  <g id="web_email_mktg" data-name="web_email mktg" clip-path="url(#clip-web_email_mktg)">
    <g id="email-action-unread" transform="translate(-0.754 -1.868)">
      <path id="Path_3152" data-name="Path 3152" d="M2.35,15.736a1.6,1.6,0,0,1-1.6-1.6V5.6a1.579,1.579,0,0,1,.338-.981L1.1,4.6,1.12,4.58A1.6,1.6,0,0,1,2.35,4h12.8a1.6,1.6,0,0,1,1.231.579A.169.169,0,0,1,16.4,4.6l.013.019a1.58,1.58,0,0,1,.338.98v8.535a1.6,1.6,0,0,1-1.6,1.6Zm-.534-1.6a.534.534,0,0,0,.534.534h12.8a.534.534,0,0,0,.534-.534V5.822L10.512,9.8a2.888,2.888,0,0,1-3.519,0L1.817,5.822ZM7.642,8.956a1.82,1.82,0,0,0,2.218,0l5.058-3.89H2.584Z" transform="translate(0 0)" fill="none"/>
    </g>
  </g>
</svg>
</span></a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-154"><a href="/en/products/engagement/sms-messaging" class="elementor-item" tabindex="-1">SMS, RCS &#038; WhatsApp<span class="menu-icon" ><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewBox="0 0 16 16">
  <defs>
    <clipPath id="clip-web_sms-messaging">
      <rect width="16" height="16"/>
    </clipPath>
  </defs>
  <g id="web_sms-messaging" clip-path="url(#clip-web_sms-messaging)">
    <g id="phone-chatting" transform="translate(0.25)">
      <path id="Path_3153" data-name="Path 3153" d="M6.071,16a2.324,2.324,0,0,1-2.322-2.32V6.227L3.518,6H2.829A2.081,2.081,0,0,1,.75,3.922V2.079A2.081,2.081,0,0,1,2.829,0H7.171A2.081,2.081,0,0,1,9.25,2.079V3.921A2.082,2.082,0,0,1,7.171,6H6.25V7.5a.5.5,0,0,1-.852.356l-.65-.64V12h7V8.722L10.6,9.856A.5.5,0,0,1,9.748,9.5V8H9.327a2.085,2.085,0,0,1-1.468-.618.5.5,0,1,1,.709-.7A1.077,1.077,0,0,0,9.327,7h.923a.5.5,0,0,1,.5.5v.8l1.172-1.156A.5.5,0,0,1,12.274,7h1.4a1.081,1.081,0,0,0,1.079-1.079V3.583A1.081,1.081,0,0,0,13.67,2.5H11.249a.5.5,0,1,1,0-1H13.67a2.082,2.082,0,0,1,2.078,2.079V5.921A2.082,2.082,0,0,1,13.67,8H12.75v4.483a.226.226,0,0,1,0,.035v1.161A2.324,2.324,0,0,1,10.426,16ZM4.75,13.679A1.323,1.323,0,0,0,6.071,15h4.356a1.324,1.324,0,0,0,1.322-1.321V13h-7ZM2.829,1A1.081,1.081,0,0,0,1.75,2.079V3.921A1.08,1.08,0,0,0,2.828,5h.9a.5.5,0,0,1,.352.144L5.251,6.3V5.5a.5.5,0,0,1,.5-.5H7.173A1.081,1.081,0,0,0,8.251,3.921V2.079A1.081,1.081,0,0,0,7.171,1Z" transform="translate(0)" fill="none"/>
      <circle id="Ellipse_87" data-name="Ellipse 87" cx="0.75" cy="0.75" r="0.75" transform="translate(9.75 4)" fill="none"/>
      <circle id="Ellipse_88" data-name="Ellipse 88" cx="0.75" cy="0.75" r="0.75" transform="translate(12.25 4)" fill="none"/>
      <circle id="Ellipse_89" data-name="Ellipse 89" cx="0.75" cy="0.75" r="0.75" transform="translate(5.583 2.5)" fill="none"/>
      <path id="Path_3154" data-name="Path 3154" d="M4.745,5.25a.749.749,0,0,1-.076-1.5.561.561,0,0,1,.076,0h.083a.749.749,0,0,1-.083,1.5Z" transform="translate(-1.081 -1.25)" fill="none"/>
    </g>
  </g>
</svg>
</span></a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-155"><a href="/en/products/engagement/web-personalization" class="elementor-item" tabindex="-1">Web Personalization<span class="menu-icon" ><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewBox="0 0 16 16">
  <defs>
    <clipPath id="clip-web_web_personalization">
      <rect width="16" height="16"/>
    </clipPath>
  </defs>
  <g id="web_web_personalization" data-name="web_web personalization" clip-path="url(#clip-web_web_personalization)">
    <g id="browser-page-layout" transform="translate(-0.754 -0.97)">
      <path id="Path_3170" data-name="Path 3170" d="M2.35,16.44a1.6,1.6,0,0,1-1.6-1.6V3.1a1.6,1.6,0,0,1,1.6-1.6H15.158a1.6,1.6,0,0,1,1.6,1.6V14.84a1.6,1.6,0,0,1-1.6,1.6Zm12.807-1.072a.534.534,0,0,0,.534-.534V11.1H7.154v4.264ZM1.818,14.84a.534.534,0,0,0,.534.534H6.088V5.768H1.818Zm13.869-4.8V5.768H7.154v4.268Zm0-5.336V3.1a.534.534,0,0,0-.534-.534H2.35a.534.534,0,0,0-.533.534v1.6Z" transform="translate(0 0)" fill="none"/>
    </g>
  </g>
</svg>
</span></a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-156"><a href="/en/products/engagement/mobile-app-marketing" class="elementor-item" tabindex="-1">Mobile App<span class="menu-icon" ><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewBox="0 0 16 16">
  <defs>
    <clipPath id="clip-web_mobile_app">
      <rect width="16" height="16"/>
    </clipPath>
  </defs>
  <g id="web_mobile_app" data-name="web_mobile app" clip-path="url(#clip-web_mobile_app)">
    <g id="mobile-phone" transform="translate(-1.5)">
      <path id="Path_3155" data-name="Path 3155" d="M7,16a2.5,2.5,0,0,1-2.5-2.5V2.5A2.5,2.5,0,0,1,7,0h5a2.5,2.5,0,0,1,2.5,2.5v11A2.5,2.5,0,0,1,12,16ZM5.5,13.5A1.5,1.5,0,0,0,7,15h5a1.5,1.5,0,0,0,1.5-1.5V13h-8Zm8-1.5V2.5A1.5,1.5,0,0,0,12,1H7A1.5,1.5,0,0,0,5.5,2.5V12Z" fill="none"/>
    </g>
  </g>
</svg>
</span></a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-157"><a href="/en/products/engagement/ads-retargeting" class="elementor-item" tabindex="-1">Ad Optimization<span class="menu-icon" ><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewBox="0 0 16 16">
  <defs>
    <clipPath id="clip-web_ads-retargeting">
      <rect width="16" height="16"/>
    </clipPath>
  </defs>
  <g id="web_ads-retargeting" clip-path="url(#clip-web_ads-retargeting)">
    <g id="ads-retargeting" transform="translate(0.5 0.5)">
      <path id="Path_3156" data-name="Path 3156" d="M4.217,12.279a1.411,1.411,0,0,1-1.325-.942H1.4A1.412,1.412,0,0,1,0,9.924V2.362A1.412,1.412,0,0,1,1.4.942H2.888A1.411,1.411,0,0,1,4.217,0h6.559A1.411,1.411,0,0,1,12.1.942h1.486a1.412,1.412,0,0,1,1.4,1.413V9.911a.467.467,0,1,1-.935,0V2.362a.469.469,0,0,0-.467-.471h-1.4V8.475a.467.467,0,1,1-.935,0V1.413a.469.469,0,0,0-.467-.471H4.217a.469.469,0,0,0-.467.471v9.449a.469.469,0,0,0,.467.471H8.8a.471.471,0,0,1,0,.942ZM1.4,1.889a.469.469,0,0,0-.467.471V9.916a.469.469,0,0,0,.467.471H2.8v-8.5Z" transform="translate(0)" fill="none"/>
      <path id="Path_3157" data-name="Path 3157" d="M7.952,4.657a.452.452,0,0,1,0-.9h4.532a.452.452,0,1,1,0,.9Z" transform="translate(-2.722 -1.401)" fill="none"/>
      <path id="Path_3158" data-name="Path 3158" d="M7.952,8.4a.452.452,0,0,1,0-.9h4.532a.452.452,0,0,1,0,.9Z" transform="translate(-2.722 -2.803)" fill="none"/>
      <path id="Path_3159" data-name="Path 3159" d="M7.952,12.157a.452.452,0,1,1,0-.9H9.764a.452.452,0,1,1,0,.9Z" transform="translate(-2.779 -4.205)" fill="none"/>
      <path id="Path_3160" data-name="Path 3160" d="M20.224,20.677a.452.452,0,0,1-.32-.133l-1.192-1.192-.662,1.1a.452.452,0,0,1-.389.221h-.04a.452.452,0,0,1-.383-.289l-1.6-4.165a.452.452,0,0,1,.586-.586l4.168,1.6a.452.452,0,0,1,.07.813l-1.1.662,1.192,1.192a.452.452,0,0,1-.321.774Zm-2.474-1.483.484-.805a.433.433,0,0,1,.063-.082l.01-.01a.437.437,0,0,1,.083-.063l.805-.484-2.35-.9Z" transform="translate(-5.685 -5.68)" fill="none"/>
    </g>
  </g>
</svg>
</span></a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-158"><a href="/en/products/engagement/experiments-ab-testing" class="elementor-item" tabindex="-1">Testing &#038; Optimization<span class="menu-icon" ><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewBox="0 0 16 16">
  <defs>
    <clipPath id="clip-web_ab_test">
      <rect width="16" height="16"/>
    </clipPath>
  </defs>
  <g id="web_ab_test" data-name="web_ab test" clip-path="url(#clip-web_ab_test)">
    <g id="experiments_ab-testing_icon" transform="translate(-975.001 -522.932)">
      <path id="Path_5" data-name="Path 5" d="M10.718,16.747a1.6,1.6,0,0,1-1.6-1.6V2.347a1.6,1.6,0,0,1,1.6-1.6H14.9a1.6,1.6,0,0,1,1.6,1.6v12.8a1.6,1.6,0,0,1-1.6,1.6Z" transform="translate(974.502 522.185)" fill="none"/>
      <path id="Path_6" data-name="Path 6" d="M10.718,16.747a1.6,1.6,0,0,1-1.6-1.6V2.347a1.6,1.6,0,0,1,1.6-1.6H14.9a1.6,1.6,0,0,1,1.6,1.6v12.8a1.6,1.6,0,0,1-1.6,1.6ZM14.9,15.68a.534.534,0,0,0,.534-.534V2.347a.534.534,0,0,0-.534-.534H11.119V15.681ZM10.718,1.814a.534.534,0,0,0-.534.534v12.8a.534.534,0,0,0,.534.534h.4V1.814Z" transform="translate(965.883 522.185)" fill="none"/>
    </g>
  </g>
</svg>
</span></a></li>
</ul>			</nav>
				</div>
				</div>
				</div>
					</details>
						<details id="e-n-accordion-item-1331" class="e-n-accordion-item" >
				<summary class="e-n-accordion-item-title" data-accordion-index="2" tabindex="-1" aria-expanded="false" aria-controls="e-n-accordion-item-1331" >
					<span class='e-n-accordion-item-title-header'><div class="e-n-accordion-item-title-text"> For Merchandisers </div></span>
							<span class='e-n-accordion-item-title-icon'>
			<span class='e-opened' ><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"><g clip-path="url(#clip0_627_2295)"><path d="M12.9766 18.1641L20.4766 10.6641C20.8672 10.3125 20.8672 9.72656 20.4766 9.33594C20.125 8.98438 19.5391 8.98438 19.1484 9.33594L12.3125 16.2109L5.47656 9.375C5.125 8.98438 4.53906 8.98438 4.14844 9.375C3.79688 9.72656 3.79688 10.3125 4.14844 10.6641L11.6875 18.1641C12.0391 18.5547 12.625 18.5547 12.9766 18.1641Z" fill="#002840" fill-opacity="0.5"></path></g><defs><clipPath id="clip0_627_2295"><rect width="24" height="24" fill="white" transform="matrix(-1 0 0 1 24 0)"></rect></clipPath></defs></svg></span>
			<span class='e-closed'><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"><g clip-path="url(#clip0_627_2295)"><path d="M12.9766 18.1641L20.4766 10.6641C20.8672 10.3125 20.8672 9.72656 20.4766 9.33594C20.125 8.98438 19.5391 8.98438 19.1484 9.33594L12.3125 16.2109L5.47656 9.375C5.125 8.98438 4.53906 8.98438 4.14844 9.375C3.79688 9.72656 3.79688 10.3125 4.14844 10.6641L11.6875 18.1641C12.0391 18.5547 12.625 18.5547 12.9766 18.1641Z" fill="#002840" fill-opacity="0.5"></path></g><defs><clipPath id="clip0_627_2295"><rect width="24" height="24" fill="white" transform="matrix(-1 0 0 1 24 0)"></rect></clipPath></defs></svg></span>
		</span>

						</summary>
				<div role="region" aria-labelledby="e-n-accordion-item-1331" class="elementor-element elementor-element-ac6c3e3 e-con-full e-flex e-con e-child" data-id="ac6c3e3" data-element_type="container">
				<div class="elementor-element elementor-element-acb83df elementor-nav-menu--dropdown-none wp_menu elementor-widget elementor-widget-nav-menu" data-id="acb83df" data-element_type="widget" data-settings="{&quot;layout&quot;:&quot;vertical&quot;,&quot;submenu_icon&quot;:{&quot;value&quot;:&quot;&lt;i class=\&quot;\&quot;&gt;&lt;\/i&gt;&quot;,&quot;library&quot;:&quot;&quot;}}" data-widget_type="nav-menu.default">
				<div class="elementor-widget-container">
						<nav aria-label="Menu" class="elementor-nav-menu--main elementor-nav-menu__container elementor-nav-menu--layout-vertical e--pointer-none">
				<ul id="menu-1-acb83df" class="elementor-nav-menu sm-vertical"><li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-151"><a href="/en/products/discovery/search-intelligence" class="elementor-item">Ecommerce Search<span class="menu-icon" ><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewBox="0 0 16 16">
  <defs>
    <clipPath id="clip-web_search_apis">
      <rect width="16" height="16"/>
    </clipPath>
  </defs>
  <g id="web_search_apis" data-name="web_search apis" clip-path="url(#clip-web_search_apis)">
    <g id="app-window-search-1" transform="translate(-0.013)">
      <path id="Path_3140" data-name="Path 3140" d="M1.509,14a1.5,1.5,0,0,1-1.5-1.5V1.5A1.5,1.5,0,0,1,1.509,0h12a1.5,1.5,0,0,1,1.5,1.5V5.5a.5.5,0,0,1-1,0v-1.5h-13v8.5a.5.5,0,0,0,.5.5h4a.5.5,0,1,1,0,1ZM14.01,3v-1.5a.5.5,0,0,0-.5-.5h-12a.5.5,0,0,0-.5.5V3Z" fill="none"/>
      <path id="Path_3141" data-name="Path 3141" d="M18.759,19.254a.5.5,0,0,1-.353-.147l-2.194-2.194a4,4,0,1,1,.707-.707L19.113,18.4a.5.5,0,0,1-.354.854Zm-5-8.5a3,3,0,1,0,3,3,3,3,0,0,0-3-3Z" transform="translate(-3.249 -3.254)" fill="none"/>
    </g>
  </g>
</svg>
</span></a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1097"><a href="/en/products/genai-product-discovery/categories" class="elementor-item">Ecommerce Categories<span class="menu-icon" ><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewBox="0 0 16 16">
  <defs>
    <clipPath id="clip-web_merch">
      <rect width="16" height="16"/>
    </clipPath>
  </defs>
  <g id="web_merch" clip-path="url(#clip-web_merch)">
    <g id="phone-action-cart" transform="translate(-9.607 -0.2)">
      <path id="Path_3198" data-name="Path 3198" d="M13.29,12.235a1.556,1.556,0,0,1-1.428-.942l-.013-.033L9.728,5.327a1.557,1.557,0,0,1,1.439-2.153h12.4l.941-2.6a.566.566,0,0,1,1.063.387L24.5,3.922l-.008.022-2.642,7.268A1.566,1.566,0,0,1,20.4,12.239ZM12.9,10.86a.426.426,0,0,0,.386.245H20.4a.428.428,0,0,0,.394-.281L23.159,4.3H11.166a.426.426,0,0,0-.391.594l.013.033Z" transform="translate(0 0)" fill="none"/>
      <path id="Path_3200" data-name="Path 3200" d="M13.67,12.822a1.061,1.061,0,1,1,1.061-1.061A1.061,1.061,0,0,1,13.67,12.822Z" transform="translate(0.965 3.378)" fill="none"/>
      <path id="Path_3202" data-name="Path 3202" d="M17.42,12.822a1.061,1.061,0,1,1,1.061-1.061A1.061,1.061,0,0,1,17.42,12.822Z" transform="translate(2.172 3.378)" fill="none"/>
    </g>
  </g>
</svg>
</span></a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1098"><a href="/en/products/discovery/product-recommendations" class="elementor-item">Recommendations<span class="menu-icon" ><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewBox="0 0 16 16">
  <defs>
    <clipPath id="clip-web_product_recs">
      <rect width="16" height="16"/>
    </clipPath>
  </defs>
  <g id="web_product_recs" data-name="web_product recs" clip-path="url(#clip-web_product_recs)">
    <g id="rating-star" transform="translate(-0.001)">
      <path id="Path_3142" data-name="Path 3142" d="M12.595,16a1.048,1.048,0,0,1-.468-.112L8,13.845,3.875,15.887a1.026,1.026,0,0,1-.464.11A1.042,1.042,0,0,1,2.4,14.689l1.234-4.48L.308,6.913a1.037,1.037,0,0,1,.644-1.77l4.012-.4L7.067.576A1.033,1.033,0,0,1,8.476.12,1.035,1.035,0,0,1,8.93.574L11.038,4.75l4.02.4a1.036,1.036,0,0,1,.636,1.768l-3.326,3.291L13.6,14.684a1.045,1.045,0,0,1-.739,1.279,1.088,1.088,0,0,1-.267.037ZM8,12.787a.5.5,0,0,1,.222.053l4.352,2.154a.047.047,0,0,0,.021.006c.033-.007.047-.031.041-.053l-1.308-4.753a.5.5,0,0,1,.13-.488l3.533-3.5A.036.036,0,0,0,15,6.182a.038.038,0,0,0-.033-.04l-4.3-.425a.5.5,0,0,1-.4-.272L8.04,1.027a.048.048,0,0,0-.019-.019.043.043,0,0,0-.021,0c-.027.006-.035.013-.041.025L5.733,5.442a.5.5,0,0,1-.4.272l-4.288.425a.044.044,0,0,0-.031.011A.035.035,0,0,0,1,6.176a.033.033,0,0,0,.011.025L4.547,9.7a.5.5,0,0,1,.13.488L3.368,14.949a.041.041,0,0,0,0,.026A.044.044,0,0,0,3.405,15a.04.04,0,0,0,.018,0L7.778,12.84A.506.506,0,0,1,8,12.787Z" transform="translate(0)" fill="none"/>
    </g>
  </g>
</svg>
</span></a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1100"><a href="/en/products/content/headless-cms" class="elementor-item">Headless Content<span class="menu-icon" ><svg xmlns="http://www.w3.org/2000/svg" width="22.5" height="21" viewBox="0 0 22.5 21">
  <g id="app-window-layout-1" transform="translate(-0.76 -1.503)">
    <path id="Path_5" data-name="Path 5" d="M3.01,22.5a2.252,2.252,0,0,1-2.25-2.25V3.753A2.252,2.252,0,0,1,3.01,1.5h18a2.252,2.252,0,0,1,2.25,2.25v16.5a2.252,2.252,0,0,1-2.25,2.25Zm-.75-2.25a.75.75,0,0,0,.75.75h18a.75.75,0,0,0,.75-.75V7.5H2.26ZM21.76,6V3.753A.75.75,0,0,0,21.01,3h-18a.75.75,0,0,0-.75.75V6Z" fill="#002840"/>
    <path id="Path_6" data-name="Path 6" d="M10.51,12a.75.75,0,0,1,0-1.5h7.5a.75.75,0,0,1,0,1.5Z" fill="#002840"/>
    <path id="Path_7" data-name="Path 7" d="M10.51,18a.75.75,0,0,1,0-1.5h7.5a.75.75,0,0,1,0,1.5Z" fill="#002840"/>
    <circle id="Ellipse_1" data-name="Ellipse 1" cx="1.125" cy="1.125" r="1.125" transform="translate(5.635 10.128)" fill="#002840"/>
    <circle id="Ellipse_2" data-name="Ellipse 2" cx="1.125" cy="1.125" r="1.125" transform="translate(5.635 16.128)" fill="#002840"/>
  </g>
</svg>
</span></a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1101"><a href="/en/products/clarity" class="elementor-item">Conversational Shopping<span class="menu-icon" ><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewBox="0 0 16 16">
  <defs>
    <clipPath id="clip-web_clarity">
      <rect width="16" height="16"/>
    </clipPath>
  </defs>
  <g id="web_clarity" clip-path="url(#clip-web_clarity)">
    <g id="shield-search" transform="translate(-0.5 0)">
      <path id="Path_3191" data-name="Path 3191" d="M8.5,16a2.493,2.493,0,0,1-.9-.166l-.694-.262A8.487,8.487,0,0,1,1.5,7.7V2.616a1.493,1.493,0,0,1,.875-1.362A14.869,14.869,0,0,1,8.358,0h.27a14.888,14.888,0,0,1,6,1.25A1.5,1.5,0,0,1,15.5,2.62V7.695a8.487,8.487,0,0,1-5.408,7.875l-.694.262A2.493,2.493,0,0,1,8.5,16ZM8.367,1A13.892,13.892,0,0,0,2.778,2.166a.487.487,0,0,0-.278.446V7.687a7.482,7.482,0,0,0,4.767,6.942l.694.262a1.5,1.5,0,0,0,1.077,0l.694-.262A7.485,7.485,0,0,0,14.5,7.687V2.616a.5.5,0,0,0-.287-.453A13.871,13.871,0,0,0,8.629,1Z" transform="translate(0 0)" fill="none"/>
      <path id="Path_3192" data-name="Path 3192" d="M12.868,12a.465.465,0,0,1-.336-.142L11.294,10.6a3.277,3.277,0,0,1-1.988.677A3.389,3.389,0,1,1,12.631,7.89a3.424,3.424,0,0,1-.664,2.026L13.2,11.177a.492.492,0,0,1,0,.685.471.471,0,0,1-.337.141ZM9.307,5.469a2.421,2.421,0,1,0,2.375,2.42,2.421,2.421,0,0,0-2.375-2.42Z" transform="translate(-1.295 -0.947)" fill="none"/>
    </g>
    <path id="Path_38" data-name="Path 38" d="M1.2,0h9.6A1.2,1.2,0,0,1,12,1.2v9.6A1.2,1.2,0,0,1,10.8,12H1.2A1.2,1.2,0,0,1,0,10.8V1.2A1.2,1.2,0,0,1,1.2,0Z" transform="translate(-0.485 8) rotate(-45)" fill="none"/>
  </g>
</svg>
</span></a></li>
</ul>			</nav>
						<nav class="elementor-nav-menu--dropdown elementor-nav-menu__container" aria-hidden="true">
				<ul id="menu-2-acb83df" class="elementor-nav-menu sm-vertical"><li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-151"><a href="/en/products/discovery/search-intelligence" class="elementor-item" tabindex="-1">Ecommerce Search<span class="menu-icon" ><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewBox="0 0 16 16">
  <defs>
    <clipPath id="clip-web_search_apis">
      <rect width="16" height="16"/>
    </clipPath>
  </defs>
  <g id="web_search_apis" data-name="web_search apis" clip-path="url(#clip-web_search_apis)">
    <g id="app-window-search-1" transform="translate(-0.013)">
      <path id="Path_3140" data-name="Path 3140" d="M1.509,14a1.5,1.5,0,0,1-1.5-1.5V1.5A1.5,1.5,0,0,1,1.509,0h12a1.5,1.5,0,0,1,1.5,1.5V5.5a.5.5,0,0,1-1,0v-1.5h-13v8.5a.5.5,0,0,0,.5.5h4a.5.5,0,1,1,0,1ZM14.01,3v-1.5a.5.5,0,0,0-.5-.5h-12a.5.5,0,0,0-.5.5V3Z" fill="none"/>
      <path id="Path_3141" data-name="Path 3141" d="M18.759,19.254a.5.5,0,0,1-.353-.147l-2.194-2.194a4,4,0,1,1,.707-.707L19.113,18.4a.5.5,0,0,1-.354.854Zm-5-8.5a3,3,0,1,0,3,3,3,3,0,0,0-3-3Z" transform="translate(-3.249 -3.254)" fill="none"/>
    </g>
  </g>
</svg>
</span></a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1097"><a href="/en/products/genai-product-discovery/categories" class="elementor-item" tabindex="-1">Ecommerce Categories<span class="menu-icon" ><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewBox="0 0 16 16">
  <defs>
    <clipPath id="clip-web_merch">
      <rect width="16" height="16"/>
    </clipPath>
  </defs>
  <g id="web_merch" clip-path="url(#clip-web_merch)">
    <g id="phone-action-cart" transform="translate(-9.607 -0.2)">
      <path id="Path_3198" data-name="Path 3198" d="M13.29,12.235a1.556,1.556,0,0,1-1.428-.942l-.013-.033L9.728,5.327a1.557,1.557,0,0,1,1.439-2.153h12.4l.941-2.6a.566.566,0,0,1,1.063.387L24.5,3.922l-.008.022-2.642,7.268A1.566,1.566,0,0,1,20.4,12.239ZM12.9,10.86a.426.426,0,0,0,.386.245H20.4a.428.428,0,0,0,.394-.281L23.159,4.3H11.166a.426.426,0,0,0-.391.594l.013.033Z" transform="translate(0 0)" fill="none"/>
      <path id="Path_3200" data-name="Path 3200" d="M13.67,12.822a1.061,1.061,0,1,1,1.061-1.061A1.061,1.061,0,0,1,13.67,12.822Z" transform="translate(0.965 3.378)" fill="none"/>
      <path id="Path_3202" data-name="Path 3202" d="M17.42,12.822a1.061,1.061,0,1,1,1.061-1.061A1.061,1.061,0,0,1,17.42,12.822Z" transform="translate(2.172 3.378)" fill="none"/>
    </g>
  </g>
</svg>
</span></a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1098"><a href="/en/products/discovery/product-recommendations" class="elementor-item" tabindex="-1">Recommendations<span class="menu-icon" ><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewBox="0 0 16 16">
  <defs>
    <clipPath id="clip-web_product_recs">
      <rect width="16" height="16"/>
    </clipPath>
  </defs>
  <g id="web_product_recs" data-name="web_product recs" clip-path="url(#clip-web_product_recs)">
    <g id="rating-star" transform="translate(-0.001)">
      <path id="Path_3142" data-name="Path 3142" d="M12.595,16a1.048,1.048,0,0,1-.468-.112L8,13.845,3.875,15.887a1.026,1.026,0,0,1-.464.11A1.042,1.042,0,0,1,2.4,14.689l1.234-4.48L.308,6.913a1.037,1.037,0,0,1,.644-1.77l4.012-.4L7.067.576A1.033,1.033,0,0,1,8.476.12,1.035,1.035,0,0,1,8.93.574L11.038,4.75l4.02.4a1.036,1.036,0,0,1,.636,1.768l-3.326,3.291L13.6,14.684a1.045,1.045,0,0,1-.739,1.279,1.088,1.088,0,0,1-.267.037ZM8,12.787a.5.5,0,0,1,.222.053l4.352,2.154a.047.047,0,0,0,.021.006c.033-.007.047-.031.041-.053l-1.308-4.753a.5.5,0,0,1,.13-.488l3.533-3.5A.036.036,0,0,0,15,6.182a.038.038,0,0,0-.033-.04l-4.3-.425a.5.5,0,0,1-.4-.272L8.04,1.027a.048.048,0,0,0-.019-.019.043.043,0,0,0-.021,0c-.027.006-.035.013-.041.025L5.733,5.442a.5.5,0,0,1-.4.272l-4.288.425a.044.044,0,0,0-.031.011A.035.035,0,0,0,1,6.176a.033.033,0,0,0,.011.025L4.547,9.7a.5.5,0,0,1,.13.488L3.368,14.949a.041.041,0,0,0,0,.026A.044.044,0,0,0,3.405,15a.04.04,0,0,0,.018,0L7.778,12.84A.506.506,0,0,1,8,12.787Z" transform="translate(0)" fill="none"/>
    </g>
  </g>
</svg>
</span></a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1100"><a href="/en/products/content/headless-cms" class="elementor-item" tabindex="-1">Headless Content<span class="menu-icon" ><svg xmlns="http://www.w3.org/2000/svg" width="22.5" height="21" viewBox="0 0 22.5 21">
  <g id="app-window-layout-1" transform="translate(-0.76 -1.503)">
    <path id="Path_5" data-name="Path 5" d="M3.01,22.5a2.252,2.252,0,0,1-2.25-2.25V3.753A2.252,2.252,0,0,1,3.01,1.5h18a2.252,2.252,0,0,1,2.25,2.25v16.5a2.252,2.252,0,0,1-2.25,2.25Zm-.75-2.25a.75.75,0,0,0,.75.75h18a.75.75,0,0,0,.75-.75V7.5H2.26ZM21.76,6V3.753A.75.75,0,0,0,21.01,3h-18a.75.75,0,0,0-.75.75V6Z" fill="#002840"/>
    <path id="Path_6" data-name="Path 6" d="M10.51,12a.75.75,0,0,1,0-1.5h7.5a.75.75,0,0,1,0,1.5Z" fill="#002840"/>
    <path id="Path_7" data-name="Path 7" d="M10.51,18a.75.75,0,0,1,0-1.5h7.5a.75.75,0,0,1,0,1.5Z" fill="#002840"/>
    <circle id="Ellipse_1" data-name="Ellipse 1" cx="1.125" cy="1.125" r="1.125" transform="translate(5.635 10.128)" fill="#002840"/>
    <circle id="Ellipse_2" data-name="Ellipse 2" cx="1.125" cy="1.125" r="1.125" transform="translate(5.635 16.128)" fill="#002840"/>
  </g>
</svg>
</span></a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1101"><a href="/en/products/clarity" class="elementor-item" tabindex="-1">Conversational Shopping<span class="menu-icon" ><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewBox="0 0 16 16">
  <defs>
    <clipPath id="clip-web_clarity">
      <rect width="16" height="16"/>
    </clipPath>
  </defs>
  <g id="web_clarity" clip-path="url(#clip-web_clarity)">
    <g id="shield-search" transform="translate(-0.5 0)">
      <path id="Path_3191" data-name="Path 3191" d="M8.5,16a2.493,2.493,0,0,1-.9-.166l-.694-.262A8.487,8.487,0,0,1,1.5,7.7V2.616a1.493,1.493,0,0,1,.875-1.362A14.869,14.869,0,0,1,8.358,0h.27a14.888,14.888,0,0,1,6,1.25A1.5,1.5,0,0,1,15.5,2.62V7.695a8.487,8.487,0,0,1-5.408,7.875l-.694.262A2.493,2.493,0,0,1,8.5,16ZM8.367,1A13.892,13.892,0,0,0,2.778,2.166a.487.487,0,0,0-.278.446V7.687a7.482,7.482,0,0,0,4.767,6.942l.694.262a1.5,1.5,0,0,0,1.077,0l.694-.262A7.485,7.485,0,0,0,14.5,7.687V2.616a.5.5,0,0,0-.287-.453A13.871,13.871,0,0,0,8.629,1Z" transform="translate(0 0)" fill="none"/>
      <path id="Path_3192" data-name="Path 3192" d="M12.868,12a.465.465,0,0,1-.336-.142L11.294,10.6a3.277,3.277,0,0,1-1.988.677A3.389,3.389,0,1,1,12.631,7.89a3.424,3.424,0,0,1-.664,2.026L13.2,11.177a.492.492,0,0,1,0,.685.471.471,0,0,1-.337.141ZM9.307,5.469a2.421,2.421,0,1,0,2.375,2.42,2.421,2.421,0,0,0-2.375-2.42Z" transform="translate(-1.295 -0.947)" fill="none"/>
    </g>
    <path id="Path_38" data-name="Path 38" d="M1.2,0h9.6A1.2,1.2,0,0,1,12,1.2v9.6A1.2,1.2,0,0,1,10.8,12H1.2A1.2,1.2,0,0,1,0,10.8V1.2A1.2,1.2,0,0,1,1.2,0Z" transform="translate(-0.485 8) rotate(-45)" fill="none"/>
  </g>
</svg>
</span></a></li>
</ul>			</nav>
				</div>
				</div>
				</div>
					</details>
						<details id="e-n-accordion-item-1332" class="e-n-accordion-item" >
				<summary class="e-n-accordion-item-title" data-accordion-index="3" tabindex="-1" aria-expanded="false" aria-controls="e-n-accordion-item-1332" >
					<span class='e-n-accordion-item-title-header'><div class="e-n-accordion-item-title-text"> For Data Driven Execs </div></span>
							<span class='e-n-accordion-item-title-icon'>
			<span class='e-opened' ><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"><g clip-path="url(#clip0_627_2295)"><path d="M12.9766 18.1641L20.4766 10.6641C20.8672 10.3125 20.8672 9.72656 20.4766 9.33594C20.125 8.98438 19.5391 8.98438 19.1484 9.33594L12.3125 16.2109L5.47656 9.375C5.125 8.98438 4.53906 8.98438 4.14844 9.375C3.79688 9.72656 3.79688 10.3125 4.14844 10.6641L11.6875 18.1641C12.0391 18.5547 12.625 18.5547 12.9766 18.1641Z" fill="#002840" fill-opacity="0.5"></path></g><defs><clipPath id="clip0_627_2295"><rect width="24" height="24" fill="white" transform="matrix(-1 0 0 1 24 0)"></rect></clipPath></defs></svg></span>
			<span class='e-closed'><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"><g clip-path="url(#clip0_627_2295)"><path d="M12.9766 18.1641L20.4766 10.6641C20.8672 10.3125 20.8672 9.72656 20.4766 9.33594C20.125 8.98438 19.5391 8.98438 19.1484 9.33594L12.3125 16.2109L5.47656 9.375C5.125 8.98438 4.53906 8.98438 4.14844 9.375C3.79688 9.72656 3.79688 10.3125 4.14844 10.6641L11.6875 18.1641C12.0391 18.5547 12.625 18.5547 12.9766 18.1641Z" fill="#002840" fill-opacity="0.5"></path></g><defs><clipPath id="clip0_627_2295"><rect width="24" height="24" fill="white" transform="matrix(-1 0 0 1 24 0)"></rect></clipPath></defs></svg></span>
		</span>

						</summary>
				<div role="region" aria-labelledby="e-n-accordion-item-1332" class="elementor-element elementor-element-d9fa79e e-con-full e-flex e-con e-child" data-id="d9fa79e" data-element_type="container">
				<div class="elementor-element elementor-element-87e2622 elementor-nav-menu--dropdown-none wp_menu elementor-widget elementor-widget-nav-menu" data-id="87e2622" data-element_type="widget" data-settings="{&quot;layout&quot;:&quot;vertical&quot;,&quot;submenu_icon&quot;:{&quot;value&quot;:&quot;&lt;i class=\&quot;\&quot;&gt;&lt;\/i&gt;&quot;,&quot;library&quot;:&quot;&quot;}}" data-widget_type="nav-menu.default">
				<div class="elementor-widget-container">
						<nav aria-label="Menu" class="elementor-nav-menu--main elementor-nav-menu__container elementor-nav-menu--layout-vertical e--pointer-none">
				<ul id="menu-1-87e2622" class="elementor-nav-menu sm-vertical"><li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-749"><a href="/en/library/analyst-reports" class="elementor-item">Our Leadership in Analyst Reports<span class="menu-icon" ><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewBox="0 0 16 16">
  <defs>
    <clipPath id="clip-web_analyst_insights">
      <rect width="16" height="16"/>
    </clipPath>
  </defs>
  <g id="web_analyst_insights" data-name="web_analyst insights" clip-path="url(#clip-web_analyst_insights)">
    <g id="Group_14" data-name="Group 14" transform="translate(0 0.698)">
      <g id="Group_15" data-name="Group 15">
        <path id="Path_33" data-name="Path 33" d="M3.995,6.321a.459.459,0,0,0,.451-.549,4.088,4.088,0,0,1,8-1.677.462.462,0,0,0,.448.359.467.467,0,0,0,.1-.011.459.459,0,0,0,.348-.548A5.009,5.009,0,0,0,3.449,4.978a4.99,4.99,0,0,0,.1.974.46.46,0,0,0,.45.369" transform="translate(-2.486)" fill="none"/>
        <path id="Path_34" data-name="Path 34" d="M17.861,27.1a1.145,1.145,0,0,0-1.227-.425L16.3,26.27a5.124,5.124,0,0,0,1.272-1.556.459.459,0,1,0-.81-.432,4.048,4.048,0,0,1-3.552,2.186,3.91,3.91,0,0,1-2.474-.879.459.459,0,1,0-.576.715,4.834,4.834,0,0,0,5.377.485l.388.467a1.155,1.155,0,0,0,.095,1.209l2.2,3a1.149,1.149,0,0,0,.923.467,1.136,1.136,0,0,0,.68-.224,1.151,1.151,0,0,0,.243-1.605Zm1.417,3.863a.228.228,0,0,1-.319-.048l-2.2-3a.229.229,0,0,1,.049-.32.225.225,0,0,1,.135-.045.229.229,0,0,1,.184.093l2.2,3a.23.23,0,0,1-.049.32" transform="translate(-7.195 -17.324)" fill="none"/>
        <path id="Path_35" data-name="Path 35" d="M14.7,6.955a1.3,1.3,0,0,0-1.166,1.864L12.425,9.7a1.282,1.282,0,0,0-.761-.247,1.3,1.3,0,0,0-1.206.823L7.842,9.852a1.853,1.853,0,0,0-3.7.207,1.868,1.868,0,0,0,.049.423L2.029,11.893a1.284,1.284,0,0,0-.734-.228,1.3,1.3,0,1,0,1.257.983L4.622,11.3a1.852,1.852,0,0,0,3.094-.538l2.733.438a1.3,1.3,0,0,0,2.479-.733l1.286-1.013a1.284,1.284,0,0,0,.49.1,1.3,1.3,0,0,0,0-2.6m0,1.677a.38.38,0,1,1,.377-.379.378.378,0,0,1-.377.379m-3.041,1.734a.38.38,0,1,1-.377.38.379.379,0,0,1,.377-.38M6,9.12a.939.939,0,1,1-.935.939A.938.938,0,0,1,6,9.12M1.3,12.583a.38.38,0,1,1-.377.38.379.379,0,0,1,.377-.38" transform="translate(0 -5.013)" fill="none"/>
      </g>
    </g>
  </g>
</svg>
</span></a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-41799"><a href="https://theedgesummit.com/" class="elementor-item">The Edge Summit<span class="menu-icon" ><svg width="14" height="14" viewBox="0 0 14 14" fill="none" xmlns="http://www.w3.org/2000/svg">
<g clip-path="url(#clip0_2929_34945)">
<path d="M1.31348 14C0.58956 14 0.000976562 13.4114 0.000976562 12.6875V3.0625C0.000976563 2.33858 0.58956 1.75 1.31348 1.75H3.50098V0.4375C3.50098 0.196 3.69698 0 3.93848 0C4.17998 0 4.37598 0.196 4.37598 0.4375V1.75H9.62598V0.4375C9.62598 0.196 9.82198 0 10.0635 0C10.305 0 10.501 0.196 10.501 0.4375V1.75H12.6885C13.4124 1.75 14.001 2.33858 14.001 3.0625V12.6875C14.001 13.4114 13.4124 14 12.6885 14H1.31348ZM0.875977 12.6875C0.875977 12.929 1.07198 13.125 1.31348 13.125H12.6885C12.93 13.125 13.126 12.929 13.126 12.6875V6.125H0.875977V12.6875ZM13.126 5.25V3.0625C13.126 2.821 12.93 2.625 12.6885 2.625H10.501V3.5C10.501 3.7415 10.305 3.9375 10.0635 3.9375C9.82198 3.9375 9.62598 3.7415 9.62598 3.5V2.625H4.37598V3.5C4.37598 3.7415 4.17998 3.9375 3.93848 3.9375C3.69698 3.9375 3.50098 3.7415 3.50098 3.5V2.625H1.31348C1.07198 2.625 0.875977 2.821 0.875977 3.0625V5.25H13.126Z" fill="black"/>
</g>
<defs>
<clipPath id="clip0_2929_34945">
<rect width="14" height="14" fill="white"/>
</clipPath>
</defs>
</svg>
</span></a></li>
</ul>			</nav>
						<nav class="elementor-nav-menu--dropdown elementor-nav-menu__container" aria-hidden="true">
				<ul id="menu-2-87e2622" class="elementor-nav-menu sm-vertical"><li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-749"><a href="/en/library/analyst-reports" class="elementor-item" tabindex="-1">Our Leadership in Analyst Reports<span class="menu-icon" ><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewBox="0 0 16 16">
  <defs>
    <clipPath id="clip-web_analyst_insights">
      <rect width="16" height="16"/>
    </clipPath>
  </defs>
  <g id="web_analyst_insights" data-name="web_analyst insights" clip-path="url(#clip-web_analyst_insights)">
    <g id="Group_14" data-name="Group 14" transform="translate(0 0.698)">
      <g id="Group_15" data-name="Group 15">
        <path id="Path_33" data-name="Path 33" d="M3.995,6.321a.459.459,0,0,0,.451-.549,4.088,4.088,0,0,1,8-1.677.462.462,0,0,0,.448.359.467.467,0,0,0,.1-.011.459.459,0,0,0,.348-.548A5.009,5.009,0,0,0,3.449,4.978a4.99,4.99,0,0,0,.1.974.46.46,0,0,0,.45.369" transform="translate(-2.486)" fill="none"/>
        <path id="Path_34" data-name="Path 34" d="M17.861,27.1a1.145,1.145,0,0,0-1.227-.425L16.3,26.27a5.124,5.124,0,0,0,1.272-1.556.459.459,0,1,0-.81-.432,4.048,4.048,0,0,1-3.552,2.186,3.91,3.91,0,0,1-2.474-.879.459.459,0,1,0-.576.715,4.834,4.834,0,0,0,5.377.485l.388.467a1.155,1.155,0,0,0,.095,1.209l2.2,3a1.149,1.149,0,0,0,.923.467,1.136,1.136,0,0,0,.68-.224,1.151,1.151,0,0,0,.243-1.605Zm1.417,3.863a.228.228,0,0,1-.319-.048l-2.2-3a.229.229,0,0,1,.049-.32.225.225,0,0,1,.135-.045.229.229,0,0,1,.184.093l2.2,3a.23.23,0,0,1-.049.32" transform="translate(-7.195 -17.324)" fill="none"/>
        <path id="Path_35" data-name="Path 35" d="M14.7,6.955a1.3,1.3,0,0,0-1.166,1.864L12.425,9.7a1.282,1.282,0,0,0-.761-.247,1.3,1.3,0,0,0-1.206.823L7.842,9.852a1.853,1.853,0,0,0-3.7.207,1.868,1.868,0,0,0,.049.423L2.029,11.893a1.284,1.284,0,0,0-.734-.228,1.3,1.3,0,1,0,1.257.983L4.622,11.3a1.852,1.852,0,0,0,3.094-.538l2.733.438a1.3,1.3,0,0,0,2.479-.733l1.286-1.013a1.284,1.284,0,0,0,.49.1,1.3,1.3,0,0,0,0-2.6m0,1.677a.38.38,0,1,1,.377-.379.378.378,0,0,1-.377.379m-3.041,1.734a.38.38,0,1,1-.377.38.379.379,0,0,1,.377-.38M6,9.12a.939.939,0,1,1-.935.939A.938.938,0,0,1,6,9.12M1.3,12.583a.38.38,0,1,1-.377.38.379.379,0,0,1,.377-.38" transform="translate(0 -5.013)" fill="none"/>
      </g>
    </g>
  </g>
</svg>
</span></a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-41799"><a href="https://theedgesummit.com/" class="elementor-item" tabindex="-1">The Edge Summit<span class="menu-icon" ><svg width="14" height="14" viewBox="0 0 14 14" fill="none" xmlns="http://www.w3.org/2000/svg">
<g clip-path="url(#clip0_2929_34945)">
<path d="M1.31348 14C0.58956 14 0.000976562 13.4114 0.000976562 12.6875V3.0625C0.000976563 2.33858 0.58956 1.75 1.31348 1.75H3.50098V0.4375C3.50098 0.196 3.69698 0 3.93848 0C4.17998 0 4.37598 0.196 4.37598 0.4375V1.75H9.62598V0.4375C9.62598 0.196 9.82198 0 10.0635 0C10.305 0 10.501 0.196 10.501 0.4375V1.75H12.6885C13.4124 1.75 14.001 2.33858 14.001 3.0625V12.6875C14.001 13.4114 13.4124 14 12.6885 14H1.31348ZM0.875977 12.6875C0.875977 12.929 1.07198 13.125 1.31348 13.125H12.6885C12.93 13.125 13.126 12.929 13.126 12.6875V6.125H0.875977V12.6875ZM13.126 5.25V3.0625C13.126 2.821 12.93 2.625 12.6885 2.625H10.501V3.5C10.501 3.7415 10.305 3.9375 10.0635 3.9375C9.82198 3.9375 9.62598 3.7415 9.62598 3.5V2.625H4.37598V3.5C4.37598 3.7415 4.17998 3.9375 3.93848 3.9375C3.69698 3.9375 3.50098 3.7415 3.50098 3.5V2.625H1.31348C1.07198 2.625 0.875977 2.821 0.875977 3.0625V5.25H13.126Z" fill="black"/>
</g>
<defs>
<clipPath id="clip0_2929_34945">
<rect width="14" height="14" fill="white"/>
</clipPath>
</defs>
</svg>
</span></a></li>
</ul>			</nav>
				</div>
				</div>
				</div>
					</details>
					</div>
				</div>
				</div>
				</div>
		<div class="elementor-element elementor-element-a3c29a0 e-con-full e-flex e-con e-child" data-id="a3c29a0" data-element_type="container">
		<a class="elementor-element elementor-element-78e29b0 e-con-full menu_box e-flex e-con e-child" data-id="78e29b0" data-element_type="container" href="https://www.bloomreach.com/en/products/engagement">
		<div class="elementor-element elementor-element-eefab97 e-con-full e-flex e-con e-child" data-id="eefab97" data-element_type="container">
				<div class="elementor-element elementor-element-b8c17fd elementor-widget__width-inherit elementor-widget elementor-widget-heading" data-id="b8c17fd" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<p class="elementor-heading-title elementor-size-default">Autonomous Marketing</p>		</div>
				</div>
				<div class="elementor-element elementor-element-0815f33 elementor-widget__width-initial elementor-view-default elementor-widget elementor-widget-icon" data-id="0815f33" data-element_type="widget" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none"><path d="M14.25 5C14.6562 5 15 5.34375 15 5.75V13.25C15 13.6875 14.6562 14 14.25 14C13.8125 14 13.5 13.6875 13.5 13.25V7.5625L6.28125 14.7812C5.96875 15.0938 5.5 15.0938 5.21875 14.7812C4.90625 14.5 4.90625 14.0312 5.21875 13.75L12.4375 6.53125H6.75C6.3125 6.53125 6 6.1875 6 5.78125C6 5.34375 6.3125 5.03125 6.75 5.03125H14.25V5Z" fill="#019ACE"></path></svg>			</div>
		</div>
				</div>
				</div>
				</div>
				<div class="elementor-element elementor-element-feaed59 elementor-widget elementor-widget-text-editor" data-id="feaed59" data-element_type="widget" data-widget_type="text-editor.default">
				<div class="elementor-widget-container">
							<p> AI-powered marketing automation that personalizes, automates and converts.</p>						</div>
				</div>
				</a>
		<a class="elementor-element elementor-element-72d1acb e-con-full menu_box e-flex e-con e-child" data-id="72d1acb" data-element_type="container" href="https://www.bloomreach.com/en/products/genai-product-discovery">
		<div class="elementor-element elementor-element-2b9e09f e-con-full e-flex e-con e-child" data-id="2b9e09f" data-element_type="container">
				<div class="elementor-element elementor-element-d47d152 elementor-widget__width-inherit elementor-widget elementor-widget-heading" data-id="d47d152" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<p class="elementor-heading-title elementor-size-default">Autonomous Search</p>		</div>
				</div>
				<div class="elementor-element elementor-element-e4ffa68 elementor-widget__width-initial elementor-view-default elementor-widget elementor-widget-icon" data-id="e4ffa68" data-element_type="widget" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none"><path d="M14.25 5C14.6562 5 15 5.34375 15 5.75V13.25C15 13.6875 14.6562 14 14.25 14C13.8125 14 13.5 13.6875 13.5 13.25V7.5625L6.28125 14.7812C5.96875 15.0938 5.5 15.0938 5.21875 14.7812C4.90625 14.5 4.90625 14.0312 5.21875 13.75L12.4375 6.53125H6.75C6.3125 6.53125 6 6.1875 6 5.78125C6 5.34375 6.3125 5.03125 6.75 5.03125H14.25V5Z" fill="#019ACE"></path></svg>			</div>
		</div>
				</div>
				</div>
				</div>
				<div class="elementor-element elementor-element-e4e20fe elementor-widget elementor-widget-text-editor" data-id="e4e20fe" data-element_type="widget" data-widget_type="text-editor.default">
				<div class="elementor-widget-container">
							<p> AI-native commerce search and merchandising that maximizes revenue per visitor.</p>						</div>
				</div>
				</a>
		<a class="elementor-element elementor-element-1e22e75 e-con-full menu_box e-flex e-con e-child" data-id="1e22e75" data-element_type="container" href="#">
		<div class="elementor-element elementor-element-a738305 e-con-full e-flex e-con e-child" data-id="a738305" data-element_type="container">
				<div class="elementor-element elementor-element-a7068da elementor-widget__width-inherit elementor-widget elementor-widget-heading" data-id="a7068da" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<p class="elementor-heading-title elementor-size-default">Conversational 
Shopping</p>		</div>
				</div>
				<div class="elementor-element elementor-element-2f45ebf elementor-widget__width-initial elementor-view-default elementor-widget elementor-widget-icon" data-id="2f45ebf" data-element_type="widget" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none"><path d="M14.25 5C14.6562 5 15 5.34375 15 5.75V13.25C15 13.6875 14.6562 14 14.25 14C13.8125 14 13.5 13.6875 13.5 13.25V7.5625L6.28125 14.7812C5.96875 15.0938 5.5 15.0938 5.21875 14.7812C4.90625 14.5 4.90625 14.0312 5.21875 13.75L12.4375 6.53125H6.75C6.3125 6.53125 6 6.1875 6 5.78125C6 5.34375 6.3125 5.03125 6.75 5.03125H14.25V5Z" fill="#019ACE"></path></svg>			</div>
		</div>
				</div>
				</div>
				</div>
				<div class="elementor-element elementor-element-fcbf216 elementor-widget elementor-widget-text-editor" data-id="fcbf216" data-element_type="widget" data-widget_type="text-editor.default">
				<div class="elementor-widget-container">
							<p>AI-driven shopping conversations that scale your best sales associate.</p>						</div>
				</div>
				</a>
				</div>
		<a class="elementor-element elementor-element-9e2044f e-con-full loomi_btn e-flex e-con e-child" data-id="9e2044f" data-element_type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}" href="https://www.bloomreach.com/en/products/loomi">
		<div class="elementor-element elementor-element-faec3f3 e-con-full loomi_btn_inner e-flex e-con e-child" data-id="faec3f3" data-element_type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
		<div class="elementor-element elementor-element-140618e e-con-full e-flex e-con e-child" data-id="140618e" data-element_type="container">
				<div class="elementor-element elementor-element-c61c5e2 elementor-widget__width-initial elementor-widget elementor-widget-image" data-id="c61c5e2" data-element_type="widget" data-widget_type="image.default">
				<div class="elementor-widget-container">
													<img width="34" height="35" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%2034%2035'%3E%3C/svg%3E" class="attachment-full size-full wp-image-213" alt="bloomreach-icon" data-lazy-src="https://www.bloomreach.com/wp-content/uploads/2024/04/bloomreach-icon.svg" /><noscript><img width="34" height="35" src="https://www.bloomreach.com/wp-content/uploads/2024/04/bloomreach-icon.svg" class="attachment-full size-full wp-image-213" alt="bloomreach-icon" /></noscript>													</div>
				</div>
		<div class="elementor-element elementor-element-9bb42fc e-con-full e-flex e-con e-child" data-id="9bb42fc" data-element_type="container">
				<div class="elementor-element elementor-element-fe38d41 elementor-widget elementor-widget-heading" data-id="fe38d41" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<div class="elementor-heading-title elementor-size-default">Powered by</div>		</div>
				</div>
				<div class="elementor-element elementor-element-7e2c1c5 elementor-widget elementor-widget-heading" data-id="7e2c1c5" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<div class="elementor-heading-title elementor-size-default">Loomi</div>		</div>
				</div>
				</div>
				</div>
		<div class="elementor-element elementor-element-71ea2f4 e-con-full e-flex e-con e-child" data-id="71ea2f4" data-element_type="container">
				<div class="elementor-element elementor-element-c2606f6 elementor-widget elementor-widget-heading" data-id="c2606f6" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<div class="elementor-heading-title elementor-size-default">Experience AI built for growth</div>		</div>
				</div>
				<div class="elementor-element elementor-element-f57f73d elementor-widget__width-initial elementor-view-default elementor-widget elementor-widget-icon" data-id="f57f73d" data-element_type="widget" data-widget_type="icon.default">
				<div class="elementor-widget-container">
					<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"><path d="M20.4375 13.2031L13.5625 19.7656C13.1719 20.1172 12.5859 20.1172 12.2344 19.7266C11.8828 19.3359 11.8828 18.75 12.2734 18.3984L17.4688 13.4375H4.1875C3.64062 13.4375 3.25 13.0469 3.25 12.5C3.25 11.9922 3.64062 11.5625 4.1875 11.5625H17.4688L12.2734 6.64062C11.8828 6.28906 11.8828 5.66406 12.2344 5.3125C12.5859 4.92188 13.2109 4.92188 13.5625 5.27344L20.4375 11.8359C20.6328 12.0312 20.75 12.2656 20.75 12.5C20.75 12.7734 20.6328 13.0078 20.4375 13.2031Z" fill="#0EB4DE"></path></svg>			</div>
		</div>
				</div>
				</div>
				</div>
				</div>
				</a>
				</div>
				</div>
				</div>
				</div>
		<link rel='stylesheet' id='e-animations-css' href='https://www.bloomreach.com/wp-content/plugins/elementor/assets/lib/animations/animations.min.css?ver=3.23.4' media='all' />
<link data-minify="1" rel='stylesheet' id='media-accordion-style-css' href='https://www.bloomreach.com/wp-content/cache/min/1/wp-content/themes/hello-theme-child-master/elementor/widgets/assets/css/media-accordion.css?ver=1744639623' media='all' />
<link data-minify="1" rel='stylesheet' id='tour-popup-widget-css' href='https://www.bloomreach.com/wp-content/cache/min/1/wp-content/themes/hello-theme-child-master/elementor/widgets/assets/css/tour-popup-widget.css?ver=1744639623' media='all' />
<link rel='stylesheet' id='elementor-post-1203-css' href='https://www.bloomreach.com/wp-content/uploads/elementor/css/post-1203.css?ver=1744639617' media='all' />
<link rel='stylesheet' id='elementor-post-1208-css' href='https://www.bloomreach.com/wp-content/uploads/elementor/css/post-1208.css?ver=1744639617' media='all' />
<link rel='stylesheet' id='elementor-post-1214-css' href='https://www.bloomreach.com/wp-content/uploads/elementor/css/post-1214.css?ver=1744639617' media='all' />
<link rel='stylesheet' id='elementor-post-1239-css' href='https://www.bloomreach.com/wp-content/uploads/elementor/css/post-1239.css?ver=1744639617' media='all' />
<script type="rocketlazyloadscript" id="rocket-browser-checker-js-after">
"use strict";var _createClass=function(){function defineProperties(target,props){for(var i=0;i<props.length;i++){var descriptor=props[i];descriptor.enumerable=descriptor.enumerable||!1,descriptor.configurable=!0,"value"in descriptor&&(descriptor.writable=!0),Object.defineProperty(target,descriptor.key,descriptor)}}return function(Constructor,protoProps,staticProps){return protoProps&&defineProperties(Constructor.prototype,protoProps),staticProps&&defineProperties(Constructor,staticProps),Constructor}}();function _classCallCheck(instance,Constructor){if(!(instance instanceof Constructor))throw new TypeError("Cannot call a class as a function")}var RocketBrowserCompatibilityChecker=function(){function RocketBrowserCompatibilityChecker(options){_classCallCheck(this,RocketBrowserCompatibilityChecker),this.passiveSupported=!1,this._checkPassiveOption(this),this.options=!!this.passiveSupported&&options}return _createClass(RocketBrowserCompatibilityChecker,[{key:"_checkPassiveOption",value:function(self){try{var options={get passive(){return!(self.passiveSupported=!0)}};window.addEventListener("test",null,options),window.removeEventListener("test",null,options)}catch(err){self.passiveSupported=!1}}},{key:"initRequestIdleCallback",value:function(){!1 in window&&(window.requestIdleCallback=function(cb){var start=Date.now();return setTimeout(function(){cb({didTimeout:!1,timeRemaining:function(){return Math.max(0,50-(Date.now()-start))}})},1)}),!1 in window&&(window.cancelIdleCallback=function(id){return clearTimeout(id)})}},{key:"isDataSaverModeOn",value:function(){return"connection"in navigator&&!0===navigator.connection.saveData}},{key:"supportsLinkPrefetch",value:function(){var elem=document.createElement("link");return elem.relList&&elem.relList.supports&&elem.relList.supports("prefetch")&&window.IntersectionObserver&&"isIntersecting"in IntersectionObserverEntry.prototype}},{key:"isSlowConnection",value:function(){return"connection"in navigator&&"effectiveType"in navigator.connection&&("2g"===navigator.connection.effectiveType||"slow-2g"===navigator.connection.effectiveType)}}]),RocketBrowserCompatibilityChecker}();
</script>
<script id="rocket-preload-links-js-extra">
var RocketPreloadLinksConfig = {"excludeUris":"\/(?:.+\/)?feed(?:\/(?:.+\/?)?)?$|\/(?:.+\/)?embed\/|\/(index.php\/)?(.*)wp-json(\/.*|$)|\/refer\/|\/go\/|\/recommend\/|\/recommends\/","usesTrailingSlash":"","imageExt":"jpg|jpeg|gif|png|tiff|bmp|webp|avif|pdf|doc|docx|xls|xlsx|php","fileExt":"jpg|jpeg|gif|png|tiff|bmp|webp|avif|pdf|doc|docx|xls|xlsx|php|html|htm","siteUrl":"https:\/\/www.bloomreach.com\/en","onHoverDelay":"100","rateThrottle":"3"};
</script>
<script type="rocketlazyloadscript" id="rocket-preload-links-js-after">
(function() {
"use strict";var r="function"==typeof Symbol&&"symbol"==typeof Symbol.iterator?function(e){return typeof e}:function(e){return e&&"function"==typeof Symbol&&e.constructor===Symbol&&e!==Symbol.prototype?"symbol":typeof e},e=function(){function i(e,t){for(var n=0;n<t.length;n++){var i=t[n];i.enumerable=i.enumerable||!1,i.configurable=!0,"value"in i&&(i.writable=!0),Object.defineProperty(e,i.key,i)}}return function(e,t,n){return t&&i(e.prototype,t),n&&i(e,n),e}}();function i(e,t){if(!(e instanceof t))throw new TypeError("Cannot call a class as a function")}var t=function(){function n(e,t){i(this,n),this.browser=e,this.config=t,this.options=this.browser.options,this.prefetched=new Set,this.eventTime=null,this.threshold=1111,this.numOnHover=0}return e(n,[{key:"init",value:function(){!this.browser.supportsLinkPrefetch()||this.browser.isDataSaverModeOn()||this.browser.isSlowConnection()||(this.regex={excludeUris:RegExp(this.config.excludeUris,"i"),images:RegExp(".("+this.config.imageExt+")$","i"),fileExt:RegExp(".("+this.config.fileExt+")$","i")},this._initListeners(this))}},{key:"_initListeners",value:function(e){-1<this.config.onHoverDelay&&document.addEventListener("mouseover",e.listener.bind(e),e.listenerOptions),document.addEventListener("mousedown",e.listener.bind(e),e.listenerOptions),document.addEventListener("touchstart",e.listener.bind(e),e.listenerOptions)}},{key:"listener",value:function(e){var t=e.target.closest("a"),n=this._prepareUrl(t);if(null!==n)switch(e.type){case"mousedown":case"touchstart":this._addPrefetchLink(n);break;case"mouseover":this._earlyPrefetch(t,n,"mouseout")}}},{key:"_earlyPrefetch",value:function(t,e,n){var i=this,r=setTimeout(function(){if(r=null,0===i.numOnHover)setTimeout(function(){return i.numOnHover=0},1e3);else if(i.numOnHover>i.config.rateThrottle)return;i.numOnHover++,i._addPrefetchLink(e)},this.config.onHoverDelay);t.addEventListener(n,function e(){t.removeEventListener(n,e,{passive:!0}),null!==r&&(clearTimeout(r),r=null)},{passive:!0})}},{key:"_addPrefetchLink",value:function(i){return this.prefetched.add(i.href),new Promise(function(e,t){var n=document.createElement("link");n.rel="prefetch",n.href=i.href,n.onload=e,n.onerror=t,document.head.appendChild(n)}).catch(function(){})}},{key:"_prepareUrl",value:function(e){if(null===e||"object"!==(void 0===e?"undefined":r(e))||!1 in e||-1===["http:","https:"].indexOf(e.protocol))return null;var t=e.href.substring(0,this.config.siteUrl.length),n=this._getPathname(e.href,t),i={original:e.href,protocol:e.protocol,origin:t,pathname:n,href:t+n};return this._isLinkOk(i)?i:null}},{key:"_getPathname",value:function(e,t){var n=t?e.substring(this.config.siteUrl.length):e;return n.startsWith("/")||(n="/"+n),this._shouldAddTrailingSlash(n)?n+"/":n}},{key:"_shouldAddTrailingSlash",value:function(e){return this.config.usesTrailingSlash&&!e.endsWith("/")&&!this.regex.fileExt.test(e)}},{key:"_isLinkOk",value:function(e){return null!==e&&"object"===(void 0===e?"undefined":r(e))&&(!this.prefetched.has(e.href)&&e.origin===this.config.siteUrl&&-1===e.href.indexOf("?")&&-1===e.href.indexOf("#")&&!this.regex.excludeUris.test(e.href)&&!this.regex.images.test(e.href))}}],[{key:"run",value:function(){"undefined"!=typeof RocketPreloadLinksConfig&&new n(new RocketBrowserCompatibilityChecker({capture:!0,passive:!0}),RocketPreloadLinksConfig).init()}}]),n}();t.run();
}());
</script>
<script type="rocketlazyloadscript" data-minify="1" data-rocket-src="https://www.bloomreach.com/wp-content/cache/min/1/embed/v4.js?ver=1742555262" id="vidyard-js-js" data-rocket-defer defer></script>
<script type="rocketlazyloadscript" data-rocket-src="https://www.bloomreach.com/wp-content/themes/hello-theme-child-master/assets/js/jquery-ui.min.js?ver=1745393916" id="jquery-ui-js-js" data-rocket-defer defer></script>
<script type="rocketlazyloadscript" data-minify="1" data-rocket-src="https://www.bloomreach.com/wp-content/cache/min/1/wp-content/themes/hello-theme-child-master/assets/js/common.js?ver=1742555262" id="common-js-js" data-rocket-defer defer></script>
<script type="rocketlazyloadscript" data-rocket-src="https://www.bloomreach.com/wp-content/themes/hello-elementor/assets/js/hello-frontend.min.js?ver=3.3.0" id="hello-theme-frontend-js" data-rocket-defer defer></script>
<script src="https://www.bloomreach.com/wp-content/plugins/elementor-pro/assets/lib/smartmenus/jquery.smartmenus.min.js?ver=1.2.1" id="smartmenus-js" data-rocket-defer defer></script>
<script type="rocketlazyloadscript" data-rocket-src="https://www.bloomreach.com/wp-content/plugins/elementor/assets/js/webpack.runtime.min.js?ver=3.23.4" id="elementor-webpack-runtime-js" data-rocket-defer defer></script>
<script type="rocketlazyloadscript" data-rocket-src="https://www.bloomreach.com/wp-content/plugins/elementor/assets/js/frontend-modules.min.js?ver=3.23.4" id="elementor-frontend-modules-js" data-rocket-defer defer></script>
<script type="rocketlazyloadscript" data-rocket-src="https://www.bloomreach.com/wp-content/plugins/elementor/assets/lib/waypoints/waypoints.min.js?ver=4.0.2" id="elementor-waypoints-js" data-rocket-defer defer></script>
<script type="rocketlazyloadscript" data-rocket-src="https://www.bloomreach.com/wp-includes/js/jquery/ui/core.min.js?ver=1.13.3" id="jquery-ui-core-js" data-rocket-defer defer></script>
<script type="rocketlazyloadscript" id="elementor-frontend-js-before">
var elementorFrontendConfig = {"environmentMode":{"edit":false,"wpPreview":false,"isScriptDebug":false},"i18n":{"shareOnFacebook":"Share on Facebook","shareOnTwitter":"Share on Twitter","pinIt":"Pin it","download":"Download","downloadImage":"Download image","fullscreen":"Fullscreen","zoom":"Zoom","share":"Share","playVideo":"Play Video","previous":"Previous","next":"Next","close":"Close","a11yCarouselWrapperAriaLabel":"Carousel | Horizontal scrolling: Arrow Left & Right","a11yCarouselPrevSlideMessage":"Previous slide","a11yCarouselNextSlideMessage":"Next slide","a11yCarouselFirstSlideMessage":"This is the first slide","a11yCarouselLastSlideMessage":"This is the last slide","a11yCarouselPaginationBulletMessage":"Go to slide"},"is_rtl":false,"breakpoints":{"xs":0,"sm":480,"md":768,"lg":1025,"xl":1440,"xxl":1600},"responsive":{"breakpoints":{"mobile":{"label":"Mobile Portrait","value":767,"default_value":767,"direction":"max","is_enabled":true},"mobile_extra":{"label":"Mobile Landscape","value":880,"default_value":880,"direction":"max","is_enabled":false},"tablet":{"label":"Tablet Portrait","value":1024,"default_value":1024,"direction":"max","is_enabled":true},"tablet_extra":{"label":"Tablet Landscape","value":1200,"default_value":1200,"direction":"max","is_enabled":false},"laptop":{"label":"Laptop","value":1366,"default_value":1366,"direction":"max","is_enabled":false},"widescreen":{"label":"Widescreen","value":2400,"default_value":2400,"direction":"min","is_enabled":false}}},"version":"3.23.4","is_static":false,"experimentalFeatures":{"e_optimized_css_loading":true,"container":true,"container_grid":true,"e_nested_atomic_repeaters":true,"e_optimized_control_loading":true,"e_onboarding":true,"theme_builder_v2":true,"hello-theme-header-footer":true,"home_screen":true,"editor_v2":true,"landing-pages":true,"nested-elements":true,"display-conditions":true,"form-submissions":true,"mega-menu":true,"taxonomy-filter":true,"search":true},"urls":{"assets":"https:\/\/www.bloomreach.com\/wp-content\/plugins\/elementor\/assets\/","ajaxurl":"https:\/\/www.bloomreach.com\/wp-admin\/admin-ajax.php"},"nonces":{"floatingButtonsClickTracking":"2344a37b72"},"swiperClass":"swiper-container","settings":{"page":[],"editorPreferences":[]},"kit":{"active_breakpoints":["viewport_mobile","viewport_tablet"],"global_image_lightbox":"yes","lightbox_enable_counter":"yes","lightbox_enable_fullscreen":"yes","lightbox_enable_zoom":"yes","lightbox_enable_share":"yes","lightbox_title_src":"title","lightbox_description_src":"description","hello_header_logo_type":"logo","hello_header_menu_layout":"horizontal","hello_footer_logo_type":"logo"},"post":{"id":3401,"title":"Future-Ready%20Autonomous%20Marketing%20%7C%20Bloomreach","excerpt":"","featuredImage":false}};
</script>
<script type="rocketlazyloadscript" data-rocket-src="https://www.bloomreach.com/wp-content/plugins/elementor/assets/js/frontend.min.js?ver=3.23.4" id="elementor-frontend-js" data-rocket-defer defer></script>
<script type="rocketlazyloadscript" data-minify="1" data-rocket-src="https://www.bloomreach.com/wp-content/cache/min/1/wp-content/themes/hello-theme-child-master/elementor/widgets/assets/js/bloomreach-buttons.js?ver=1742555284" id="bloomreach-buttons-js" data-rocket-defer defer></script>
<script type="rocketlazyloadscript" data-minify="1" data-rocket-src="https://www.bloomreach.com/wp-content/cache/min/1/wp-content/themes/hello-theme-child-master/elementor/widgets/assets/js/media-accordion.js?ver=1742555310" id="media-accordion-script-js" data-rocket-defer defer></script>
<script type="rocketlazyloadscript" data-rocket-src="https://www.bloomreach.com/wp-content/plugins/elementor/assets/lib/jquery-numerator/jquery-numerator.min.js?ver=0.2.1" id="jquery-numerator-js" data-rocket-defer defer></script>
<script type="rocketlazyloadscript" data-rocket-src="https://www.bloomreach.com/wp-includes/js/imagesloaded.min.js?ver=5.0.0" id="imagesloaded-js" data-rocket-defer defer></script>
<script type="rocketlazyloadscript" data-minify="1" data-rocket-src="https://www.bloomreach.com/wp-content/cache/min/1/wp-content/themes/hello-theme-child-master/elementor/widgets/assets/js/tour-popup-widget.js?ver=1742555290" id="tour-popup-widget-js" data-rocket-defer defer></script>
<script src="//js.hsforms.net/forms/embed/v2.js" id="hubspot-form-embed-js"></script>
<script type="rocketlazyloadscript" data-rocket-src="https://www.bloomreach.com/wp-content/themes/hello-theme-child-master/elementor/widgets/assets/js/hubspot-form.js" id="hubspot-custom-script-js" data-rocket-defer defer></script>
<script type="rocketlazyloadscript" data-rocket-src="https://www.bloomreach.com/wp-content/plugins/elementor-pro/assets/js/webpack-pro.runtime.min.js?ver=3.23.3" id="elementor-pro-webpack-runtime-js" data-rocket-defer defer></script>
<script type="rocketlazyloadscript" data-rocket-src="https://www.bloomreach.com/wp-includes/js/dist/hooks.min.js?ver=4d63a3d491d11ffd8ac6" id="wp-hooks-js"></script>
<script type="rocketlazyloadscript" data-rocket-src="https://www.bloomreach.com/wp-includes/js/dist/i18n.min.js?ver=5e580eb46a90c2b997e6" id="wp-i18n-js"></script>
<script type="rocketlazyloadscript" id="wp-i18n-js-after">
wp.i18n.setLocaleData( { 'text direction\u0004ltr': [ 'ltr' ] } );
</script>
<script type="rocketlazyloadscript" id="elementor-pro-frontend-js-before">
var ElementorProFrontendConfig = {"ajaxurl":"https:\/\/www.bloomreach.com\/wp-admin\/admin-ajax.php","nonce":"2e0054841b","urls":{"assets":"https:\/\/www.bloomreach.com\/wp-content\/plugins\/elementor-pro\/assets\/","rest":"https:\/\/www.bloomreach.com\/en\/wp-json\/"},"shareButtonsNetworks":{"facebook":{"title":"Facebook","has_counter":true},"twitter":{"title":"Twitter"},"linkedin":{"title":"LinkedIn","has_counter":true},"pinterest":{"title":"Pinterest","has_counter":true},"reddit":{"title":"Reddit","has_counter":true},"vk":{"title":"VK","has_counter":true},"odnoklassniki":{"title":"OK","has_counter":true},"tumblr":{"title":"Tumblr"},"digg":{"title":"Digg"},"skype":{"title":"Skype"},"stumbleupon":{"title":"StumbleUpon","has_counter":true},"mix":{"title":"Mix"},"telegram":{"title":"Telegram"},"pocket":{"title":"Pocket","has_counter":true},"xing":{"title":"XING","has_counter":true},"whatsapp":{"title":"WhatsApp"},"email":{"title":"Email"},"print":{"title":"Print"},"x-twitter":{"title":"X"},"threads":{"title":"Threads"}},"facebook_sdk":{"lang":"en_US","app_id":""},"lottie":{"defaultAnimationUrl":"https:\/\/www.bloomreach.com\/wp-content\/plugins\/elementor-pro\/modules\/lottie\/assets\/animations\/default.json"}};
</script>
<script type="rocketlazyloadscript" data-rocket-src="https://www.bloomreach.com/wp-content/plugins/elementor-pro/assets/js/frontend.min.js?ver=3.23.3" id="elementor-pro-frontend-js" data-rocket-defer defer></script>
<script type="rocketlazyloadscript" data-rocket-src="https://www.bloomreach.com/wp-content/plugins/elementor-pro/assets/js/elements-handlers.min.js?ver=3.23.3" id="pro-elements-handlers-js" data-rocket-defer defer></script>
<script type="rocketlazyloadscript">
    (() => {
        const $buttons = document.querySelectorAll('.e-n-menu-dropdown-icon');
        const $menuContent = document.getElementsByClassName('e-n-menu-content')[0];
        const $body = document.querySelector('body');

        const onClassChange = (node, callback) => {
            let lastClassString = node.classList.toString();

            const mutationObserver = new MutationObserver((mutationList) => {
                for (const item of mutationList) {
                    if (item.attributeName === "class") {
                        const classString = node.classList.toString();
                        if (classString !== lastClassString) {
                            callback(mutationObserver);
                            lastClassString = classString;
                            break;
                        }
                    }
                }
            });

            mutationObserver.observe(node, { attributes: true });

            return mutationObserver;
        }

        const toggleMenuClasses = () => {
            if ($menuContent.classList.contains('e-active')) {
                $body.classList.add('menu_opened');
                Array.prototype.forEach.call($buttons, btn => {
                    let parentLi = btn.closest('.e-n-menu-title');
                    parentLi.classList.toggle('menu-item-active', btn.getAttribute('aria-expanded') === 'true');
                });
            } else {
                $body.classList.remove('menu_opened');
                Array.prototype.forEach.call($buttons, btn => {
                    let parentLi = btn.closest('.e-n-menu-title');
                    parentLi.classList.remove('menu-item-active');
                });
            }
        };

        onClassChange($menuContent, toggleMenuClasses);
        toggleMenuClasses(); // Call initially to set the correct state
    })();
</script>
<script type="rocketlazyloadscript">
	jQuery(document).ready(function ($) {
		// Close popup when clicking on a link within .elementor-location-popup
		$(document).on('click', '.elementor-location-popup .close_popup a', function (event) {
			event.preventDefault();
			event.stopPropagation();
			var popupContainer = $(this).closest('.elementor-location-popup');
			elementorProFrontend.modules.popup.closePopup(popupContainer, event);
		});

		// Toggle mobile menu active class on click
		$('.br_mobile_menu').click(function () {
			$(this).toggleClass('mobile_menu_active');
		});
	});
</script>
<script type="rocketlazyloadscript">

    function hubSpotFieldLabel(input, formField) {
        var isFocused = input === document.activeElement;

        const isNotEmpty = input.tagName === 'SELECT' ? input.selectedOptions.length > 0 && input.selectedOptions[0].value !== '' : input.value !== '';

        if (isNotEmpty || isFocused) {
            formField.classList.add('hs-form-field-active');
        } else if (!isFocused) {
            formField.classList.remove('hs-form-field-active');
        }
    }

    function initHubSpotForms() {
        var shouldWaitForFormInit = document.querySelectorAll('.hubspot-form-shortcode, .hubspot-form-elementor').length > 0;

        if (shouldWaitForFormInit) {
            var forms = document.querySelectorAll('.hbspt-form, .hs-form');

            if (forms.length > 0) {
                for (var f = 0; f < forms.length; f++) {
                    var formFields = forms[f].querySelectorAll('.hs-form-field');

                    if (formFields.length > 0) {
                        if (forms[f].classList.contains('hubspot-form-ready')) {
                            continue;
                        }

                        for (var i = 0; i < formFields.length; i++) {
                            var input = formFields[i].querySelector('.hs-input');

                            if (input && (input.tagName === 'INPUT' || input.tagName === 'TEXTAREA')) {
                                ((input, formField) => {
                                    hubSpotFieldLabel(input, formField);

                                    input.addEventListener('focus', () => {
                                        hubSpotFieldLabel(input, formField);
                                    });

                                    input.addEventListener('blur', () => {
                                        hubSpotFieldLabel(input, formField);
                                    });

                                    input.addEventListener('input', () => {
                                        hubSpotFieldLabel(input, formField);
                                    });
                                })(input, formFields[i]);
                            } else if (input && input.tagName === 'SELECT') {
                                ((input, formField) => {
                                    hubSpotFieldLabel(input, formField);

                                    input.addEventListener('change', () => {
                                        hubSpotFieldLabel(input, formField);
                                    });
                                })(input, formFields[i]);
                            }
                        }

                        forms[f].classList.add('hubspot-form-ready');
                    } else {
                        setTimeout(initHubSpotForms, 100);
                    }
                }
            } else {
                setTimeout(initHubSpotForms, 100);
            }
        }
    }

</script>
<script type="rocketlazyloadscript">
	document.addEventListener('DOMContentLoaded', function() { 
		jQuery(function($){
			$(document).scroll(function() {
				var y = $(this).scrollTop();
	
				if (y > 93) {
					$('body').addClass('sticky_header_active');
				} else {
					$('body').removeClass('sticky_header_active');
				}
			});
		});
	});
</script>
<script type="rocketlazyloadscript">
    (() => {
			const faqItems = document.querySelectorAll('.faq-section-v1-single-item-container .title-section');
	
			     for(let i = 0; i < faqItems.length; i++) {
            let item = faqItems[i];
            item.onclick = function(e) {
							let parent = item.parentNode.closest('.faq-section-v1-single-item-container');
							if(parent.classList.contains('open')){
								parent.querySelector('.item-content').style.height = 0;
							} else {
								const contentHeight =	parent.querySelector('.content-inner').offsetHeight;
								parent.querySelector('.item-content').style.height = contentHeight + "px";
							}
              parent.classList.toggle('open');
            }
        }
    })();
</script>
<script type="rocketlazyloadscript">
    (() => {			
			const count = document.querySelector('#careers-count .elementor-shortcode').innerText;
			const careerMenuItems = document.querySelectorAll('.add-careers-counter');
						
			for (var i = 0; i < careerMenuItems.length; i++){			
					let span = document.createElement('span');
					span.classList.add('menu-item-career-count');
					span.innerText = count;
				
 					careerMenuItems[i].querySelector('a').appendChild(span);
			}
    })();
</script>
<script type="rocketlazyloadscript">
(() => {
    // Function to get full language text
    function getFullTextLang(currentText) {
        switch (currentText) {
            case 'EN':
                return 'English';
            case 'DE':
                return 'Deutsch';
            case 'FR':
                return 'Français';
            default:
                return '';
        }
    }

    // Footer language picker
    const firstItem = document.querySelector('.footer-wpml .wpml-ls .wpml-ls-native');
    firstItem.parentNode.innerHTML += '<svg width="12" height="7" viewBox="0 0 12 7" fill="none" xmlns="http://www.w3.org/2000/svg">' +
        '<path d="M5.60156 5.89844L1.10156 1.39844C0.867188 1.1875 0.867188 0.835938 1.10156 0.601562C1.3125 0.390625 1.66406 0.390625 1.89844 0.601562L6 4.72656L10.1016 0.625C10.3125 0.390625 10.6641 0.390625 10.8984 0.625C11.1094 0.835938 11.1094 1.1875 10.8984 1.39844L6.375 5.89844C6.16406 6.13281 5.8125 6.13281 5.60156 5.89844Z" fill="#002840"/>' +
        '</svg>';

    const footerPicker = document.querySelector('.footer-wpml .wpml-ls');
    const footerLanguages = footerPicker.querySelectorAll('.wpml-ls-native');

    for (let i = 1; i < footerLanguages.length; i++) {
        const tempLangCode = footerLanguages[i].textContent;
        let span = document.createElement('span');
        span.classList.add('span-lang-code');
        span.innerText = tempLangCode;
        footerLanguages[i].parentNode.prepend(span);
    }

    for (let i = 0; i < footerLanguages.length; i++) {
        footerLanguages[i].textContent = getFullTextLang(footerLanguages[i].textContent);
    }

    // Header language picker
    const headerPickers = document.querySelectorAll('.elementor-nav-menu--main .wpml-ls-menu-item');
    headerPickers.forEach(picker => {
        const languages = picker.querySelectorAll('.wpml-ls-native');
        const langCode = languages[0].textContent; // Get language code
        const langText = getFullTextLang(langCode); // Get full language text
        languages[0].textContent = langText; // Set full language text as text content
        const span = document.createElement('span'); // Create span for language code
        span.classList.add('span-lang-code');
        span.innerText = langCode; // Set language code
        languages[0].parentNode.prepend(span); // Prepend span with language code
    });
})();
</script>
<script type="rocketlazyloadscript">
/**
 * Initialize loop grids with search fields and taxonomy filters for interactivity.
 */
function loopGrids() {
    const loopGrids = document.querySelectorAll('.elementor-widget-loop-grid');

    const url = new URL(window.location.href);
    const searchParams = url.searchParams;

    window.loopGrids.params = [];

    for (const loopGrid of loopGrids) {
        if (!loopGrid.id) {
            continue;
        }

        const container = loopGrid.querySelector('.elementor-widget-container');

        const loadMoreButton = document.querySelector(`.loop-grid-load-more-button[data-cssid="${loopGrid.id}"]`);

        if (!loadMoreButton) {
            const loadMoreSpinner = document.createElement('span');
            loadMoreSpinner.classList.add('e-load-more-spinner');
            loadMoreSpinner.innerHTML = '<i aria-hidden="true" class="fas fa-spinner eicon-animation-spin"></i>';
            container.appendChild(loadMoreSpinner);
        }

        const params = {
            container,
            id: loopGrid.id,
            elementorId: loopGrid.dataset.id,
            loopGrid,
            searches: [],
            filters: [],
            query: searchParams.get('s-' + loopGrid.id) ?? '',
            taxonomy: [],
            taxonomyTypes: [],
            metas: [],
            metaTypes: [],
            page: parseInt(searchParams.get('e-page-' + loopGrid.id) ?? '1'),
            isLastPage: false,
            loading: false,
            queued: false,
        };
        window.loopGrids.params.push(params);

        if (loadMoreButton) {
            params.loadMoreButton = loadMoreButton;
            params.loadMoreButtonPageSize = parseInt(loadMoreButton.dataset.pagesize || '0');
        }

        const linkedElements = document.querySelectorAll(`[data-cssid="${params.id}"]`);

        for (const linkedElement of linkedElements) {
            if (linkedElement.classList.contains('elementor-search-field')) {
                params.searches.push(linkedElement);

                const inputField = linkedElement.querySelector('input');
                inputField.value = params.query;
            } else {
                params.filters.push(linkedElement);

                const select = linkedElement.querySelector('select');

                if (select) {
                    const firstOption = select.querySelector('option');

                    if (firstOption) {
                        const type = firstOption.value.split(':')[0];
                        params.taxonomyTypes.push(type);

                        const existingValues = searchParams.get('br-filter-' + params.id + '-' + type);
                        if (existingValues) {
                            params.taxonomy[type] = existingValues.split(',');

                            for (const existing of params.taxonomy[type]) {
                                const option = linkedElement.querySelector(`option[value="${type}:${existing}"]`);
                                if (option) {
                                    option.selected = true;
                                }
                            }
                        }
                    }
                } else {
                    const firstLink = linkedElement.querySelector('a');
                    if (firstLink) {
                        const type = firstLink.dataset.type.split(':')[0];
                        params.taxonomyTypes.push(type);

                        const existingValues = searchParams.get('br-filter-' + params.id + '-' + type);
                        if (existingValues) {
                            params.taxonomy[type] = existingValues.split(',');

                            for (const existing of params.taxonomy[type]) {
                                const link = linkedElement.querySelector(`a[data-type="${type}:${existing}"]`);
                                if (link) {
                                    link.classList.add('active');
                                }
                            }
                        }
                    }
                }
            }
        }

        ((params) => {
            for (const search of params.searches) {
                const inputField = search.querySelector('input');
                inputField.addEventListener('input', function () {
                    loopGridSearch(inputField.value, params);
                });
            }

            for (const filter of params.filters) {
                const select = filter.querySelector('select');
                if (select) {
                    select.addEventListener('change', function () {
                        loopGridFilter(select, params, true);
                    });
                } else {
                    const links = filter.querySelectorAll('a');

                    for (const link of links) {
                        link.addEventListener('click', function (event) {
                            event.preventDefault();
                            loopGridFilter(link, params);
                        });
                    }
                }
            }

            if (params.loadMoreButton) {
                params.loadMoreButton.addEventListener('click', function () {
                    loopGridLoadMore(params);
                });
            } else {
                document.addEventListener('scroll', function () {
                    loopGridLoadMore(params);
                });
            }

            setTimeout(() => {
                if (params.page > 1) {
                    params.page = 1;
                    params.isLastPage = false;

                    loopGridUpdateUrl(params);
                } else {
                    if (!params.loadMoreButton) {
                        loopGridLoadMore(params);
                    }
                }
            }, 1);
        })(params);
    }
}

loopGrids();

/**
 * Loop grid. On type in search field, use text as query and sync all search texts to this one.
 */
function loopGridSearch(value, params) {
    params.page = 1;
    params.isLastPage = false;
    params.query = value;

    if (params.loadMoreButton) {
        params.loadMoreButton.style.display = '';
    }

    for (const search of params.searches) {
        const inputField = search.querySelector('input');
        inputField.value = params.query;
    }

	const container = document.getElementById(params.id);
	const loopContainer = container.querySelector('.elementor-loop-container');

	const existingItems = loopContainer.querySelectorAll('[data-elementor-type="loop-item"]');
	for (const item of existingItems) {
		loopContainer.removeChild(item);
	}

    loopGridUpdateUrl(params);
}

/**
 * Loop grid. On click on taxonomy filter, add taxonomy value to params.
 * Taxonomy values are multiselect, except for when *:all is selected, then clear taxonomy values for this type.
 * Sync taxonomy filters of same type.
 */
function loopGridFilter(filterElement, params, isSelect, datasetKey) {
    params.page = 1;
    params.isLastPage = false;

    if (params.loadMoreButton) {
        params.loadMoreButton.style.display = '';
    }

    if (isSelect) {
        const firstOption = filterElement.querySelector('option');

        const taxonomyType = firstOption.value.split(':')[0];
        const taxonomyValues = params.taxonomy[taxonomyType] || [];

        const selectedOptions = filterElement.selectedOptions;
        if (selectedOptions.length > 0) {
            for (const option of selectedOptions) {
                const taxonomyValue = option.value.split(':')[1];
                if (!taxonomyValues.includes(taxonomyValue)) {
                    taxonomyValues.push(taxonomyValue);
                    params.taxonomy[taxonomyType] = taxonomyValues;
                } else if (taxonomyValues.includes(taxonomyValue)) {
                    taxonomyValues.splice(taxonomyValues.indexOf(taxonomyValue), 1);
                    params.taxonomy[taxonomyType] = taxonomyValues;
                }
            }
        } else {
            params.taxonomy[taxonomyType] = [];
        }
    } else {
        const taxonomy = datasetKey ? filterElement.dataset[datasetKey].split(':') : filterElement.dataset.type.split(':');
        const taxonomyType = taxonomy[0];
        const taxonomyValue = taxonomy[1];
        const taxonomyValues = params.taxonomy[taxonomyType] || [];

        if (!params.taxonomyTypes.includes(taxonomyType)) {
            params.taxonomyTypes.push(taxonomyType);
        }

        if (taxonomyValue === 'all') {
            params.taxonomy[taxonomyType] = [];
        } else if (!taxonomyValues.includes(taxonomyValue)) {
            taxonomyValues.push(taxonomyValue);
            params.taxonomy[taxonomyType] = taxonomyValues;
        } else if (taxonomyValues.includes(taxonomyValue)) {
            taxonomyValues.splice(taxonomyValues.indexOf(taxonomyValue), 1);
            params.taxonomy[taxonomyType] = taxonomyValues;
        }

        for (const filter of params.filters) {
            const links = filter.querySelectorAll('a');

            for (const link of links) {
                const _taxonomy = link.dataset.type.split(':');
                const _taxonomyType = _taxonomy[0];
                const _taxonomyValue = _taxonomy[1];

                if (params.taxonomy[_taxonomyType] && params.taxonomy[_taxonomyType].includes(_taxonomyValue)) {
                    link.classList.add('active');
                } else {
                    link.classList.remove('active');
                }
            }
        }
    }

	const container = document.getElementById(params.id);
	const loopContainer = container.querySelector('.elementor-loop-container');

	const existingItems = loopContainer.querySelectorAll('[data-elementor-type="loop-item"]');
	for (const item of existingItems) {
		loopContainer.removeChild(item);
	}

    loopGridUpdateUrl(params);
}

/**
 * Loop grid. Add meta value to query.
 */
function loopGridMetaFilter(params, key, value) {
    if (!params.metaTypes.includes(key)) {
        params.metaTypes.push(key);
    }

    if (value) {
        params.metas[key] = value;
    } else {
        delete params.metas[key];
    }

    loopGridUpdateUrl(params);
}

/**
 * Loop grid. On scroll we will check if we need to load more posts.
 * We no longer load if isLastPage.
 */
function loopGridLoadMore(params) {
    if (params.isLastPage || params.loading) {
        params.queued = true;
        return;
    }

    const positionOfGrid = params.loopGrid.getBoundingClientRect().top;
    const heightOfGrid = params.loopGrid.offsetHeight;
    const positionOfBottom = positionOfGrid + heightOfGrid;

    if (positionOfBottom <= window.innerHeight) {
        params.page = params.page + 1;
        loopGridUpdateUrl(params, true);
    }
}

/**
 * Loop grid. Take current URL and build new URL with updated values from params.
 */
function loopGridUpdateUrl(params, paginate) {
    const url = new URL(window.location.href);
    const searchParams = url.searchParams;

    searchParams.delete('query');
    searchParams.delete('e-page');

    for (const taxonomyType of params.taxonomyTypes) {
        searchParams.delete('filter-' + taxonomyType);
    }

    for (const metaType of params.metaTypes) {
        searchParams.delete('meta-' + metaType);
    }

    if (params.query) {
        searchParams.set('query', params.query);
    }

    if (params.page) {
        searchParams.set('e-page', params.page);
    }

    for (const taxonomyType of params.taxonomyTypes) {
        if (params.taxonomy[taxonomyType] && params.taxonomy[taxonomyType].length) {
            const taxonomyValues = params.taxonomy[taxonomyType].join(',');
            searchParams.set('filter-' + taxonomyType, taxonomyValues);
        }
    }

    for (const metaType of params.metaTypes) {
        if (params.metas[metaType]) {
            searchParams.set('meta-' + metaType, params.metas[metaType]);
        }
    }

    url.search = searchParams.toString();
    // window.history.replaceState({}, '', url.toString());

    loopGridLoadData(params, url.toString(), paginate);
}

/**
 * Loop grid. Load data from URL and update loop grid.
 * Data is html contents where we find the container with loop grid data for id.
 */
async function loopGridLoadData(params, url, paginate) {
    if (params.loading) {
        params.queued = true;
        return;
    }
    params.loading = true;
    document.body.classList.add('loop-grid-loading');
    if (params.loadMoreButton) {
        params.loadMoreButton.classList.add('loop-grid-loading');
    }

    function finish() {
        params.loading = false;
        document.body.classList.remove('loop-grid-loading');
        if (params.loadMoreButton) {
            params.loadMoreButton.classList.remove('loop-grid-loading');
        }

        if (params.queued) {
            params.queued = false;

            loopGridUpdateUrl(params);
        }
    }

    try {
        const container = document.getElementById(params.id);
        const loopContainer = container.querySelector('.elementor-loop-container');

        const anyExistingForPage = loopContainer.querySelector('[data-page="' + params.page + '"]');
        if (anyExistingForPage && params.page > 1) {
            if (paginate) {
                params.page = params.page - 1;
            }

            finish();
            return;
        }

        const page = params.page;

        const response = await fetch(url);
        const data = await response.text();
        const parser = new DOMParser();
        const doc = parser.parseFromString(data, 'text/html');
        const loopGridData = doc.getElementById(params.id);
        if (loopGridData) {
            if (loopContainer) {
                if (page < 2) {
                    const existingItems = loopContainer.querySelectorAll('[data-elementor-type="loop-item"]');
                    for (const item of existingItems) {
                        loopContainer.removeChild(item);
                    }
                }

                const anyExistingForPage = loopContainer.querySelector('[data-page="' + page + '"]');
                if (!anyExistingForPage) {
                    const items = loopGridData.querySelectorAll('[data-elementor-type="loop-item"]');
                    for (const item of items) {
                        item.dataset.page = page;

                        loopContainer.appendChild(item);
                    }

                    if (items.length === 0) {
                        params.isLastPage = true;

                        if (params.loadMoreButton) {
                            params.loadMoreButton.style.display = 'none';
                        }
                    } else if (params.loadMoreButtonPageSize && items.length < params.loadMoreButtonPageSize) {
                        params.isLastPage = true;

                        if (params.loadMoreButton) {
                            params.loadMoreButton.style.display = 'none';
                        }
                    }
                }
            }
        } else {
            params.isLastPage = true;

            if (params.loadMoreButton) {
                params.loadMoreButton.style.display = 'none';
            }
        }
    } catch (error) {
        console.error(error);
    } finally {
        finish();
    }
}
</script>
<script type="rocketlazyloadscript">
const selectArrow = '<svg  viewBox="0 0 16 9" fill="none" xmlns="http://www.w3.org/2000/svg">\n' +
    '<g>\n' +
    '<path d="M8 8.6662C7.73333 8.6662 7.48267 8.5622 7.294 8.3742L0.146667 1.22754C0.052 1.13287 0 1.00754 0 0.873535C0 0.740202 0.052 0.614202 0.146667 0.520202C0.241333 0.425535 0.366667 0.373535 0.5 0.373535C0.633333 0.373535 0.759333 0.425535 0.853333 0.520202L8 7.6662L15.1467 0.520202C15.2413 0.425535 15.3667 0.373535 15.5 0.373535C15.6333 0.373535 15.7593 0.425535 15.8533 0.520202C15.948 0.614869 16 0.740202 16 0.873535C16 1.00687 15.948 1.13287 15.8533 1.22687L8.70667 8.37354C8.51867 8.5622 8.26733 8.6662 8 8.6662Z" fill="currentColor"/>\n' +
    '</g>\n' +
    '</svg>';

/**
 * Get all select.custom-fancy-select and create custom html code for custom select design.
 */
function customSelect() {
    const selects = document.querySelectorAll('.custom-fancy-select');

    selects.forEach(select => {
        const container = document.createElement('div');
        container.className = 'custom-fancy-select-container';

        select.parentNode.insertBefore(container, select);
        container.appendChild(select);

        container.addEventListener('click', () => {
            closeAllSelects();

            container.classList.add('open');
        });

        const title = document.createElement('button');
        title.type = 'button';
        title.className = 'select-title';

        if (select.selectedOptions.length === 0) {
            title.classList.add('empty');
        }

        container.appendChild(title);

        const arrow = document.createElement('span');
        arrow.className = 'select-arrow';
        arrow.innerHTML = selectArrow;
        container.appendChild(arrow);

        select.addEventListener('change', () => {
            title.innerHTML = getSelectText(select);

            if (select.selectedOptions.length === 0) {
                title.classList.add('empty');
            } else {
                title.classList.remove('empty');
            }
        });

        title.innerHTML = getSelectText(select);

        const optionsList = document.createElement('ul');
        optionsList.className = 'select-options';
        container.appendChild(optionsList);

        select.querySelectorAll('option').forEach(option => {
            const suffix = option.dataset.suffix ? ` <span>${option.dataset.suffix}</span>` : '';

            const optionEl = document.createElement('li');
            optionEl.innerHTML = `${option.text}${suffix}`;
            optionEl.dataset.value = option.value;
            optionsList.appendChild(optionEl);

            optionEl.addEventListener('click', () => {
                let add = true;

                let selected = [...select.selectedOptions].filter(value => {
                    if (value.value === option.value) {
                        add = false;
                    }

                    return value.value !== option.value;
                });

                if (add) {
                    selected.push(option);
                }

                const parts = option.value.split(':');
                if (parts.length > 0 && parts[1] === 'all') {
                    selected = [];
                }

                select.querySelectorAll('option')
                    .forEach(option => {
                        option.selected = selected.includes(option);
                        const optionEl = optionsList.querySelector(`li[data-value="${option.value}"]`);

                        if (option.selected) {
                            optionEl.classList.add('selected');
                        } else {
                            optionEl.classList.remove('selected');
                        }
                    });

								title.innerHTML = getSelectText(select);

								const event = new Event('change');
								select.dispatchEvent(event);
            });
        });
    });
}

customSelect();

/**
 * Return text for select depending on selected options or if none, then try data-title else return empty string.
 */
function getSelectText(select) {
    let text = [];

    if (select.selectedOptions.length > 0) {
        for (let i = 0; i < select.selectedOptions.length; i++) {
            const suffix = select.selectedOptions[i].dataset.suffix ? ` <span>${select.selectedOptions[i].dataset.suffix}</span>` : '';

            text.push(`${select.selectedOptions[i].text}${suffix}`);
        }
    }

    if (text.length === 0 && select.dataset.title) {
        text.push(select.dataset.title);
    }

    return text.join(', ');
}

/**
 * Close all open custom selects.
 */
function closeAllSelects() {
    document.querySelectorAll('.custom-fancy-select-container').forEach(container => {
        container.classList.remove('open');
    });
}
document.addEventListener('click', e => {
    if (!e.target.closest('.custom-fancy-select-container')) {
        closeAllSelects();
    }
});
</script>
<script type="rocketlazyloadscript">
	jQuery(document).ready(function($) {
		var subheadlines = $('.pricing_list .pricing_box_subheadline');
		var maxHeight = 0;

		// Determine the maximum height
		subheadlines.each(function() {
			var height = $(this).outerHeight();
			if (height > maxHeight) {
				maxHeight = height;
			}
		});

		// Set the maximum height to all subheadlines
		subheadlines.css('height', maxHeight);
	});
</script>
<script type="rocketlazyloadscript">
const icons = {
    "icons-question": '<svg viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M5.75 5.625C5.39844 5.625 5.125 5.9375 5.125 6.25V18.75C5.125 19.1016 5.39844 19.375 5.75 19.375H18.25C18.5625 19.375 18.875 19.1016 18.875 18.75V6.25C18.875 5.9375 18.5625 5.625 18.25 5.625H5.75ZM3.25 6.25C3.25 4.88281 4.34375 3.75 5.75 3.75H18.25C19.6172 3.75 20.75 4.88281 20.75 6.25V18.75C20.75 20.1562 19.6172 21.25 18.25 21.25H5.75C4.34375 21.25 3.25 20.1562 3.25 18.75V6.25ZM8.60156 8.98438C8.91406 8.08594 9.73438 7.5 10.6719 7.5H12.9375C14.3047 7.5 15.4375 8.63281 15.4375 10C15.4375 10.8594 14.9297 11.6797 14.1875 12.1094L12.9375 12.8516C12.8984 13.3594 12.5078 13.75 12 13.75C11.4531 13.75 11.0625 13.3594 11.0625 12.8125V12.3047C11.0625 11.9531 11.2188 11.6406 11.5312 11.4844L13.25 10.5078C13.4453 10.3906 13.5625 10.1953 13.5625 10C13.5625 9.64844 13.2891 9.41406 12.9375 9.41406H10.6719C10.5547 9.41406 10.4375 9.49219 10.3984 9.60938L10.3594 9.64844C10.2031 10.1562 9.65625 10.3906 9.1875 10.2344C8.67969 10.0391 8.44531 9.49219 8.60156 9.02344V8.98438ZM10.75 16.25C10.75 15.5859 11.2969 15 12 15C12.6641 15 13.25 15.5859 13.25 16.25C13.25 16.9531 12.6641 17.5 12 17.5C11.2969 17.5 10.75 16.9531 10.75 16.25Z" fill="currentColor"/></svg>',
    "icons-list-chips": '<svg viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M10.3203 3.75H18.25C18.9141 3.75 19.5 4.33594 19.5 5V7.5C19.5 8.20312 18.9141 8.75 18.25 8.75H10.3203C9.96875 8.75 9.65625 8.63281 9.42188 8.39844L7.74219 6.71875C7.50781 6.48438 7.50781 6.05469 7.74219 5.82031L9.42188 4.14062C9.65625 3.90625 9.96875 3.75 10.3203 3.75ZM18.25 7.5V5H10.3203L9.07031 6.25L10.3203 7.5H18.25ZM4.5 5C5.16406 5 5.75 5.58594 5.75 6.25C5.75 6.95312 5.16406 7.5 4.5 7.5C3.79688 7.5 3.25 6.95312 3.25 6.25C3.25 5.58594 3.79688 5 4.5 5ZM4.5 11.25C5.16406 11.25 5.75 11.8359 5.75 12.5C5.75 13.2031 5.16406 13.75 4.5 13.75C3.79688 13.75 3.25 13.2031 3.25 12.5C3.25 11.8359 3.79688 11.25 4.5 11.25ZM4.5 20C3.79688 20 3.25 19.4531 3.25 18.75C3.25 18.0859 3.79688 17.5 4.5 17.5C5.16406 17.5 5.75 18.0859 5.75 18.75C5.75 19.4531 5.16406 20 4.5 20ZM10.3203 16.25H18.25C18.9141 16.25 19.5 16.8359 19.5 17.5V20C19.5 20.7031 18.9141 21.25 18.25 21.25H10.3203C9.96875 21.25 9.65625 21.1328 9.42188 20.8984L7.74219 19.2188C7.50781 18.9844 7.50781 18.5547 7.74219 18.3203L9.42188 16.6406C9.65625 16.4062 9.96875 16.25 10.3203 16.25ZM18.25 20V17.5H10.3203L9.07031 18.75L10.3203 20H18.25ZM7.74219 12.0703L9.42188 10.3906C9.65625 10.1562 9.96875 10 10.3203 10H20.75C21.4141 10 22 10.5859 22 11.25V13.75C22 14.4531 21.4141 15 20.75 15H10.3203C9.96875 15 9.65625 14.8828 9.42188 14.6484L7.74219 12.9688C7.50781 12.7344 7.50781 12.3047 7.74219 12.0703ZM9.07031 12.5L10.3203 13.75H20.75V11.25H10.3203L9.07031 12.5Z" fill="currentColor"/></svg>',
    "icons-check": '<svg viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M11.1797 15.4688C10.9453 15.7031 10.5156 15.7031 10.2812 15.4688L7.78125 12.9688C7.54688 12.7344 7.54688 12.3047 7.78125 12.0703C8.01562 11.8359 8.44531 11.8359 8.67969 12.0703L10.75 14.1406L15.2812 9.57031C15.5156 9.33594 15.9453 9.33594 16.1797 9.57031C16.4141 9.80469 16.4141 10.2344 16.1797 10.4688L11.1797 15.4688ZM22 12.5C22 18.0469 17.5078 22.5 12 22.5C6.45312 22.5 2 18.0469 2 12.5C2 6.99219 6.45312 2.5 12 2.5C17.5078 2.5 22 6.99219 22 12.5ZM12 3.75C7.15625 3.75 3.25 7.69531 3.25 12.5C3.25 17.3438 7.15625 21.25 12 21.25C16.8047 21.25 20.75 17.3438 20.75 12.5C20.75 7.69531 16.8047 3.75 12 3.75Z" fill="currentColor"/></svg>',
};

for (const key of Object.keys(icons)) {
    const elements = document.querySelectorAll(`.${key}`);
    for (const icon of elements) {
        icon.innerHTML = icons[key];
    }
}

/**
 * Initialize accordions with image system.
 */
function accordionsWithImage() {
    const accordions = document.querySelectorAll('.accordition-with-image');

    for (const accordion of accordions) {
        const params = {
            items: accordion.querySelectorAll('.e-n-accordion-item'),
            titles: accordion.querySelectorAll('.e-n-accordion-item-title'),
            images: {},
        };

        for (const item of params.items) {
            if (item.id) {
                params.images[item.id] = document.getElementById(`${item.id}-img`);

                if (params.images[item.id] && !item.open) {
                    params.images[item.id].style.display = 'none';
                }

                if (params.images[item.id]) {
                    item.addEventListener('click', () => {
                        for (const key of Object.keys(params.images)) {
                            params.images[key].style.display = 'none';
                        }

                        params.images[item.id].style.display = 'block';
                    });
                }
            }
        }
    }
}

accordionsWithImage();
</script>
<script type="rocketlazyloadscript">
/**
 * If on Discovery/Engagement pages by existence of the form, add functions to the page for interaction with the form.
 */
function initDiscoveryEngagementForm() {
    var discovery = document.querySelector('#discovery-form');

    if (discovery) {
        var discoveryForm = discovery.querySelector('.hs-form');

        if (discoveryForm) {
            var formSelect = discovery.querySelector('select[name="module_interest"]');
            formSelect.value = 'Discovery';
            var event = new Event('change');
            formSelect.dispatchEvent(event);
            event = new Event('input');
            formSelect.dispatchEvent(event);

            const navAccorditionMatrix = {
                'search': '#accordition-search',
                'merchandising': '#accordition-merchandising',
                'recommendations': '#accordition-recommendations',
                'seo': '#accordition-seo',
            };

            for (var kindOf of ['Search', 'Merchandising', 'Recommendations', 'SEO']) {
                var key = kindOf.toLowerCase().replaceAll(' ', '-');

                var cta = document.querySelectorAll(`.discovery-form-${key}, .discovery-form-${key} a`);

                for (var ctaOf of cta) {
                    ((key, ctaOf, kindOf) => {
                        var hash = window.location.hash;

                        if (hash && hash.startsWith(navAccorditionMatrix[key])) {
                            var allOptions = discoveryForm.querySelectorAll('input[name="discovery_packages"]');
                            for (var i = 0; i < allOptions.length; i++) {
                                allOptions[i].checked = false;
                            }

                            var input = discoveryForm.querySelector('input[name="discovery_packages"][value="' + kindOf + '"]');
                            input.checked = true;
                        }

                        window.addEventListener('hashchange', function() {
                            var hash = window.location.hash;

                            if (hash && hash.startsWith(navAccorditionMatrix[key])) {
                                var allOptions = discoveryForm.querySelectorAll('input[name="discovery_packages"]');
                                for (var i = 0; i < allOptions.length; i++) {
                                    allOptions[i].checked = false;
                                }

                                var input = discoveryForm.querySelector('input[name="discovery_packages"][value="' + kindOf + '"]');
                                input.checked = true;
                            }
                        });
                        
                        ctaOf.addEventListener("click", function (event) {
                            event.preventDefault();

                            discoveryForm.scrollIntoView({behavior: "smooth", block: "center"});

                            var allOptions = discoveryForm.querySelectorAll('input[name="discovery_packages"]');
                            for (var i = 0; i < allOptions.length; i++) {
                                allOptions[i].checked = false;
                            }

                            var input = discoveryForm.querySelector('input[name="discovery_packages"][value="' + kindOf + '"]');
                            input.checked = true;
                        });
                    })(key, ctaOf, kindOf);
                }
            }
        } else {
            setTimeout(initDiscoveryEngagementForm, 100);
        }
    }

    var engagement = document.querySelector('#engagement-form');

    if (engagement) {
        var engagementForm = engagement.querySelector('.hs-form');

        if (engagementForm) {
            var formSelect = engagement.querySelector('select[name="module_interest"]');
            formSelect.value = 'Engagement';
            var event = new Event('change');
            formSelect.dispatchEvent(event);
            event = new Event('input');
            formSelect.dispatchEvent(event);

            const navAccorditionMatrix = {
                'email-marketing': '#accordition-email-marketing',
                'sms-and-mobile-messaging': '#accordition-sms-mobile-messaging',
                'web-and-app-personalization': '#accordition-web-personalization',
                'ad-optimization': '#accordition-ad-optimization',
                'intelligence-and-orchestration': '#accordition-intelligence-orchestration',
                'enterprise-engagement': '#accordition-enterprise-engagement',
            };

            for (var kindOf of ['Email Marketing', 'SMS and Mobile Messaging', 'Web and App Personalization', 'Ad Optimization', 'Intelligence and Orchestration', 'Enterprise Engagement']) {
                var key = kindOf.toLowerCase().replaceAll(' ', '-');

                var cta = document.querySelectorAll(`.discovery-form-${key}, .discovery-form-${key} a`);

                for (var ctaOf of cta) {
                    ((key, ctaOf, kindOf) => {
                        var hash = window.location.hash;

                        if (hash && hash.startsWith(navAccorditionMatrix[key])) {
                            var allOptions = engagementForm.querySelectorAll('input[name="engagement_packages"]');
                            for (var i = 0; i < allOptions.length; i++) {
                                allOptions[i].checked = false;
                            }

                            var input = engagementForm.querySelector('input[name="engagement_packages"][value="' + kindOf + '"]');
                            input.checked = true;
                        }

                        window.addEventListener('hashchange', function() {
                            var hash = window.location.hash;

                            if (hash && hash.startsWith(navAccorditionMatrix[key])) {
                                var allOptions = engagementForm.querySelectorAll('input[name="engagement_packages"]');
                                for (var i = 0; i < allOptions.length; i++) {
                                    allOptions[i].checked = false;
                                }

                                var input = engagementForm.querySelector('input[name="engagement_packages"][value="' + kindOf + '"]');
                                input.checked = true;
                            }
                        });

                        ctaOf.addEventListener("click", function (event) {
                            event.preventDefault();

                            engagementForm.scrollIntoView({behavior: "smooth", block: "center"});

                            var allOptions = engagementForm.querySelectorAll('input[name="engagement_packages"]');
                            for (var i = 0; i < allOptions.length; i++) {
                                allOptions[i].checked = false;
                            }

                            var input = engagementForm.querySelector('input[name="engagement_packages"][value="' + kindOf + '"]');
                            input.checked = true;
                        });
                    })(key, ctaOf, kindOf);
                }
            }
        } else {
            setTimeout(initDiscoveryEngagementForm, 100);
        }
    }
}

initDiscoveryEngagementForm();
</script>
<script type="rocketlazyloadscript">
/**
 * On load and on change, scroll to element with the id, if it starts with accordition-.
 */
function menuEnhancedNavigation() {
    var hash = window.location.hash;

    if (hash && hash.startsWith('#accordition-')) {
        var element = document.querySelector(`.${hash.replace('#', '')}`);

        if (element) {
            element.scrollIntoView({behavior: "smooth", block: "center"});

            var accordition = element.querySelector('.e-n-accordion-item-title');

            if (accordition) {
                accordition.click()
            }

            var others = document.querySelectorAll('.accordition-nav-group');

            for (var i = 0; i < others.length; i++) {
                if (!others[i].classList.contains(hash.replace('#', ''))) {
                    var accorditionContainer = others[i].querySelector('.e-n-accordion-item');

                    if (accorditionContainer && accorditionContainer.open) {
                        var accordition = accorditionContainer.querySelector('.e-n-accordion-item-title');
                        accordition.click();
                    }
                }
            }
        }
    }
}

jQuery(document).ready(function () {
    menuEnhancedNavigation();

    window.addEventListener('hashchange', function() {
        menuEnhancedNavigation();
    });
});
</script>
<script type="rocketlazyloadscript">
	window.addEventListener('message', event => {
		if(event.data.type === 'hsFormCallback' && event.data.eventName === 'onFormReady') {
			jQuery('fieldset .hs-form-field:hidden').each(function(){
				jQuery(this).closest('fieldset').css('display','none');
			});
		}
	});
</script>
<script type="rocketlazyloadscript">
window.addEventListener('message', event => {
	if(event.data.type === 'hsFormCallback' && event.data.eventName === 'onFormReady') {

		(function($) {

			// check on page visit
			function stateLabelHide(form){
				let selectedState = form.find('.hs_state_region__select_ select').val();
				if(selectedState != null){
					form.find('.hs_state_region__select_').closest('.hs-form-field').addClass('hs-form-field-active');
				}
			}
			$('form.hs-form').each(function(){
				stateLabelHide($(this));
			});

			// bind after field is changed
			function bindStateLabelHide(){
				$('form.hs-form .hs_state_region__select_ select').on('change',function(){
					let parentForm = $(this).closest('form.hs-form');
					stateLabelHide(parentForm);
				});
			}
			bindStateLabelHide();

			// bind after any select change
			$('form.hs-form select').on('change',function(){
				let parentForm = $(this).closest('form.hs-form');
				setTimeout(function(){
					let stateFieldExists = parentForm.find('.hs_state_region__select_').length;
					if(stateFieldExists){
						stateLabelHide(parentForm);
						bindStateLabelHide();
					}
				}, 500);
			});

		})( jQuery );
	}
});	
</script>
<script type="rocketlazyloadscript">
jQuery('[data-category="products_merchandisers"] ul li:last-child a').append('<i class="nav-star"><img style="position:relative;top:2px;left:5px" src="/wp-content/uploads/2024/05/rating-star-1.svg"></i>');
</script>
<script type="rocketlazyloadscript">
document.addEventListener("DOMContentLoaded", function() {

	let hasCookiesAnalytics = getCookieValue('cookieyes-consent').includes('analytics:yes');

	if(hasCookiesAnalytics){
		if (!window.brBannerfetchOverridden) {
		  const originalFetch = window.fetch;
		  window.brBannerfetchOverridden = true;

			window.fetch = async function (url, options) {
			  if (url.includes("/bulk") && options.method === "POST") {
			    const requestBody = JSON.parse(options.body)
			
			    requestBody.commands.forEach((command) => {
			      if (command.name === "crm/events" && ((command.data.type === "banner" && command.data.properties.action === "show") || (command.data.type === "experiment" && command.data.properties.action === "show") )) {
			        interceptBREvent(command)
			      }
			    })
			    }
			   
			  return originalFetch.apply(this, arguments)
			}
		}
			
		function interceptBREvent(command) {
			let type = command.data.type;
			let properties = command.data.properties;
			// Do something with the event data here
			if(type == 'experiment') {
				let experiment_id = properties['experiment_id'];
				let experiment_name = properties['experiment_name'];
				let variant_name = properties['variant_name'];
				let hj_experiment = experiment_name + ' | ' + variant_name + ' [' + experiment_id + ']';

				window.hj = window.hj || function () {
				    (hj.q = hj.q || []).push(arguments);
				};

				hj('event', hj_experiment);
			}
		}
	}

});
</script>
<script>window.lazyLoadOptions=[{elements_selector:"img[data-lazy-src],.rocket-lazyload,iframe[data-lazy-src]",data_src:"lazy-src",data_srcset:"lazy-srcset",data_sizes:"lazy-sizes",class_loading:"lazyloading",class_loaded:"lazyloaded",threshold:300,callback_loaded:function(element){if(element.tagName==="IFRAME"&&element.dataset.rocketLazyload=="fitvidscompatible"){if(element.classList.contains("lazyloaded")){if(typeof window.jQuery!="undefined"){if(jQuery.fn.fitVids){jQuery(element).parent().fitVids()}}}}}},{elements_selector:".rocket-lazyload",data_src:"lazy-src",data_srcset:"lazy-srcset",data_sizes:"lazy-sizes",class_loading:"lazyloading",class_loaded:"lazyloaded",threshold:300,}];window.addEventListener('LazyLoad::Initialized',function(e){var lazyLoadInstance=e.detail.instance;if(window.MutationObserver){var observer=new MutationObserver(function(mutations){var image_count=0;var iframe_count=0;var rocketlazy_count=0;mutations.forEach(function(mutation){for(var i=0;i<mutation.addedNodes.length;i++){if(typeof mutation.addedNodes[i].getElementsByTagName!=='function'){continue}
if(typeof mutation.addedNodes[i].getElementsByClassName!=='function'){continue}
images=mutation.addedNodes[i].getElementsByTagName('img');is_image=mutation.addedNodes[i].tagName=="IMG";iframes=mutation.addedNodes[i].getElementsByTagName('iframe');is_iframe=mutation.addedNodes[i].tagName=="IFRAME";rocket_lazy=mutation.addedNodes[i].getElementsByClassName('rocket-lazyload');image_count+=images.length;iframe_count+=iframes.length;rocketlazy_count+=rocket_lazy.length;if(is_image){image_count+=1}
if(is_iframe){iframe_count+=1}}});if(image_count>0||iframe_count>0||rocketlazy_count>0){lazyLoadInstance.update()}});var b=document.getElementsByTagName("body")[0];var config={childList:!0,subtree:!0};observer.observe(b,config)}},!1)</script><script data-no-minify="1" async src="https://www.bloomreach.com/wp-content/plugins/wp-rocket/assets/js/lazyload/17.8.3/lazyload.min.js"></script>
<script>(()=>{class RocketElementorPreload{constructor(){this.deviceMode=document.createElement("span"),this.deviceMode.id="elementor-device-mode-wpr",this.deviceMode.setAttribute("class","elementor-screen-only"),document.body.appendChild(this.deviceMode)}t(){let t=getComputedStyle(this.deviceMode,":after").content.replace(/"/g,"");this.animationSettingKeys=this.i(t),document.querySelectorAll(".elementor-invisible[data-settings]").forEach((t=>{const e=t.getBoundingClientRect();if(e.bottom>=0&&e.top<=window.innerHeight)try{this.o(t)}catch(t){}}))}o(t){const e=JSON.parse(t.dataset.settings),i=e.m||e.animation_delay||0,n=e[this.animationSettingKeys.find((t=>e[t]))];if("none"===n)return void t.classList.remove("elementor-invisible");t.classList.remove(n),this.currentAnimation&&t.classList.remove(this.currentAnimation),this.currentAnimation=n;let o=setTimeout((()=>{t.classList.remove("elementor-invisible"),t.classList.add("animated",n),this.l(t,e)}),i);window.addEventListener("rocket-startLoading",(function(){clearTimeout(o)}))}i(t="mobile"){const e=[""];switch(t){case"mobile":e.unshift("_mobile");case"tablet":e.unshift("_tablet");case"desktop":e.unshift("_desktop")}const i=[];return["animation","_animation"].forEach((t=>{e.forEach((e=>{i.push(t+e)}))})),i}l(t,e){this.i().forEach((t=>delete e[t])),t.dataset.settings=JSON.stringify(e)}static run(){const t=new RocketElementorPreload;requestAnimationFrame(t.t.bind(t))}}document.addEventListener("DOMContentLoaded",RocketElementorPreload.run)})();</script></body>
</html>

<!-- This website is like a Rocket, isn't it? Performance optimized by WP Rocket. Learn more: https://wp-rocket.me -->