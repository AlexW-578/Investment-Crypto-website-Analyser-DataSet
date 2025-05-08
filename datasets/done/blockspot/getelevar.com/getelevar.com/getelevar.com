<!DOCTYPE html>

<html lang="en-US">
<head>
  <!-- Elevar dataLayer -->
<script>
window.ElevarDataLayer = window.ElevarDataLayer ?? [];

let products = [];
let impressions = [];

/** User Properties Object **/
// The majority of this information can only be retrieved for a logged in user
let userProperties = {

// The following fields are required 
user_consent: "", // Use an empty string
visitor_type: "guest" // "logged_in" || "guest"
}


/** Elevar Base Data Layer **/
// Should be fired before all other events and on virtual page change
window.ElevarDataLayer.push({
    event: "dl_user_data",
    cart_total: "0.00",
    user_properties: userProperties, // See user properties object below
    ecommerce: {
    currencyCode: "USD",
    cart_contents: {
        products: products // See the products array below
    }
    }
});
</script>

  <script type="module">
    try {
      const response = await fetch("https://shopify-gtm-suite.getelevar.com/configs/5c33721a666297725409a874ca388024d1f90bbe/config.json");
      const config = await response.json();
      const scriptUrl = config.script_src_custom_pages;

      if (scriptUrl) {
        const { handler } = await import(scriptUrl);
        await handler(config);
      }
    } catch (error) {
      console.error("Elevar Error:", error);
    }
  </script>

<!-- OneTrust Cookies Consent Notice start for getelevar.com -->
<script src="https://cdn.cookielaw.org/scripttemplates/otSDKStub.js" type="text/javascript" charset="UTF-8" data-domain-script="01901247-54f9-74a0-be33-d2525efd7af6"></script>
<script type="text/javascript">
function OptanonWrapper() { }
</script>
<!-- OneTrust Cookies Consent Notice end for getelevar.com -->  <!-- Google Tag Manager -->
  <script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
  new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
  j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
  'https://capi.getelevar.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
  })(window,document,'script','dataLayer','GTM-NRTVJJC');</script>
  <!-- End Google Tag Manager -->
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <link rel="shortcut icon" href="https://getelevar.com/wp-content/themes/elevar/img/elevar-buxton-favicon.png" type="image/x-icon" />
  
	<style>
		.wpcf7-submit{
			display:none;
		}
		.recaptcha-btn{
			display:block;
		}
		.grecaptcha-badge { margin: 10px 0; }
	</style>
	<script type="text/javascript">
		var contactform = [];
		var checkIfCalled = true;
		var renderGoogleInvisibleRecaptchaFront = function() {
			// prevent form submit from enter key
			jQuery("input[name=_wpcf7]").attr("class","formid");
				jQuery('.wpcf7-form').on('keyup keypress', "input", function(e) {
				  var keyCode = e.keyCode || e.which;
				  if (keyCode === 13) {
					e.preventDefault();
					return false;
				  }
				});

			jQuery('.wpcf7-submit').each(function(index){

				var checkexclude = 0;
				var form = jQuery(this).closest('.wpcf7-form');
				var value = jQuery(form).find(".formid").val();
				// check form exclude from invisible recaptcha
								if(checkexclude == 0){
					// Hide the form orig submit button
					form.find('.wpcf7-submit').hide();

					// Fetch class and value of orig submit button
					btnClasses = form.find('.wpcf7-submit').attr('class');
					btnValue = form.find('.wpcf7-submit').attr('value');

					// Add custom button and recaptcha holder

					form.find('.wpcf7-submit').after('<input type="button" id="wpcf-custom-btn-'+index+'" class="'+btnClasses+' captcha recaptcha-btn recaptcha-btn-type-css" value="'+btnValue+'" title="'+btnValue+'" >');
					form.append('<div class="recaptcha-holder" id="recaptcha-holder-'+index+'"></div>');
					// Recaptcha rendenr from here
					var holderId = grecaptcha.render('recaptcha-holder-'+index,{
								'sitekey':'6LcDsJ0UAAAAAKCO4h5YfKx1wiVLSlxnkXy6Z0G9',
								'size': 'invisible',
								'badge' : 'inline', // possible values: bottomright, bottomleft, inline
								'callback' : function (recaptchaToken) {
									//console.log(recaptchaToken);
									var response=jQuery('#recaptcha-holder-'+index).find('.g-recaptcha-response').val();
									//console.log(response);
									//Remove old response and store new respone
									jQuery('#recaptcha-holder-'+index).parent().find(".respose_post").remove();
									jQuery('#recaptcha-holder-'+index).after('<input type="hidden" name="g-recaptcha-response"  value="'+response+'" class="respose_post">')
									grecaptcha.reset(holderId);

									if(typeof customCF7Validator !== 'undefined'){
										if(!customCF7Validator(form)){
											return;
										}
									}
									// Call default Validator function
									else if(contactFormDefaultValidator(form)){
										return;
									}
									else{
										// hide the custom button and show orig submit button again and submit the form
										jQuery('#wpcf-custom-btn-'+index).hide();
										form.find('input[type=submit]').show();
										form.find("input[type=submit]").click();
										form.find('input[type=submit]').hide();
										jQuery('#wpcf-custom-btn-'+index).attr('style','');
									}
								}
						},false);

					// action call when click on custom button
					jQuery('#wpcf-custom-btn-'+index).click(function(event){
						event.preventDefault();
						// Call custom validator function
						if(typeof customCF7Validator == 'function'){
							if(!customCF7Validator(form)){
								return false;
							}
						}
						// Call default Validator function
						else if(contactFormDefaultValidator(form)){
							return false;
						}
						else if(grecaptcha.getResponse(holderId) != ''){
							grecaptcha.reset(holderId);
						}
						else{
							// execute the recaptcha challenge
							grecaptcha.execute(holderId);
						}
					});
				}
			});
		}
	</script><script  src="https://www.google.com/recaptcha/api.js?onload=renderGoogleInvisibleRecaptchaFront&render=explicit" async defer></script><meta name='robots' content='index, follow, max-image-preview:large, max-snippet:-1, max-video-preview:-1' />
	<style>img:is([sizes="auto" i], [sizes^="auto," i]) { contain-intrinsic-size: 3000px 1500px }</style>
	
	<!-- This site is optimized with the Yoast SEO plugin v20.7 - https://yoast.com/wordpress/plugins/seo/ -->
	<title>Elevar | Powering Conversion Tracking For Over 6,500 D2C Brands | Elevar</title>
	<meta name="description" content="Deploy a data layer, connect to 40+ marketing channels, ensure all of your conversions are tracked, and enable server side tagging for Shopify." />
	<link rel="canonical" href="https://getelevar.com/" />
	<meta property="og:locale" content="en_US" />
	<meta property="og:type" content="website" />
	<meta property="og:title" content="Elevar | Powering Conversion Tracking For Over 6,500 D2C Brands | Elevar" />
	<meta property="og:description" content="Deploy a data layer, connect to 40+ marketing channels, ensure all of your conversions are tracked, and enable server side tagging for Shopify." />
	<meta property="og:url" content="https://getelevar.com/" />
	<meta property="og:site_name" content="Elevar" />
	<meta property="article:publisher" content="https://www.facebook.com/getelevar" />
	<meta property="article:modified_time" content="2025-04-10T22:53:00+00:00" />
	<meta property="og:image" content="https://getelevar.com/wp-content/uploads/2020/12/vuori-datalayer.png" />
	<meta property="og:image:width" content="1300" />
	<meta property="og:image:height" content="900" />
	<meta property="og:image:type" content="image/png" />
	<meta name="twitter:card" content="summary_large_image" />
	<meta name="twitter:site" content="@getelevar" />
	<meta name="twitter:label1" content="Est. reading time" />
	<meta name="twitter:data1" content="6 minutes" />
	<script type="application/ld+json" class="yoast-schema-graph">{"@context":"https://schema.org","@graph":[{"@type":"WebPage","@id":"https://getelevar.com/","url":"https://getelevar.com/","name":"Elevar | Powering Conversion Tracking For Over 6,500 D2C Brands | Elevar","isPartOf":{"@id":"https://getelevar.com/#website"},"about":{"@id":"https://getelevar.com/#organization"},"primaryImageOfPage":{"@id":"https://getelevar.com/#primaryimage"},"image":{"@id":"https://getelevar.com/#primaryimage"},"thumbnailUrl":"https://getelevar.com/wp-content/uploads/2020/12/vuori-datalayer.png","datePublished":"2021-05-16T11:20:36+00:00","dateModified":"2025-04-10T22:53:00+00:00","description":"Deploy a data layer, connect to 40+ marketing channels, ensure all of your conversions are tracked, and enable server side tagging for Shopify.","breadcrumb":{"@id":"https://getelevar.com/#breadcrumb"},"inLanguage":"en-US","potentialAction":[{"@type":"ReadAction","target":["https://getelevar.com/"]}]},{"@type":"ImageObject","inLanguage":"en-US","@id":"https://getelevar.com/#primaryimage","url":"https://getelevar.com/wp-content/uploads/2020/12/vuori-datalayer.png","contentUrl":"https://getelevar.com/wp-content/uploads/2020/12/vuori-datalayer.png","width":1300,"height":900,"caption":"elevar-datalayer"},{"@type":"BreadcrumbList","@id":"https://getelevar.com/#breadcrumb","itemListElement":[{"@type":"ListItem","position":1,"name":"Home"}]},{"@type":"WebSite","@id":"https://getelevar.com/#website","url":"https://getelevar.com/","name":"Elevar","description":"Analytics Tools to Automate your eCommerce Marketing","publisher":{"@id":"https://getelevar.com/#organization"},"potentialAction":[{"@type":"SearchAction","target":{"@type":"EntryPoint","urlTemplate":"https://getelevar.com/?s={search_term_string}"},"query-input":"required name=search_term_string"}],"inLanguage":"en-US"},{"@type":"Organization","@id":"https://getelevar.com/#organization","name":"Elevar","url":"https://getelevar.com/","logo":{"@type":"ImageObject","inLanguage":"en-US","@id":"https://getelevar.com/#/schema/logo/image/","url":"https://getelevar.com/wp-content/uploads/2017/08/Elevar_Logo_Horizontal-e1664383620876.png","contentUrl":"https://getelevar.com/wp-content/uploads/2017/08/Elevar_Logo_Horizontal-e1664383620876.png","width":800,"height":247,"caption":"Elevar"},"image":{"@id":"https://getelevar.com/#/schema/logo/image/"},"sameAs":["https://www.facebook.com/getelevar","https://twitter.com/getelevar","https://www.instagram.com/getelevar/","https://www.linkedin.com/company/15215553/","https://www.youtube.com/channel/UCsmm8h3Mu__aqjzN1wM0Mnw"]}]}</script>
	<!-- / Yoast SEO plugin. -->


<link rel='dns-prefetch' href='//cdnjs.cloudflare.com' />
<link rel='dns-prefetch' href='//js.hs-scripts.com' />
<script type="text/javascript">
/* <![CDATA[ */
window._wpemojiSettings = {"baseUrl":"https:\/\/s.w.org\/images\/core\/emoji\/15.0.3\/72x72\/","ext":".png","svgUrl":"https:\/\/s.w.org\/images\/core\/emoji\/15.0.3\/svg\/","svgExt":".svg","source":{"concatemoji":"https:\/\/getelevar.com\/wp-includes\/js\/wp-emoji-release.min.js?ver=6.7.2"}};
/*! This file is auto-generated */
!function(i,n){var o,s,e;function c(e){try{var t={supportTests:e,timestamp:(new Date).valueOf()};sessionStorage.setItem(o,JSON.stringify(t))}catch(e){}}function p(e,t,n){e.clearRect(0,0,e.canvas.width,e.canvas.height),e.fillText(t,0,0);var t=new Uint32Array(e.getImageData(0,0,e.canvas.width,e.canvas.height).data),r=(e.clearRect(0,0,e.canvas.width,e.canvas.height),e.fillText(n,0,0),new Uint32Array(e.getImageData(0,0,e.canvas.width,e.canvas.height).data));return t.every(function(e,t){return e===r[t]})}function u(e,t,n){switch(t){case"flag":return n(e,"\ud83c\udff3\ufe0f\u200d\u26a7\ufe0f","\ud83c\udff3\ufe0f\u200b\u26a7\ufe0f")?!1:!n(e,"\ud83c\uddfa\ud83c\uddf3","\ud83c\uddfa\u200b\ud83c\uddf3")&&!n(e,"\ud83c\udff4\udb40\udc67\udb40\udc62\udb40\udc65\udb40\udc6e\udb40\udc67\udb40\udc7f","\ud83c\udff4\u200b\udb40\udc67\u200b\udb40\udc62\u200b\udb40\udc65\u200b\udb40\udc6e\u200b\udb40\udc67\u200b\udb40\udc7f");case"emoji":return!n(e,"\ud83d\udc26\u200d\u2b1b","\ud83d\udc26\u200b\u2b1b")}return!1}function f(e,t,n){var r="undefined"!=typeof WorkerGlobalScope&&self instanceof WorkerGlobalScope?new OffscreenCanvas(300,150):i.createElement("canvas"),a=r.getContext("2d",{willReadFrequently:!0}),o=(a.textBaseline="top",a.font="600 32px Arial",{});return e.forEach(function(e){o[e]=t(a,e,n)}),o}function t(e){var t=i.createElement("script");t.src=e,t.defer=!0,i.head.appendChild(t)}"undefined"!=typeof Promise&&(o="wpEmojiSettingsSupports",s=["flag","emoji"],n.supports={everything:!0,everythingExceptFlag:!0},e=new Promise(function(e){i.addEventListener("DOMContentLoaded",e,{once:!0})}),new Promise(function(t){var n=function(){try{var e=JSON.parse(sessionStorage.getItem(o));if("object"==typeof e&&"number"==typeof e.timestamp&&(new Date).valueOf()<e.timestamp+604800&&"object"==typeof e.supportTests)return e.supportTests}catch(e){}return null}();if(!n){if("undefined"!=typeof Worker&&"undefined"!=typeof OffscreenCanvas&&"undefined"!=typeof URL&&URL.createObjectURL&&"undefined"!=typeof Blob)try{var e="postMessage("+f.toString()+"("+[JSON.stringify(s),u.toString(),p.toString()].join(",")+"));",r=new Blob([e],{type:"text/javascript"}),a=new Worker(URL.createObjectURL(r),{name:"wpTestEmojiSupports"});return void(a.onmessage=function(e){c(n=e.data),a.terminate(),t(n)})}catch(e){}c(n=f(s,u,p))}t(n)}).then(function(e){for(var t in e)n.supports[t]=e[t],n.supports.everything=n.supports.everything&&n.supports[t],"flag"!==t&&(n.supports.everythingExceptFlag=n.supports.everythingExceptFlag&&n.supports[t]);n.supports.everythingExceptFlag=n.supports.everythingExceptFlag&&!n.supports.flag,n.DOMReady=!1,n.readyCallback=function(){n.DOMReady=!0}}).then(function(){return e}).then(function(){var e;n.supports.everything||(n.readyCallback(),(e=n.source||{}).concatemoji?t(e.concatemoji):e.wpemoji&&e.twemoji&&(t(e.twemoji),t(e.wpemoji)))}))}((window,document),window._wpemojiSettings);
/* ]]> */
</script>
<style id='wp-emoji-styles-inline-css' type='text/css'>

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
<link rel='stylesheet' id='wp-block-library-css' href='https://getelevar.com/wp-includes/css/dist/block-library/style.min.css?ver=6.7.2' type='text/css' media='all' />
<style id='classic-theme-styles-inline-css' type='text/css'>
/*! This file is auto-generated */
.wp-block-button__link{color:#fff;background-color:#32373c;border-radius:9999px;box-shadow:none;text-decoration:none;padding:calc(.667em + 2px) calc(1.333em + 2px);font-size:1.125em}.wp-block-file__button{background:#32373c;color:#fff;text-decoration:none}
</style>
<style id='global-styles-inline-css' type='text/css'>
:root{--wp--preset--aspect-ratio--square: 1;--wp--preset--aspect-ratio--4-3: 4/3;--wp--preset--aspect-ratio--3-4: 3/4;--wp--preset--aspect-ratio--3-2: 3/2;--wp--preset--aspect-ratio--2-3: 2/3;--wp--preset--aspect-ratio--16-9: 16/9;--wp--preset--aspect-ratio--9-16: 9/16;--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;--wp--preset--spacing--20: 0.44rem;--wp--preset--spacing--30: 0.67rem;--wp--preset--spacing--40: 1rem;--wp--preset--spacing--50: 1.5rem;--wp--preset--spacing--60: 2.25rem;--wp--preset--spacing--70: 3.38rem;--wp--preset--spacing--80: 5.06rem;--wp--preset--shadow--natural: 6px 6px 9px rgba(0, 0, 0, 0.2);--wp--preset--shadow--deep: 12px 12px 50px rgba(0, 0, 0, 0.4);--wp--preset--shadow--sharp: 6px 6px 0px rgba(0, 0, 0, 0.2);--wp--preset--shadow--outlined: 6px 6px 0px -3px rgba(255, 255, 255, 1), 6px 6px rgba(0, 0, 0, 1);--wp--preset--shadow--crisp: 6px 6px 0px rgba(0, 0, 0, 1);}:where(.is-layout-flex){gap: 0.5em;}:where(.is-layout-grid){gap: 0.5em;}body .is-layout-flex{display: flex;}.is-layout-flex{flex-wrap: wrap;align-items: center;}.is-layout-flex > :is(*, div){margin: 0;}body .is-layout-grid{display: grid;}.is-layout-grid > :is(*, div){margin: 0;}:where(.wp-block-columns.is-layout-flex){gap: 2em;}:where(.wp-block-columns.is-layout-grid){gap: 2em;}:where(.wp-block-post-template.is-layout-flex){gap: 1.25em;}:where(.wp-block-post-template.is-layout-grid){gap: 1.25em;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}
:where(.wp-block-post-template.is-layout-flex){gap: 1.25em;}:where(.wp-block-post-template.is-layout-grid){gap: 1.25em;}
:where(.wp-block-columns.is-layout-flex){gap: 2em;}:where(.wp-block-columns.is-layout-grid){gap: 2em;}
:root :where(.wp-block-pullquote){font-size: 1.5em;line-height: 1.6;}
</style>
<link rel='stylesheet' id='contact-form-7-css' href='https://getelevar.com/wp-content/plugins/contact-form-7/includes/css/styles.css?ver=5.5.6' type='text/css' media='all' />
<link rel='stylesheet' id='elevar-style-css' href='https://getelevar.com/wp-content/themes/elevar/style.css?ver=2.0.4' type='text/css' media='all' />
<link rel='stylesheet' id='font-awesome-css' href='https://getelevar.com/wp-content/plugins/js_composer/assets/lib/bower/font-awesome/css/font-awesome.min.css?ver=5.2' type='text/css' media='all' />
<link rel='stylesheet' id='magnific-popup-css' href='https://getelevar.com/wp-content/themes/elevar/css/magnific-popup.css?ver=6.7.2' type='text/css' media='all' />
<link rel='stylesheet' id='slick-css' href='https://getelevar.com/wp-content/themes/elevar/css/slick.css?ver=6.7.2' type='text/css' media='all' />
<link rel='stylesheet' id='main-css' href='https://getelevar.com/wp-content/themes/elevar/css/main.css?ver=5.6.6' type='text/css' media='all' />
<link rel='stylesheet' id='fullpage-style-css' href='https://getelevar.com/wp-content/themes/elevar/css/fullpage.css?ver=6.7.2' type='text/css' media='all' />
<link rel='stylesheet' id='js_composer_front-css' href='https://getelevar.com/wp-content/plugins/js_composer/assets/css/js_composer.min.css?ver=5.2' type='text/css' media='all' />
<link rel='stylesheet' id='js_composer_custom_css-css' href='//getelevar.com/wp-content/uploads/js_composer/custom.css?ver=5.2' type='text/css' media='all' />
<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js" id="jquery-js"></script>
<script type="text/javascript" src="https://getelevar.com/wp-content/plugins/cf7-invisible-recaptcha/js/cf7_invisible_recaptcha.js?ver=1.2.3" id="cf7_invisible_recaptcha_functions-js"></script>
<script type="text/javascript" src="https://getelevar.com/wp-content/plugins/wp-hide-post/public/js/wp-hide-post-public.js?ver=2.0.10" id="wp-hide-post-js"></script>
<script type="text/javascript" src="https://getelevar.com/wp-content/themes/elevar/js/libraries/modernizr.js?ver=6.7.2" id="modernizr-js"></script>
<script type="text/javascript" src="https://getelevar.com/wp-content/themes/elevar/js/libraries/bootstrap.min.js?ver=6.7.2" id="bootstrap-js"></script>
<script type="text/javascript" src="https://getelevar.com/wp-content/themes/elevar/js/plugins/slick.min.js?ver=6.7.2" id="slickj-js"></script>
<script type="text/javascript" src="https://getelevar.com/wp-content/themes/elevar/js/plugins/magnific-popup.js?ver=6.7.2" id="magnific-popup-js"></script>
<script type="text/javascript" src="https://getelevar.com/wp-content/themes/elevar/js/plugins/jquery.matchHeight.js?ver=6.7.2" id="height-js"></script>
<script type="text/javascript" id="script-js-extra">
/* <![CDATA[ */
var elevar_object = {"ajax_url":"https:\/\/getelevar.com\/wp-admin\/admin-ajax.php","template_url":"https:\/\/getelevar.com\/wp-content\/themes\/elevar"};
/* ]]> */
</script>
<script type="text/javascript" src="https://getelevar.com/wp-content/themes/elevar/js/main.js?ver=1746714804" id="script-js"></script>
<script type="text/javascript" id="ajax_elevar-js-extra">
/* <![CDATA[ */
var elevar_object = {"ajax_url":"https:\/\/getelevar.com\/wp-admin\/admin-ajax.php","template_url":"https:\/\/getelevar.com\/wp-content\/themes\/elevar"};
/* ]]> */
</script>
<script type="text/javascript" src="https://getelevar.com/wp-content/themes/elevar/js/ajax.js?ver=6.7.2" id="ajax_elevar-js"></script>
<link rel="https://api.w.org/" href="https://getelevar.com/wp-json/" /><link rel="alternate" title="JSON" type="application/json" href="https://getelevar.com/wp-json/wp/v2/pages/8547" /><link rel='shortlink' href='https://getelevar.com/' />
<link rel="alternate" title="oEmbed (JSON)" type="application/json+oembed" href="https://getelevar.com/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fgetelevar.com%2F" />
<link rel="alternate" title="oEmbed (XML)" type="text/xml+oembed" href="https://getelevar.com/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fgetelevar.com%2F&#038;format=xml" />
			<!-- DO NOT COPY THIS SNIPPET! Start of Page Analytics Tracking for HubSpot WordPress plugin v10.1.16-->
			<script type="text/javascript" class="hsq-set-content-id" data-content-id="standard-page">
				var _hsq = _hsq || [];
				_hsq.push(["setContentType", "standard-page"]);
			</script>
			<!-- DO NOT COPY THIS SNIPPET! End of Page Analytics Tracking for HubSpot WordPress plugin -->
			<meta name="generator" content="Powered by Visual Composer - drag and drop page builder for WordPress."/>
<!--[if lte IE 9]><link rel="stylesheet" type="text/css" href="https://getelevar.com/wp-content/plugins/js_composer/assets/css/vc_lte_ie9.min.css" media="screen"><![endif]-->		<style type="text/css" id="wp-custom-css">
			@media screen and (max-width: 600px) {
	#menu-footer-5 {
		display: flex;
		flex-direction: column;
	}
	#menu-footer-5 li {
		margin-bottom: 8px;
	}
}

.tab-box .vc_custom_1660943032919 {
    padding-right: 0 !important;
    padding-left: 0 !important;
}

@media screen and (min-width: 992px) {
  header.header:not(.header--academy) div.logo {
    width: 20%;
  }
  header.header:not(.header--academy) div.menutop {
    width: 80%;
  }
	#menu-main-menu-1 {
    display: unset !important;
  }
	.menutop #menu-main-menu-1 > li {
    margin: 0 10px;
}
}


@media (max-width: 767px) {
	.section-tab-3 .tab-box.tab-box-2 {
    margin-bottom: 0;
}
	.section-tab-3 .tab-box.tab-box-2 .vc_column-inner,
	.section-tab-3 .tab-box.tab-box-3 .vc_column-inner{
			-webkit-box-shadow: none !important;
			box-shadow: none!important;
			border: none !important;
		
	}
	.section-tab-3 .tab-box.tab-box-2 .vc_column-inner {
    border: 2px solid #eee !important;
    margin-bottom: 15px;
    margin-top: 30px;
}
}

.header .menu-item-432 ul.sub-menu {
    width: auto !important;
    min-width: 380px;
	  padding-top: 18px !important;
}
.header .menu-item-432 li.megamenu {
   border-right: none !important;
   width: 100% !important;
}
.header .menu-item-432 li.megamenu > .text-wrapper > h3,
#menu-item-432 .text-wrapper span.sub-heading-1 {
   display: none !important;
}

.header #toggle.active .top,
.header #toggle.active .middle,
.header #toggle.active .bottom {
	background: #FFF;
}
.header.header-color #toggle.active .top,
.header.header-color #toggle.active .middle,
.header.header-color #toggle.active .bottom {
	background: #6354EB;
}

.header .menu-item-432 ul.sub-menu:before {
    left: unset;
	right: 100px;
}

.header .menu-item-432 ul.sub-menu ul.sub-menu:before {
    display: none;
}

.blog-txt table.table-center {
    display: flex;
    flex-direction: column;
    align-items: center;
}
blog-txt .table-center td {
    padding: 0 20px;
}

form.post-password-form {
    z-index: 99999999;
    position: relative;
}
form.post-password-form  {
	z-index: 999999999999999;
    position: fixed;
    padding: 30px;
    background: #fff;
    width: 100%;
    left: 0;
}
form.post-password-form input[name="post_password"] {
    border: 1px solid #ccc;
    min-height: 40px;
    min-width: 200px;
}
form.post-password-form input[type="submit"] {
    margin-top: 15px;
    margin-bottom: 0;
    background: #5F5CE7;
    border: 1px solid #5F5CE7;
    box-sizing: border-box;
    border-radius: 2px;
    color: #fff !important;
    text-decoration: none;
    min-width: 140px;
    min-height: 40px;
}

@media screen and (min-width: 768px) {
	.postid-13633	.form_embed {
		top: -166px;
	}
.postid-13633 .container.workshop__content-header {
    margin-bottom: 30px;
}
	.postid-13633 .row.speakers-grid {
/*     flex-direction: column; */
}
}


li#menu-item-13801 {
    color: #BCC1F8;
}		</style>
		<style type="text/css" data-type="vc_custom-css">@media screen and (max-width: 767px) {
#page #do-more.section.hero.hero-clean {
    padding-top: 110px !important;
    padding-bottom: 120px !important;
    text-align: center;
}
#page #do-more.section.hero.hero-clean h2 {
    text-align: center !important;
}
#page #do-more.section.hero.hero-clean .wpb_single_image {
    text-align: center !important;
    margin-top: 30px;
}
}


.beacon-lead-magnet {
        margin-top: 100px;
    }

@media only screen and (max-width: 1000px) {
    .hero-content {
        margin-top: 100px;
    }
    .beacon-lead-magnet {
        margin-top: 10px;
    }
}

.vc_images_carousel .vc_carousel-inner .vc_carousel-slideline .vc_carousel-slideline-inner .vc_transition {
    transition: .5s ease;
}

/* Hero Updates */
.home .header-color, .page-id-6830 .header-color {
	background-color: #fff;
}
.hero.hero-clean {
	background-image: none !important;
	    padding-top: 120px;
}
.hero.hero-clean p {
	color: #647380;
}
.hero.hero-clean.section div.vc_btn3-container.btn.btn-blank {
    margin-left: 20px;
    margin-top: 0;
}
.hero.hero-clean.section .vc_btn3-container.btn.btn-default a {
    background: #7d6fee;
}
.hero.hero-clean.section .vc_btn3-container.btn.btn-default a:hover {
    background: #26E6B5;
}
.hero.hero-clean.section .hero-content {
    margin-left: 0 !important;
}
@media (min-width: 768px) and (max-width: 991px) {
	.hero.hero-clean .hero-content h1 , .hero.hero-clean .hero-content p{
		/*text-align: left !important;*/
	}	
}

@media (max-width: 767px) {
    #page .section.hero.hero-clean {
        padding-top: 0 !important;
        padding-bottom: 0 !important;
    }
    #page .section.hero.hero-clean div.vc_btn3-container.btn.btn-blank a {
        text-align: center;
        margin-left: -10px;
    }
    
    .wpb_video_widget.vc_video-aspect-ratio-169 .wpb_video_wrapper {
        margin-bottom: 70px;
    }
}

#flywheel_slider img {
	height: auto;
}
#flywheel_slider .flexslider {
	box-shadow: none !important;
}
#flywheel_slider .flex-direction-nav, #flywheel_slider .flex-control-nav {
    display: none;
}
@media (min-width: 768px) {
	#flywheel_slider .flexslider {
		padding: 0 0 0 60px;
	}
}

#logo-callouts.section--logo-callout {
    padding-bottom: 80px;
}
#logo-callouts.section--logo-callout h3 {
	/*color: #212B36;*/
	/*font-size: 48px !important;*/
	/*margin-bottom: 30px !important;*/
}
#logo-callouts.section--logo-callout p {
	color: #647380 !important;
}
#logo-callouts.section--logo-callout img {
	max-height: 40px;
	width: auto !important;
	margin-top: 30px;
}
@media (min-width: 768px) {
	#logo-callouts.section--logo-callout .wpb_column .vc_separator {
		display: none;
	}
}
@media (max-width: 767px) {
    #logo-callouts.section--logo-callout {
        padding-top: 0 !important;
    }
}

.diy-audit > div{
	padding-bottom: 0 !important;
	padding-top: 210px !important;
	text-align: center;
}
.diy-audit h2 {
	text-align: center !important;
}
.diy-audit > div {
    background-repeat: no-repeat;
    background-position: center -21px;
}
.diy-audit p {
   color: #C4CDD5 !important;
}
@media (min-width: 768px) {
	.diy-audit > div{
		background-position: left center;
		padding-left: 240px !important;
		padding-top: 40px !important;
		text-align: left;
		min-height: 230px;
	}
	.diy-audit h2 {
		text-align: left !important;
	}
}
@media (max-width: 767px) {
	.diy-audit p {
		max-width: 300px;
		margin: 0 auto;
	}
}

.signup-form--inline ul{
	list-style-type: none;
	margin: 0 0 10px !important;
}
.signup-form--inline ul label{
	font-size: 14px;
}
.signup-form--inline .hs-form-field > label{
	display: none;
}
.signup-form--inline form {
	width: 100%;
	max-width: 300px;
}
@media (max-width: 767px) {
	.signup-form--inline form {
		margin: 0 auto;
	}	
}
.signup-form--inline input {
    background-color: #EFF2F5;
    padding: 15px;
    margin-bottom: 15px;
	width: 100%;
/* 	max-width: 300px; */
}
.signup-form--inline input[type=submit]{
	background-color: #5F5CE7;
	color: #fff;
}

@media (min-width: 768px) {
	.vert-margin-100--desktop {
	    margin-top: 100px !important;
	    margin-bottom: 100px !important;
	}
}
.div.vc_btn3-container.btn.btn-default a {
    background: #6354EB!important;
}
.section p {
    color: #333;
}
.centered-body-copy {
    font-size: 18px;
    color: #333;
}
.section .wpb_wrapper ul li {
    font-size: 16px;
    color: #333;
}

/* May 2021 */
#client_logos_1 {
    display: flex;
    max-width: 1064px;
    flex-wrap: wrap;
    margin: 0 auto 90px;
    align-items: center;
    justify-content: center;
}
#client_logos_1 img {
    max-width: 150px;
    padding: 20px;
    margin-bottom: 20px;
}
#page .clients-container {
    padding: 10px 0 0 !important;
}
@media screen and (max-width: 991px){
    #client_logos_1 img {
      padding: 0 20px 20px;
    }
}


ul.checklist {
    background: #FFFFFF;
    box-shadow: 3.31228px 3.31228px 33.1228px rgb(33 43 54 / 10%);
    border-radius: 6.62456px;
    list-style-type: none;
    padding: 32px 24px;
    max-width: 520px;
}
ul.checklist.tilted {
    transform: rotate(2deg);
}
ul.checklist li {
    display: flex;
    align-items: center;
    margin: 0px 0 12px;
    color: #454F5A !important;
    line-height: 1.2 !important;
}
ul.checklist li span {
    position: relative;
}
ul.checklist li img {
    margin-right: 6px;
    margin-bottom: 0 !important;
}
ul.checklist .tag_callout {
    position: absolute;
    left: 100%;
    top: -10px;
}
@media screen and (max-width: 767px) {
    ul.checklist {
        margin: 0 auto !important;
        max-width: calc(100% - 30px);
    }
    ul.checklist .tag_callout {
        width: 160px;
    }
}
@media screen and (max-width: 600px) {
    ul.checklist .tag_callout {
        display: none;
    }
}
@media screen and (min-width: 768px) and (max-width: 991px) {
    ul.checklist .tag_callout {
        display: none;
    }
}

/* Vid Tabs */
.tabbed-section .nav-tabs {
    margin: 0 !important;
}
.tabbed-section__footer {
    display: none !important;
}
.tabbed-section__body .tab-pane p {
    display: none;
}
@media screen and (max-width: 1300px){
    .tabbed-section .nav-tabs a {
       font-size: 16px !important;
    }
}
@media screen and (max-width: 991px){
    .tabbed-section .nav-tabs a {
       font-size: 14px !important;
    }
}




#client_needs_container {
    background-image: linear-gradient(-16deg, #f7f8fb 45%, #fafbfc 44%);
    display: flex;
    align-items: center;
    padding-top: 80px !important;
    padding-bottom: 80px !important;
    margin-bottom: 70px;
}
#client_needs_container .relative {
    position: relative;
}
#client_needs_container .relative h2 {
    font-size: 38px;
    max-width: 275px;
    left: 60px;
    position: relative;
}
#client_needs_container .relative .arrow {
    position: absolute;
    top: -30px;
    right: 20px;
}
@media screen and (max-width: 1200px) {
    #client_needs_container .relative .arrow {
        top: -50px;
    }
    #client_needs_container .relative h2 {
        font-size: 32px;
    }
}
@media screen and (max-width: 991px) {
    #client_needs_container .relative h2 {
        left: 0;
    }
}
@media screen and (max-width: 767px) {
    #client_needs_container {
        flex-direction: column;
    }
    #client_needs_container .relative h2 {
        max-width: 300px;
        position: static;
        text-align: center !important;
        margin: 0 auto;
        left: 60px;
    }
    #client_needs_container .relative .arrow {
        display: none;
    }
}



.opinion-wrapper {
    background-color: #fafbfc;
    padding: 60px 40px !important;
    margin: 100px 0;
}
.opinion2-single-inner .content-box {
    background-color: #fafbfc !important;
    padding: 30px !important;
}


.masthead-video-tabs .tabbed-section--videos .container {
    width: auto;
}

@media screen and (min-width: 786px){
#hero-clean__sliderbox {
    width: 58% !important;
}
}

#how-it-works p {
    max-width: 600px;
    margin: 0 auto;
    color: #647380;
}

.has-purple-buttons .vc_btn3-container.btn.btn-default a {
    background: #7d6fee;
}
.has-centered-buttons .vc_btn3-container.btn.btn-default {
    margin-left: auto;
    margin-right: auto;
    display: block;
}


.v2.opinion-wrapper .slick-arrow.slick-prev, .v2.opinion-wrapper .slick-arrow.slick-next {
    left: 20px !important;
    top: 200px !important;
    background-color: transparent;
    box-shadow: none;
}
.v2.opinion-wrapper .slick-arrow.slick-next {
    right: 20px !important;
    left: auto !important;
}
.v2.opinion-wrapper .slick-arrow i {
    color: #5F5CE7;
    font-size: 17px;
}
.v2.opinion-wrapper .slick-arrow.slick-prev i:before {
    content: "\f060";
}
.v2.opinion-wrapper .slick-arrow.slick-next i:before {
    content: "\f061";
}
.v2.opinion-wrapper blockquote {
    margin-left: auto !important;
    margin-bottom: 20px;
}
@media screen and (max-width: 767px){
    #page .opinion-wrapper.v2 {
        width: 100% !important;
        padding: 60px 0 !important;
    }
    #page .opinion2-single-inner .content-box {
        padding: 30px 0px !important;
    }
    #page .opinion2-single-inner {
        background-color: transparent;
    }
    #page .opinion-wrapper.v2 .image-box {
        min-height: 170px;
        width: 160px;
        margin: 0 auto;
    }
    #page .opinion2-single-inner .content-box .logo {
        margin: 0 auto;
    }
    #page .opinion2-single-inner .name,
    #page .opinion2-single-inner span,
    #page .opinion2-single-inner blockquote {
        text-align: center;
    }
}
@media screen and (min-width: 440px) and  (max-width: 767px){
    #page .v2.opinion-wrapper .slick-arrow.slick-prev {
        left: 15% !important;
    } 
    #page .v2.opinion-wrapper .slick-arrow.slick-next {
        right: 15% !important;
    } 
}


#page .section h3.vc_custom_heading {
    font-size: 20px !important;
    color: #212B36;
}
#page .section p {
    color: #647380 !important;
}

.section-connector-box, .section-connector-box .vc_column-inner  {
    margin: 0 !important;
    padding: 0 !important;
}
#page .section-connector {
    /*content: "" !important;*/
    width: 300px;
    height: 150px;
    background-image: url(https://getelevar.com/wp-content/uploads/2021/05/connector.png);
    background-repeat: no-repeat;
    background-size: 100%;
    margin: 0 auto;
}
.section-connector.flip {
     transform: scaleX(-1);
}
#page .section.has-bottom-connector {
    margin-bottom: 0 !important;
    padding-bottom: 0 !important;
}
#page .section.has-top-connector {
    margin-top: 0 !important;
    padding-top: 0 !important;
}
#page .section.has-connector {
    margin-bottom: 0 !important;
    padding-bottom: 0 !important;
    margin-top: 0 !important;
    padding-top: 0 !important;
}
#page .has-bottom-connector .section-img, #page .has-connector .section-img {
    margin-bottom: 0;
}
@media screen and (max-width: 767px) {
    .section-connector {
        display: none
    }  
    .has-bottom-connector .has_vertical_connector, .has-connector .has_vertical_connector, .has-top-connector .has_vertical_connector  {
        background-image: url(https://getelevar.com/wp-content/uploads/2021/05/mobile_connector.png);
        background-repeat: no-repeat;
        padding-left: 45px;
        padding-bottom: 60px;
        background-position: 32px bottom;
        padding-right: 20px;
    }
    .has_vertical_connector h3 {
        margin-top: 0;
        position: relative;
    }
    .has_vertical_connector h3:before {
        content: "";
        width: 10px;
        height: 10px;
        border: 1px solid #5F5CE7;
        background-color: #fff;
        position: absolute;
        left: -32px;
        top: 8px;
        border-radius: 100px;
        box-shadow: 0 -10px 1px 5px #fff;
    }
}

#page .meta-title {
  margin-bottom: 15px;
}
#page .meta-title h5, #page .meta-title h6 {
  color: #929EAA;
  font-size: 12px;
  font-weight: 600;
  letter-spacing: 1px;
  text-transform: uppercase;
}
@media screen and (max-width: 767px){
    #page .meta-title {
      margin-top: 60px;
    }
}

.max-width--100, .max-width--100 img {
    max-width: 100%;
}


@media screen and (max-width: 767px){
    .section.column-reverse {
        flex-direction: column-reverse;
    }
}
.full-width-checklist {
    background-image: linear-gradient(-16deg, #f9f9fe 56%, #fff 55%);
    padding-bottom: 65px;
}
.full-width-checklist .checklist {
    margin: 0 auto !important;
    background-color: transparent;
    box-shadow: none;
    padding: 0;
}
.full-width-checklist .checklist li {
    background: rgba(192, 211, 254, 0.15);
    border-radius: 4px;
    padding: 8px 16px;
    margin-bottom: 4px;
}
.full-width-checklist h2 {
    max-width: 720px;
    margin: 0 auto 25px !important;
}
.full-width-checklist p {
    max-width: 670px;
    margin: 0 auto !important;
}
.full-width-checklist .vc_btn3-container {
    margin: 0 auto;
    display: block;
}
.full-width-checklist a.vc_btn3 {
    background-color: #7d6fee !important;
}
.full-width-checklist .btn.btn-blank a {
    background: transparent !important;
    margin-top: 20px;
    margin-left: 30px;
}
.full-width-checklist .stacked-mobile {
    display: flex;
    align-items: center;
    justify-content: center;
    max-width: 400px;
    margin: 0 auto;
}



.section--stats .stat-callout {
    border-radius: 100px;
    background: #FFFFFF;
    box-shadow: 3.16px 3.16px 45px rgba(33, 43, 54, 0.08);
    font-weight: bold;
    font-size: 56px;
    text-align: center;
    color: #5F5CE7;
    margin: 0 auto;
    width: 170px;
    height: 170px;
    display: flex;
    justify-content: center;
    align-items: center;
    line-height: 1;
    flex-direction: column;
}
.section--stats .stat-callout span {
    font-size: 30px;
}
@media screen and (max-width: 767px){
    .section--stats .stat-callout {
        font-size: 40px;
        width: 120px;
        height: 120px;
    }
    .section--stats .stat-callout span {
        font-size: 20px;
    }
}

.section--get-started {
    padding-top: 40px;
    padding-bottom: 40px;
}
.section--get-started .vc_btn3-container {
    margin: 0 auto;
    display: block;
}
.section--get-started a.vc_btn3 {
    background-color: #7d6fee !important;
}
.section--get-started .btn.btn-blank a {
    background: transparent !important;
    margin-top: 20px;
    margin-left: 30px;
}
.section--get-started .stacked-mobile {
    display: flex;
    align-items: center;
    justify-content: center;
    max-width: 400px;
    margin: 0 auto;
}

.section--good-company {
    padding-top: 70px;
    padding-bottom: 40px
}


.section--price-promo-footer {
    display: none;
}

.section .vc_single_image-img {
    padding: 0 20px;
}


@media screen and (max-width: 767px){
    #quote-carousel .vc_column_container>.vc_column-inner {
        padding-left: 0;
        padding-right: 0
    }
    
    .has_vertical_connector .vc_btn3-container.btn.btn-blank.violet.vc_btn3-inline {
        width: 100%;
        text-align: left;
    }
    
    .section--client-callout .client-callout {
        padding: 0 5px;
    }
    
    .stacked-mobile {
        flex-direction: column;
    }
    .stacked-mobile a {
        margin-left: 0 !important;
        text-align: center !important;
    }
    
}


.partners_box img {
    margin: 0 24px 0 !important;
}

article.blog-txt > h1 {
    display: none !important;
}

.post {
    background-color: #fff !important;
}

.post .blog-txt a {
    text-decoration: none !important;
}

#page .opinion2-single-inner .name {
    padding-bottom: 0;
    margin-bottom: 0;
}

.clients-container .show_desktop {
    display: none;
}  
.clients-container .wpb_single_image img {
    max-height: none;
    max-width: 100%;
}
@media screen and (min-width: 768px) {
    .clients-container .wpb_single_image img {
        max-width: 1225px;
    }
    .clients-container .show_desktop {
        display: block;
    }

    .clients-container .show_mobile {
        display: none;
    }      
}
</style><style type="text/css" data-type="vc_shortcodes-custom-css">.vc_custom_1620745664622{margin-top: -80px !important;margin-bottom: -100px !important;}.vc_custom_1594836661567{padding-top: 65px !important;background-color: #ffffff !important;}.vc_custom_1594836661567{padding-top: 65px !important;background-color: #ffffff !important;}.vc_custom_1619537382264{padding-top: 65px !important;background-color: #fafbfc !important;}.vc_custom_1659458642512{background-color: #ffffff !important;}.vc_custom_1659458648610{background-color: #f9fbfc !important;}.vc_custom_1659458659964{padding-top: 20px !important;}.vc_custom_1619521685033{padding-top: 10px !important;}.vc_custom_1620309629137{margin-bottom: 40px !important;}.vc_custom_1621248598905{padding-top: 20px !important;background-color: #ffffff !important;}.vc_custom_1619804057056{background-color: #ffffff !important;}.vc_custom_1619541529920{padding-top: 100px !important;padding-bottom: 100px !important;}.vc_custom_1619807702005{background-color: #ffffff !important;}.vc_custom_1619808036540{padding-top: 100px !important;padding-bottom: 100px !important;}.vc_custom_1620308966170{background-color: #ffffff !important;}.vc_custom_1620308767610{padding-top: 65px !important;}.vc_custom_1619808691479{padding-top: 20px !important;}.vc_custom_1620213673571{padding-top: 65px !important;}.vc_custom_1621249512603{background-color: #f4f6f8 !important;}.vc_custom_1619524388626{padding-top: 65px !important;background-color: #212b36 !important;}.vc_custom_1619524183266{background-color: #f4f6f8 !important;}.vc_custom_1619520836542{background-color: #f4f6f8 !important;}.vc_custom_1619523850989{padding-top: 112px !important;padding-bottom: 50px !important;background-color: #fcfcff !important;}.vc_custom_1674591927961{margin-top: 15px !important;}.vc_custom_1620670115243{padding-top: 100px !important;}.vc_custom_1688479279524{margin-bottom: -50px !important;}.vc_custom_1619540288743{padding-top: 100px !important;}.vc_custom_1500895717347{padding-right: 0px !important;padding-left: 0px !important;}.vc_custom_1500909319896{padding-right: 0px !important;padding-left: 0px !important;}.vc_custom_1500895717347{padding-right: 0px !important;padding-left: 0px !important;}.vc_custom_1500909319896{padding-right: 0px !important;padding-left: 0px !important;}.vc_custom_1500895717347{padding-right: 0px !important;padding-left: 0px !important;}.vc_custom_1500890239705{padding-top: 100px !important;}.vc_custom_1621249005551{padding-top: 100px !important;}.vc_custom_1619534361139{padding-top: 100px !important;}.vc_custom_1585258401323{padding-bottom: 80px !important;background-image: url(https://elevar-2021.local/wp-content/uploads/2020/03/image-83.png?id=6836) !important;}.vc_custom_1587460398564{margin-top: 20px !important;}.vc_custom_1619524075563{background-color: #f4f6f8 !important;}</style><noscript><style type="text/css"> .wpb_animate_when_almost_visible { opacity: 1; }</style></noscript>  <!--[if lt IE 9]>
      <script src="https://getelevar.com/wp-content/themes/elevar/js/ie/html5shiv.js"></script>
      <script src="https://getelevar.com/wp-content/themes/elevar/js/ie/respond.min.js"></script>
  <![endif]-->
  <style>
    header.header {
      height: 136px;
    }
	header.header svg.logo--color {
    	max-width: 190px;
	}
	.header:not(.header-color) .logo--color path,
    .header:not(.header-color) .logo--color polygon {
    fill: #fff;
  }
    @media screen and (max-width: 991px) {
      header.header {
        height: 66px;
      }  
    }
  </style>
</head>
<body class="home page-template-default page page-id-8547 wpb-js-composer js-comp-ver-5.2 vc_responsive" >
  <!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://walker.getelevar.com/ns.html?id=GTM-NRTVJJC"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->
<div id="page">
  <div class="overlay" id="overlay">
    <nav class="overlay-menu">
      <ul id="menu-main-menu" class="nolist"><li id="menu-item-8294" class="megamenu-main menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-8294"><a href="https://getelevar.com/gtm-suite-v2/">How It Works</a>
<ul class="sub-menu">
<li class=''>
	                          <div class='text-wrapper '>
	                            <span class='sub-heading-1'>Solutions</span>
	                          </div>
	<ul class="sub-menu">
<li class=''>
                        <a href='https://getelevar.com/server-side-tracking/'>
                            <span class='sub-heading-2'>Server-Side Tracking</span><br/>
                            <span class='sub-text-2' >Integrate 40+ channels with one API</span>
                        </a></li><li class=''>
                        <a href='https://getelevar.com/session-enrichment/'>
                            <span class='sub-heading-2'>Session Enrichment</span><br/>
                            <span class='sub-text-2' >Recognize more returning users</span>
                        </a></li><li class=''>
                        <a href='https://getelevar.com/marketing-tag-monitoring/'>
                            <span class='sub-heading-2'>Conversion Monitoring</span><br/>
                            <span class='sub-text-2' >Never miss a conversion</span>
                        </a></li><li class=''>
                        <a href='https://getelevar.com/data-layer-gtm-shopify/'>
                            <span class='sub-heading-2'>Data Layer</span><br/>
                            <span class='sub-text-2' >Power GTM, Shopify Web Pixel, &#038; Elevar server-side tracking</span>
                        </a></li><li class=''>
                        <a href='https://getelevar.com/shopify/'>
                            <span class='sub-heading-2'>Simple Tracking for Shopify</span><br/>
                            <span class='sub-text-2' >Comprehensive data solutions</span>
                        </a></li><li class=''>
                        <a href='/all-integrations'>
                            <span class='sub-heading-2'>Integrations</span><br/>
                            <span class='sub-text-2' >Do more with 50+ integrations.</span>
                        </a></li>	</ul>
</li><li class=''>
	                          <div class='text-wrapper '>
	                            <span class='sub-heading-1'>Use Cases</span>
	                          </div>
	<ul class="sub-menu">
<li class=''>
                        <a href='https://www.getelevar.com/improve-facebook-performance/'>
                            <span class='sub-heading-2'>Improve Meta Performance</span><br/>
                            <span class='sub-text-2' >Lower CPMs, Higher ROAS</span>
                        </a></li><li class=''>
                        <a href='https://getelevar.com/email-sms/'>
                            <span class='sub-heading-2'>2x Abandoned Cart Revenue</span><br/>
                            <span class='sub-text-2' >Klaviyo, Attentive &#038; More</span>
                        </a></li><li class=''>
                        <a href='https://www.getelevar.com/google/'>
                            <span class='sub-heading-2'>Power GA4 Accuracy and Google Ads</span><br/>
                            <span class='sub-text-2' >w/100% conversion accuracy</span>
                        </a></li><li class=''>
                        <a href='https://getelevar.com/checkout-extensibility/'>
                            <span class='sub-heading-2'>Maintain Accuracy in Checkout Extensibility</span><br/>
                            <span class='sub-text-2' >For Shopify</span>
                        </a></li>	</ul>
</li></ul>
</li>
<li id="menu-item-11551" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-11551"><a href="https://getelevar.com/video-demo/">View Demo</a></li>
<li id="menu-item-5937" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-5937"><a href="https://getelevar.com/customers/">Customers &#038; Partners</a>
<ul class="sub-menu">
<li class=''>
	                          <div class='text-wrapper '>
	                            <a href=/customers/ class='sub-heading-1' style='display:inline;' >Customers</a>
	                          </div></li>
<li class=''>
	                          <div class='text-wrapper '>
	                            <a href=/partners/ class='sub-heading-1' style='display:inline;' >Partners</a>
	                          </div></li>
</ul>
</li>
<li id="menu-item-11075" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-11075"><a href="https://getelevar.com/pricing-and-plans/">Pricing</a></li>
<li id="menu-item-432" class="megamenu-main menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-432"><a href="https://getelevar.com/articles/">Learn</a>
<ul class="sub-menu">
<li class=''>
	                          <div class='text-wrapper '>
	                            <span class='sub-heading-1'>Resources</span>
	                          </div>
	<ul class="sub-menu">
<li class=''>
                        <a href='/articles'>
                            <span class='sub-heading-2'>Articles</span><br/>
                            <span class='sub-text-2' >Expand your analytics knowledge.</span>
                        </a></li><li class=''>
                        <a href='/podcasts'>
                            <span class='sub-heading-2'>Podcasts</span><br/>
                            <span class='sub-text-2' >Real-world analytics tips.</span>
                        </a></li><li class=''>
                        <a href='/courses'>
                            <span class='sub-heading-2'>Courses</span><br/>
                            <span class='sub-text-2' >Get better at conversion tracking.</span>
                        </a></li><li class=''>
                        <a href='/events'>
                            <span class='sub-heading-2'>Events</span><br/>
                            <span class='sub-text-2' >Join us online or in-person.</span>
                        </a></li><li class=''>
                        <a href='https://docs.getelevar.com/'>
                            <span class='sub-heading-2'>Help Center</span><br/>
                            <span class='sub-text-2' >Learn how to use Elevar.</span>
                        </a></li>	</ul>
</li></ul>
</li>
<li id="menu-item-2202" class="megamenu-main menu-item menu-item-type-custom menu-item-object-custom menu-item-2202"><a href="https://app.getelevar.com/auth/login">Log In</a></li>
<li id="menu-item-1184" class="extra menu-item menu-item-type-custom menu-item-object-custom menu-item-1184"><a href="https://app.getelevar.com/auth/signup">Sign Up</a></li>
</ul>      <div id="mobile-nav__footer" >
          <a target="_blank" href="https://app.getelevar.com/signin" class="btn btn-blank violet" >Log In</a>
          <a target="_blank" href="https://app.getelevar.com/signup" class="btn btn-bg btn-primary" >Start For Free</a>
      </div>
    </nav>
  </div>
  <header class="header header-color">
    <div class="container">
      <div class="row">
        <div class="col-md-3 col-sm-6 col-xs-5 logo">
          <a href="https://getelevar.com">
			  <svg class="logo--color" version="1.1" id="Layer_2_00000050621017762006428780000011415606476416936833_"
	 xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 1129.8 306"
	 style="enable-background:new 0 0 1129.8 306;" xml:space="preserve">
<style type="text/css">
	.st0{fill:#6354E9;}
	.st1{fill:#30CCEA;}
	.st2{fill:#2FAEFF;}
	.st3{fill:#0062FF;}
</style>
<g id="Layer_1-2">
	<g>
		<g>
			<polygon class="st0" points="751.9,106.9 725.1,106.9 777.6,222.7 783.6,222.7 804.4,222.7 810.6,222.7 863.1,106.9 836.1,106.9 
				794,199.8 			"/>
			<polygon class="st0" points="488.2,199.6 488.2,222.7 582.9,222.7 582.9,199.6 511.4,199.6 511.4,106.9 488.2,106.9 			"/>
			<polygon class="st0" points="453.4,199.6 381.3,199.6 381.3,176.4 453.4,176.4 453.4,153.2 381.3,153.2 381.3,130.1 453.4,130.1 
				453.4,106.9 358.1,106.9 358.1,130.1 358.1,153.2 358.1,176.4 358.1,199.6 358.1,222.7 453.4,222.7 			"/>
			<path class="st0" d="M926.4,129.8l21.1,46.6h-42.2L926.4,129.8z M942.2,106.9h-31.6L858,222.7h26.2l10.5-23.1H958l10.5,23.2h26.2
				L942.2,106.9L942.2,106.9z"/>
			<polygon class="st0" points="606.6,106.9 606.6,222.7 606.6,222.7 701.9,222.7 701.9,199.6 629.8,199.6 629.8,176.4 701.9,176.4 
				701.9,153.2 629.8,153.2 629.8,130.1 701.9,130.1 701.9,106.9 			"/>
			<path class="st0" d="M1095.1,130.1h-53.5v23.2h53.5c6.4,0,11.6-5.2,11.6-11.6S1101.5,130.1,1095.1,130.1 M1095.1,106.9
				c19.2,0,34.7,15.6,34.8,34.7c0,14.3-8.8,27.1-22.1,32.4l22.1,48.8h-26.2l-21-46.3h-41.1v46.3h-23.2V106.9L1095.1,106.9"/>
		</g>
		<g>
			<path class="st0" d="M146,18.4L146,18.4c-49.6,0.1-92.2,35.3-101.4,84.1c-1.4,8.2-2,16.4-1.8,24.7V217c0,7.5,0.1,15-1,22.5
				c-2.3,15.5-9,31.4-21.4,41.6c-5.2,4.3-11.5,7.2-18.2,8.4c-0.4,0.1-1.9,0-2.1,0.3s0,0.5,0,0.6C0,291.5,0,292.7,0,293.8V306
				c17.7-0.1,35.1-4.7,50.5-13.5c15.3-8.8,28.4-21.7,36.1-37.6c4.5-9.4,7.2-19.7,7.7-30.1c-10.2,0-20.3-1.5-30-4.4
				c24.7-5,46.7-18.8,61.9-38.9c12.9-17.4,19.8-38.4,19.7-60V47.6h144l13.2-29.2L146,18.4L146,18.4z M94.4,175.7
				c-6.2,0-11.3-5-11.3-11.3c0-6.2,5-11.3,11.3-11.3c6.2,0,11.3,5,11.3,11.2S100.7,175.7,94.4,175.7
				C94.4,175.7,94.4,175.7,94.4,175.7z"/>
			<path class="st1" d="M152.8,193.6c-13.1,14.4-30.3,24.6-49.2,29.2h75c19.5,0,37.3-11.4,45.4-29.2L152.8,193.6L152.8,193.6z"/>
			<path class="st2" d="M174.9,135.2c-0.7,10-3,19.9-6.8,29.2H237l13.3-29.2L174.9,135.2L174.9,135.2z"/>
			<polygon class="st3" points="175.2,76.8 175.2,106 263.6,106 276.8,76.8 			"/>
		</g>
		<path class="st3" d="M717.4,23.9c0-1-0.4-1.6-1.2-2c-0.4-0.2-1.2-0.3-2.1-0.3h-2.7v7.7h1.4v-3h1.1c0.7,0,1.2,0.1,1.5,0.2
			c0.5,0.3,0.7,0.9,0.7,1.8v0.6l0,0.2c0,0,0,0.1,0,0.1c0,0,0,0,0,0.1h1.3l0-0.1c0-0.1-0.1-0.2-0.1-0.4c0-0.2,0-0.4,0-0.6v-0.6
			c0-0.4-0.1-0.8-0.4-1.2c-0.3-0.4-0.7-0.7-1.3-0.8c0.5-0.1,0.8-0.2,1.1-0.4C717.2,25.1,717.5,24.6,717.4,23.9L717.4,23.9z
			 M715.3,25.2c-0.3,0.1-0.7,0.2-1.3,0.2h-1.2v-2.8h1.2c0.8,0,1.3,0.1,1.7,0.3s0.5,0.6,0.5,1.1C716.1,24.6,715.9,25,715.3,25.2
			L715.3,25.2z M719.2,20.6c-1.4-1.4-3-2-5-2s-3.6,0.7-4.9,2c-1.4,1.4-2,3-2,5s0.7,3.6,2,5c1.4,1.4,3,2.1,5,2.1s3.6-0.7,5-2.1
			c1.4-1.4,2.1-3,2.1-5S720.6,21.9,719.2,20.6L719.2,20.6z M718.5,29.8c-1.2,1.2-2.6,1.8-4.3,1.8s-3.1-0.6-4.3-1.8
			c-1.2-1.2-1.8-2.6-1.8-4.3s0.6-3.1,1.8-4.3c1.2-1.2,2.6-1.8,4.3-1.8s3.1,0.6,4.3,1.8c1.2,1.2,1.8,2.6,1.8,4.3
			S719.7,28.6,718.5,29.8L718.5,29.8z M390.1,17.8c-11.6,0-17.4,4-19.9,7.9V0h-12v77.2h6.6l2.5-8.5c2.3,4,8.6,9.3,22.6,9.3
			c19.2,0,25-14.1,25-30.1S409.4,17.8,390.1,17.8L390.1,17.8z M386.5,68.1c-13.6,0-16.5-8.1-16.5-20.3c0-11.5,2.3-19.7,16.1-19.7
			s16.4,8,16.4,19.8S399.7,68.1,386.5,68.1L386.5,68.1z M463.1,18.6h12.4v58.6h-6.8l-2.5-8.5C464,73,457.8,78,444.6,78
			c-19.4,0-23.1-10.7-23.1-27.2V18.6h12v33.1c0,10.5,2,16,14.5,16s15-6,15-16.6L463.1,18.6L463.1,18.6z M562.3,18.6h15.3v9.9h-15
			v31.9c0,5.5,2.3,8,15,7.4v9.8c-19.3,1.2-27.5-3.4-27.5-17.3V0h12.1C562.3,0,562.3,18.6,562.3,18.6z M611.8,17.8
			c-23,0-29.1,14.7-29.1,30.1s6,30.1,29,30.1s29.2-14.4,29.2-30.1S634.5,17.8,611.8,17.8L611.8,17.8z M611.7,68.1
			c-13.5,0-16.5-9-16.5-20.2s3-20.2,16.6-20.2s16.6,9.3,16.6,20.2S625.4,68.1,611.7,68.1L611.7,68.1z M702,45.6v31.6h-12.1V44.6
			c0-10.4-1.8-16.6-14.3-16.6s-15.1,6.1-15.1,16.6v32.6h-12.2V18.6h6.6l2.8,8.2c2-4,8.1-9,21.4-9C698.2,17.8,702,29,702,45.6z
			 M520.6,47.6L544.1,77h-14.2l-16.3-20.6l-16.3,20.5H483l23.4-29.4l-23.4-29h14.2l16.2,20.1l16-20.1h14.2L520.6,47.6z"/>
	</g>
</g>
</svg>
          </a>
        </div><!-- .logo -->
        <div class="col-md-9 hidden-sm hidden-xs menutop text-right">
          <nav><ul id="menu-main-menu-1" class="nolist"><li class="megamenu-main menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-8294"><a href="https://getelevar.com/gtm-suite-v2/">How It Works</a>
<ul class="sub-menu">
<li class='megamenu'>
	                          <div class='text-wrapper hidden-xs'>
	                            <h3 class='main-heading'>Solutions</h3>
	                          </div>
	<ul class="sub-menu">
<li class=''>
                        <a target='' href='https://getelevar.com/server-side-tracking/'>
                          <div class='icon-wrapper'>
                            <img src='' alt='' class='img-responsive'>
                          </div>
                          <div class='text-wrapper'>
                            <h3 class='main-heading'>Server-Side Tracking</h3>
                            <p>Integrate 40+ channels with one API</p>
                          </div>
                        </a></li><li class=''>
                        <a target='' href='https://getelevar.com/session-enrichment/'>
                          <div class='icon-wrapper'>
                            <img src='' alt='' class='img-responsive'>
                          </div>
                          <div class='text-wrapper'>
                            <h3 class='main-heading'>Session Enrichment</h3>
                            <p>Recognize more returning users</p>
                          </div>
                        </a></li><li class=''>
                        <a target='' href='https://getelevar.com/marketing-tag-monitoring/'>
                          <div class='icon-wrapper'>
                            <img src='' alt='' class='img-responsive'>
                          </div>
                          <div class='text-wrapper'>
                            <h3 class='main-heading'>Conversion Monitoring</h3>
                            <p>Never miss a conversion</p>
                          </div>
                        </a></li><li class=''>
                        <a target='' href='https://getelevar.com/data-layer-gtm-shopify/'>
                          <div class='icon-wrapper'>
                            <img src='' alt='' class='img-responsive'>
                          </div>
                          <div class='text-wrapper'>
                            <h3 class='main-heading'>Data Layer</h3>
                            <p>Power GTM, Shopify Web Pixel, &#038; Elevar server-side tracking</p>
                          </div>
                        </a></li><li class=''>
                        <a target='' href='https://getelevar.com/shopify/'>
                          <div class='icon-wrapper'>
                            <img src='' alt='' class='img-responsive'>
                          </div>
                          <div class='text-wrapper'>
                            <h3 class='main-heading'>Simple Tracking for Shopify</h3>
                            <p>Comprehensive data solutions</p>
                          </div>
                        </a></li><li class=''>
                        <a target='' href='/all-integrations'>
                          <div class='icon-wrapper'>
                            <img src='' alt='' class='img-responsive'>
                          </div>
                          <div class='text-wrapper'>
                            <h3 class='main-heading'>Integrations</h3>
                            <p>Do more with 50+ integrations.</p>
                          </div>
                        </a></li>	</ul>
</li><li class='megamenu'>
	                          <div class='text-wrapper hidden-xs'>
	                            <h3 class='main-heading'>Use Cases</h3>
	                          </div>
	<ul class="sub-menu">
<li class=''>
                        <a target='' href='https://www.getelevar.com/improve-facebook-performance/'>
                          <div class='icon-wrapper'>
                            <img src='' alt='' class='img-responsive'>
                          </div>
                          <div class='text-wrapper'>
                            <h3 class='main-heading'>Improve Meta Performance</h3>
                            <p>Lower CPMs, Higher ROAS</p>
                          </div>
                        </a></li><li class=''>
                        <a target='' href='https://getelevar.com/email-sms/'>
                          <div class='icon-wrapper'>
                            <img src='' alt='' class='img-responsive'>
                          </div>
                          <div class='text-wrapper'>
                            <h3 class='main-heading'>2x Abandoned Cart Revenue</h3>
                            <p>Klaviyo, Attentive &#038; More</p>
                          </div>
                        </a></li><li class=''>
                        <a target='' href='https://www.getelevar.com/google/'>
                          <div class='icon-wrapper'>
                            <img src='' alt='' class='img-responsive'>
                          </div>
                          <div class='text-wrapper'>
                            <h3 class='main-heading'>Power GA4 Accuracy and Google Ads</h3>
                            <p>w/100% conversion accuracy</p>
                          </div>
                        </a></li><li class=''>
                        <a target='' href='https://getelevar.com/checkout-extensibility/'>
                          <div class='icon-wrapper'>
                            <img src='' alt='' class='img-responsive'>
                          </div>
                          <div class='text-wrapper'>
                            <h3 class='main-heading'>Maintain Accuracy in Checkout Extensibility</h3>
                            <p>For Shopify</p>
                          </div>
                        </a></li>	</ul>
</li></ul>
</li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-11551"><a href="https://getelevar.com/video-demo/">View Demo</a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-5937"><a href="https://getelevar.com/customers/">Customers &#038; Partners</a>
<ul class="sub-menu">
	<li id="menu-item-10422" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-10422"><a href="/customers/">Customers</a></li>
	<li id="menu-item-10423" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-10423"><a href="/partners/">Partners</a></li>
</ul>
</li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-11075"><a href="https://getelevar.com/pricing-and-plans/">Pricing</a></li>
<li class="megamenu-main menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-432"><a href="https://getelevar.com/articles/">Learn</a>
<ul class="sub-menu">
<li class='megamenu'>
	                          <div class='text-wrapper hidden-xs'>
	                            <h3 class='main-heading'>Resources</h3>
	                          </div>
	<ul class="sub-menu">
<li class=''>
                        <a target='' href='/articles'>
                          <div class='icon-wrapper'>
                            <img src='' alt='' class='img-responsive'>
                          </div>
                          <div class='text-wrapper'>
                            <h3 class='main-heading'>Articles</h3>
                            <p>Expand your analytics knowledge.</p>
                          </div>
                        </a></li><li class=''>
                        <a target='' href='/podcasts'>
                          <div class='icon-wrapper'>
                            <img src='' alt='' class='img-responsive'>
                          </div>
                          <div class='text-wrapper'>
                            <h3 class='main-heading'>Podcasts</h3>
                            <p>Real-world analytics tips.</p>
                          </div>
                        </a></li><li class=''>
                        <a target='' href='/courses'>
                          <div class='icon-wrapper'>
                            <img src='' alt='' class='img-responsive'>
                          </div>
                          <div class='text-wrapper'>
                            <h3 class='main-heading'>Courses</h3>
                            <p>Get better at conversion tracking.</p>
                          </div>
                        </a></li><li class=''>
                        <a target='' href='/events'>
                          <div class='icon-wrapper'>
                            <img src='' alt='' class='img-responsive'>
                          </div>
                          <div class='text-wrapper'>
                            <h3 class='main-heading'>Events</h3>
                            <p>Join us online or in-person.</p>
                          </div>
                        </a></li><li class=''>
                        <a target='_blank' href='https://docs.getelevar.com/'>
                          <div class='icon-wrapper'>
                            <img src='' alt='' class='img-responsive'>
                          </div>
                          <div class='text-wrapper'>
                            <h3 class='main-heading'>Help Center</h3>
                            <p>Learn how to use Elevar.</p>
                          </div>
                        </a></li>	</ul>
</li></ul>
</li>
<li class="megamenu-main menu-item menu-item-type-custom menu-item-object-custom menu-item-2202"><a href="https://app.getelevar.com/auth/login">Log In</a></li>
<li class="extra menu-item menu-item-type-custom menu-item-object-custom menu-item-1184"><a href="https://app.getelevar.com/auth/signup">Sign Up</a></li>
</ul></nav>
        </div>
        <div class="col-sm-6 col-xs-7 text-right hidden-lg hidden-md">
          <a href="#" id="toggle">
            <span class="top"></span>
            <span class="middle"></span>
            <span class="bottom"></span>
          </a>
        </div>
      </div><!-- .row -->
    </div><!-- .container -->
  </header><div class="post">
	<div class="container">
		<div class="row">
							<article class="blog-txt col-xs-12">
					<h1>Elevar | Powering Conversion Tracking For Over 6,500 D2C Brands</h1>
					<div class="vc_row wpb_row vc_row-fluid hero hero-beacon hero-clean section vc_custom_1620745664622"><div class="wpb_animate_when_almost_visible wpb_fadeIn fadeIn wpb_column vc_column_container vc_col-sm-12"><div class="vc_column-inner "><div class="wpb_wrapper"><div class="vc_row wpb_row vc_inner vc_row-fluid masthead-video-tabs vc_row-o-content-middle vc_row-flex"><div class="hero-content wpb_column vc_column_container vc_col-sm-6 vc_col-lg-5"><div class="vc_column-inner "><div class="wpb_wrapper"><h1 style="font-size: 46px;color: #212b36;line-height: 58px;text-align: left" class="vc_custom_heading" >Never Miss Another Conversion</h1>
	<div class="wpb_text_column wpb_content_element " >
		<div class="wpb_wrapper">
			<p>Ensure that 100% of your conversions are tracked and delivered to your marketing channels like Facebook, TikTok, Google Ads, GA4, and 40+ other channels with Elevar’s server-side tracking. Plus boost Klaviyo flow performance by 2-3x with Session Enrichment.</p>

		</div>
	</div>
<div class="vc_btn3-container  btn btn-default vc_btn3-inline" >
	<a class="vc_general vc_btn3 vc_btn3-size-md vc_btn3-shape-square vc_btn3-style-flat vc_btn3-color-grey" href="https://www.getelevar.com/pricing-and-plans/" title="Pricing Plans">Sign up for Elevar</a></div>

	<div class="wpb_text_column wpb_content_element  vc_custom_1674591927961" >
		<div class="wpb_wrapper">
			<p>Plans from $0 a month + 15-day free trials on all plans</p>

		</div>
	</div>
</div></div></div><div class="wpb_column vc_column_container vc_col-sm-6"><div class="vc_column-inner "><div class="wpb_wrapper">
	<div class="wpb_video_widget wpb_content_element vc_clearfix   vc_video-aspect-ratio-169 vc_video-el-width-100 vc_video-align-right" >
		<div class="wpb_wrapper">
			
			<div class="wpb_video_wrapper"><iframe title="Marketers, analysts, and Shopify brand owners use Elevar for accurate conversion tracking" width="640" height="360" src="https://www.youtube.com/embed/7d_5X4Ret10?feature=oembed" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe></div>
		</div>
	</div>
</div></div></div></div></div></div></div></div><div data-vc-full-width="true" data-vc-full-width-init="false" data-vc-stretch-content="true" class="vc_row wpb_row vc_row-fluid section clearBoth clients-container col-md-8 vc_custom_1594836661567 vc_row-has-fill"><div class="wpb_column vc_column_container vc_col-sm-12 vc_col-lg-offset-3 vc_col-lg-6 vc_col-md-offset-2 vc_col-md-8"><div class="vc_column-inner "><div class="wpb_wrapper">
	<div class="wpb_text_column wpb_content_element  meta-title" >
		<div class="wpb_wrapper">
			<h5 style="text-align: center;">TRUSTED BY OVER 6,500 D2C LEADERS</h5>

		</div>
	</div>
<h2 style="font-size: 38px;line-height: 42px;text-align: center" class="vc_custom_heading" >Marketers, analysts, and brand owners use Elevar for accurate conversion tracking</h2></div></div></div></div><div class="vc_row-full-width vc_clearfix"></div><div data-vc-full-width="true" data-vc-full-width-init="false" data-vc-stretch-content="true" class="vc_row wpb_row vc_row-fluid section clearBoth clients-container col-md-8 vc_custom_1594836661567 vc_row-has-fill"><div class="wpb_column vc_column_container vc_col-sm-12"><div class="vc_column-inner "><div class="wpb_wrapper">
	<div class="wpb_raw_code wpb_content_element wpb_raw_html" >
		<div class="wpb_wrapper">
			<div style="display:none;" id="client_logos_1">
<img decoding="async" width="" height="" src="/wp-content/uploads/2023/11/Elevar-customer_vuori_160x54-logo.png" class="vc_single_image-img attachment-full" alt="vuori-logo" loading="lazy">
<img decoding="async" width="" height="" src="/wp-content/uploads/2023/11/Elevar-customer_rothys_160x54-logo.png" class="vc_single_image-img attachment-full" alt="rothys-logo" loading="lazy">
<img decoding="async" width="" height="" src="/wp-content/uploads/2023/11/Elevar-customer_vessi_160x54-logo.png" class="vc_single_image-img attachment-full" alt="vessi-logo" loading="lazy">
<img decoding="async" width="" height="" src="/wp-content/uploads/2023/11/Elevar-customer_thrive-causemetics_160x54-logo.png" class="vc_single_image-img attachment-full" alt="thrive-logo" loading="lazy">
<img decoding="async" width="" height="" src="/wp-content/uploads/2023/11/Elevar-customer_snow_160x54-logo.png" class="vc_single_image-img attachment-full" alt="snow-logo" loading="lazy">
<img decoding="async" width="" height="" src="/wp-content/uploads/2023/11/Elevar-customer_skims_160x54-logo.png" class="vc_single_image-img attachment-full" alt="skims-logo" loading="lazy">
<img decoding="async" width="" height="" src="/wp-content/uploads/2023/11/Elevar-customer_cuts_160x54-logo.png" class="vc_single_image-img attachment-full" alt="cuts-logo" loading="lazy">
</div>
		</div>
	</div>

	<div  class="wpb_single_image wpb_content_element vc_align_center   show_desktop">
		
		<figure class="wpb_wrapper vc_figure">
			<div class="vc_single_image-wrapper   vc_box_border_grey"><img fetchpriority="high" decoding="async" width="2467" height="90" src="https://getelevar.com/wp-content/uploads/2025/01/logo-soup-S-combo.png" class="vc_single_image-img attachment-full" alt="" srcset="https://getelevar.com/wp-content/uploads/2025/01/logo-soup-S-combo.png 2467w, https://getelevar.com/wp-content/uploads/2025/01/logo-soup-S-combo-300x11.png 300w, https://getelevar.com/wp-content/uploads/2025/01/logo-soup-S-combo-1024x37.png 1024w, https://getelevar.com/wp-content/uploads/2025/01/logo-soup-S-combo-768x28.png 768w, https://getelevar.com/wp-content/uploads/2025/01/logo-soup-S-combo-1536x56.png 1536w, https://getelevar.com/wp-content/uploads/2025/01/logo-soup-S-combo-2048x75.png 2048w" sizes="(max-width: 2467px) 100vw, 2467px" /></div>
		</figure>
	</div>

	<div  class="wpb_single_image wpb_content_element vc_align_center   show_mobile">
		
		<figure class="wpb_wrapper vc_figure">
			<div class="vc_single_image-wrapper   vc_box_border_grey"><img decoding="async" width="2383" height="360" src="https://getelevar.com/wp-content/uploads/2025/01/logo-soup-–-combo-M.png" class="vc_single_image-img attachment-full" alt="" srcset="https://getelevar.com/wp-content/uploads/2025/01/logo-soup-–-combo-M.png 2383w, https://getelevar.com/wp-content/uploads/2025/01/logo-soup-–-combo-M-300x45.png 300w, https://getelevar.com/wp-content/uploads/2025/01/logo-soup-–-combo-M-1024x155.png 1024w, https://getelevar.com/wp-content/uploads/2025/01/logo-soup-–-combo-M-768x116.png 768w, https://getelevar.com/wp-content/uploads/2025/01/logo-soup-–-combo-M-1536x232.png 1536w, https://getelevar.com/wp-content/uploads/2025/01/logo-soup-–-combo-M-2048x309.png 2048w" sizes="(max-width: 2383px) 100vw, 2383px" /></div>
		</figure>
	</div>
</div></div></div></div><div class="vc_row-full-width vc_clearfix"></div><div id="client_needs_container" data-vc-full-width="true" data-vc-full-width-init="false" class="vc_row wpb_row vc_row-fluid section ----clearBoth ----clients-container ----col-md-8 vc_custom_1619537382264 vc_row-has-fill"><div class="relative wpb_column vc_column_container vc_col-sm-4"><div class="vc_column-inner "><div class="wpb_wrapper"><h2 style="text-align: left" class="vc_custom_heading" >If any of this sounds familiar, you need Elevar</h2>
	<div class="wpb_raw_code wpb_content_element wpb_raw_html" >
		<div class="wpb_wrapper">
			<img decoding="async" class="arrow" src="/wp-content/uploads/2021/04/arrow_curved_1.png" alt="" />
		</div>
	</div>
</div></div></div><div class="wpb_column vc_column_container vc_col-sm-8"><div class="vc_column-inner "><div class="wpb_wrapper">
	<div class="wpb_raw_code wpb_content_element wpb_raw_html" >
		<div class="wpb_wrapper">
			<div id="client_needs_1">
<ul class="checklist tilted">
<li><img decoding="async" src="/wp-content/uploads/2021/05/check-square.png" />I need to improve tracking quality due to iOS changes</li>
<li><img decoding="async" src="/wp-content/uploads/2021/05/check-square.png" />I’m still using native Facebook or GA integrations with Shopify</li>
<li><img decoding="async" src="/wp-content/uploads/2021/05/check-square.png" /><span>My server-side tracking is lacking
<img decoding="async" class="tag_callout" src="/wp-content/uploads/2021/05/Tag.png" alt="" /></span></li>
<li><img decoding="async" src="/wp-content/uploads/2021/05/check-square.png" />My existing tracking in GTM, my theme, and apps is a mess</li>
<li><img decoding="async" src="/wp-content/uploads/2021/05/check-square.png" />I need a better Facebook CAPI setup for Shopify</li>
<li><img decoding="async" src="/wp-content/uploads/2021/05/check-square.png" />I need my tracking to integrate with my Consent provider</li>
<li><img decoding="async" src="/wp-content/uploads/2021/05/check-square.png" />I don't trust my Google Analytics data (or need GA4)</li>
<li><img decoding="async" src="/wp-content/uploads/2021/05/check-square.png" />I want to upgrade to Shopify Checkout Extensibility</li>
<li><img decoding="async" src="/wp-content/uploads/2021/05/check-square.png" />My agency needs me to fix my tracking for Google Ads, Facebook, GA</li>
<li><img decoding="async" src="/wp-content/uploads/2021/05/check-square.png" />I want a first party User ID to recognize returning users without relying on cookies</li>
<li><img decoding="async" src="/wp-content/uploads/2021/05/check-square.png" />Facebook is under-performing and think it could do better</li>
<li><img decoding="async" src="/wp-content/uploads/2021/05/check-square.png" />I’m missing conversions in Google Ads impacting performance</li>
</ul>
</div>
		</div>
	</div>
</div></div></div></div><div class="vc_row-full-width vc_clearfix"></div><div data-vc-full-width="true" data-vc-full-width-init="false" class="vc_row wpb_row vc_row-fluid vc_custom_1659458642512 vc_row-has-fill"><div class="wpb_column vc_column_container vc_col-sm-12"><div class="vc_column-inner "><div class="wpb_wrapper"><style>
  .post .tagauto-widget h2 {
    text-align: center;
    max-width: 800px;
    margin: 0 auto;
    font-size: 24px;
    line-height: 36px;
    color: #212B36;
  }
  .post .tagauto-widget span {
    text-align: center;
    font-size: 12px;
    line-height: 16px;
    letter-spacing: 1px;
    text-transform: uppercase;
    color: #929EAA;
    font-weight: 600;
    margin: 0 auto 16px;
    displaY: block;
}
.post .tagauto__journey {
  align-items: center;
  display: flex;
  flex-direction: column;
  justify-content: space-between;
  flex-wrap: wrap;
  margin-top: 60px;
  padding-bottom: 30px;
}
.post .tagauto__journey svg.desktop {
  display: none;
}
.post .tagauto__journey svg.mobile {
  
}
.post .journey__column {
  width: calc(100% - 100px);
  width: 100%;
  position: relative;
  max-width: 400px;
}
.post .journey__column img {
  max-width: 100%;
  margin-bottom: 0 !important;
}
.post .journey__column h3 {
  font-size: 20px;
  line-height: 28px;
  color: #212B36;
  margin-bottom: 8px;
  }
.post .journey__column p {
  color: #647380;
  font-size: 16px;
  line-height: 24px;
  max-width: 85%;
}

.journey__col1.journey__column {
  z-index: 3;
}
.journey__col2.journey__column {
  z-index: 2;
}
.journey__col3.journey__column {
  z-index: 1;
}

.journey__col2.journey__column svg.mobile {
  margin-top: -132px;
}

.journey__col3.journey__column svg.mobile {
  margin-top: -132px;
}

@media screen and (min-width: 700px ) {
  .post .tagauto__journey {
    flex-direction: row;
    align-items: flex-start;
  }
  .post .tagauto-widget h2 {
    font-size: 38px;
    line-height: 48px;
  }
  .post .journey__column {
    width: 28%;
    max-width: none;
  }
  .post .tagauto__journey svg.desktop {
    display: block;
    margin-bottom: 16px;
  }
  .post .tagauto__journey svg.mobile {
    display: none;
  }
  .post .journey__column p {
    max-width: 100%;
  }
}


            </style><div class="tagauto-widget"><div class="container" ><span>Tagging Automation</span><h2>Automatically track each customer journey and achieve 99% conversion accuracy</h2><div class="tagauto__journey" ><svg class="desktop" width="100%" viewBox="0 0 1020 236" fill="none" xmlns="http://www.w3.org/2000/svg">
<g clip-path="url(#clip0_3233_7842)">
<path d="M1020 0H0V235H1020V0Z" fill="white"/>
<path d="M583.529 117.647H800" stroke="#716FDA" stroke-width="0.75"/>
<path d="M1005.88 8.23529H817.647C812.449 8.23529 808.235 12.4491 808.235 17.6471V41.1765C808.235 46.3744 812.449 50.5882 817.647 50.5882H1005.88C1011.08 50.5882 1015.29 46.3744 1015.29 41.1765V17.6471C1015.29 12.4491 1011.08 8.23529 1005.88 8.23529Z" fill="white" stroke="#EFF2F5" stroke-width="4"/>
<path d="M1005.88 182.353H817.647C812.449 182.353 808.235 186.567 808.235 191.765V215.294C808.235 220.492 812.449 224.706 817.647 224.706H1005.88C1011.08 224.706 1015.29 220.492 1015.29 215.294V191.765C1015.29 186.567 1011.08 182.353 1005.88 182.353Z" fill="white" stroke="#EFF2F5" stroke-width="4"/>
<path d="M1005.88 67.0586H817.647C812.449 67.0586 808.235 71.2724 808.235 76.4704V156.47C808.235 161.668 812.449 165.882 817.647 165.882H1005.88C1011.08 165.882 1015.29 161.668 1015.29 156.47V76.4704C1015.29 71.2724 1011.08 67.0586 1005.88 67.0586Z" fill="white" stroke="#EFF2F5" stroke-width="4"/>
<path d="M370.588 114.168H223.529" stroke="#4B82FB" stroke-width="0.75"/>
<g filter="url(#filter0_d_3233_7842)">
<path d="M572.711 10.5882H392.298C383.556 10.5882 376.471 16.4146 376.471 23.6018V162.018C376.471 169.205 383.556 175.032 392.298 175.032H572.711C581.452 175.032 588.538 169.205 588.538 162.018V23.6018C588.538 16.4146 581.452 10.5882 572.711 10.5882Z" fill="white" stroke="#EFF2F5" stroke-width="10" stroke-linejoin="round"/>
<path d="M572.711 29.5169H392.298C383.556 29.5169 376.471 35.3433 376.471 42.5303V209.34C376.471 216.526 383.556 222.353 392.298 222.353H572.711C581.452 222.353 588.538 216.526 588.538 209.34V42.5303C588.538 35.3433 581.452 29.5169 572.711 29.5169Z" fill="white" stroke="#EFF2F5" stroke-width="10" stroke-linejoin="round"/>
<path d="M395.399 69.7401C395.399 65.8195 398.578 62.6419 402.498 62.6419H506.605C510.526 62.6419 513.704 65.8195 513.704 69.7401V138.356C513.704 142.278 510.526 145.455 506.605 145.455H402.498C398.578 145.455 395.399 142.278 395.399 138.356V69.7401Z" fill="#F4F6F8"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M466.329 87.3169C464.055 84.3878 459.631 84.3878 457.356 87.3169L446.007 101.933C444.627 103.71 441.931 103.678 440.593 101.868C438.322 98.7962 433.728 98.7962 431.458 101.868L422.549 113.921C419.778 117.671 422.454 122.978 427.116 122.978H429.667H456.196H482.416C487.141 122.978 489.801 117.546 486.904 113.814L466.329 87.3169Z" fill="white"/>
<path d="M583.529 12.9412H381.176V29.4118H583.529V12.9412Z" fill="#EFF2F5"/>
<path d="M562.498 15.3206H447.453C444.84 15.3206 442.721 17.4393 442.721 20.0527C442.721 22.6661 444.84 24.7849 447.453 24.7849H562.498C565.111 24.7849 567.229 22.6661 567.229 20.0527C567.229 17.4393 565.111 15.3206 562.498 15.3206Z" fill="#DFE3E8"/>
<path d="M388.301 24.7849C390.914 24.7849 393.033 22.6661 393.033 20.0527C393.033 17.4393 390.914 15.3206 388.301 15.3206C385.688 15.3206 383.569 17.4393 383.569 20.0527C383.569 22.6661 385.688 24.7849 388.301 24.7849Z" fill="#F17E6A"/>
<path d="M404.864 24.7849C407.478 24.7849 409.596 22.6661 409.596 20.0527C409.596 17.4393 407.478 15.3206 404.864 15.3206C402.251 15.3206 400.132 17.4393 400.132 20.0527C400.132 22.6661 402.251 24.7849 404.864 24.7849Z" fill="#FDD054"/>
<path d="M421.426 24.7849C424.04 24.7849 426.159 22.6661 426.159 20.0527C426.159 17.4393 424.04 15.3206 421.426 15.3206C418.813 15.3206 416.694 17.4393 416.694 20.0527C416.694 22.6661 418.813 24.7849 421.426 24.7849Z" fill="#89DD75"/>
<path d="M540.676 166.749H423.555C420.942 166.749 418.824 168.868 418.824 171.482V195.142C418.824 197.756 420.942 199.875 423.555 199.875H540.676C543.291 199.875 545.409 197.756 545.409 195.142V171.482C545.409 168.868 543.291 166.749 540.676 166.749Z" fill="#212B36"/>
<path d="M543.076 160.834H421.222C416.649 160.834 412.941 164.542 412.941 169.116V197.509C412.941 202.082 416.649 205.791 421.222 205.791H543.076C547.649 205.791 551.358 202.082 551.358 197.509V169.116C551.358 164.542 547.649 160.834 543.076 160.834Z" stroke="#43CDE9" stroke-width="2"/>
<g filter="url(#filter1_d_3233_7842)">
<path fill-rule="evenodd" clip-rule="evenodd" d="M529.12 197.371L527.861 195.359C527.001 193.985 525.171 193.485 523.769 194.238L524.098 194.062C523.748 194.249 523.582 194.715 523.726 195.101L525.468 199.815C525.745 200.562 526.451 201.62 527.034 202.152C527.034 202.152 530.54 205.185 530.54 206.322V207.762H536.22L537.639 204.793L539.06 207.762H540.48V206.322C540.48 205.185 542.621 201.602 542.621 201.602C543.016 200.906 543.345 199.679 543.345 198.865V192.875C543.319 191.548 542.241 190.474 540.911 190.474C540.245 190.474 539.706 191.011 539.706 191.674V192.155C539.706 190.827 538.627 189.753 537.298 189.753C536.632 189.753 536.093 190.291 536.093 190.954V191.433C536.093 190.107 535.014 189.033 533.685 189.033C533.019 189.033 532.48 189.569 532.48 190.233V190.713C532.48 190.501 532.458 190.332 532.416 190.196L532.048 184.009C531.999 183.174 531.325 182.524 530.54 182.524C529.749 182.524 529.12 183.188 529.12 184.008V197.371ZM539.085 195.886H540.505V201.824H539.085V195.886ZM536.245 195.886H537.665V201.824H536.245V195.886ZM533.405 195.886H534.825V201.824H533.405V195.886Z" fill="white"/>
<path d="M523.92 193.733L523.909 193.715L523.584 193.889L523.613 193.946C523.3 194.284 523.192 194.798 523.355 195.239L525.098 199.952C525.395 200.758 526.135 201.867 526.768 202.444L526.775 202.449H526.776L526.778 202.451L526.785 202.456L526.813 202.482C526.839 202.504 526.876 202.535 526.924 202.578C527.016 202.662 527.153 202.785 527.315 202.933C527.64 203.232 528.072 203.642 528.505 204.085C528.938 204.529 529.361 205.001 529.675 205.426C529.833 205.636 529.955 205.828 530.036 205.993C530.122 206.165 530.145 206.269 530.145 206.322V207.762V208.156H530.54H536.22H536.468L536.575 207.933L537.639 205.707L538.702 207.933L538.811 208.156H539.06H540.48H540.874V207.762V206.322C540.874 206.124 540.978 205.752 541.18 205.253C541.374 204.773 541.635 204.231 541.9 203.716C542.166 203.204 542.431 202.725 542.629 202.375C542.729 202.199 542.812 202.056 542.869 201.958C542.899 201.907 542.921 201.868 542.936 201.844L542.954 201.814L542.959 201.807V201.805L542.966 201.796C543.185 201.409 543.375 200.894 543.512 200.379C543.649 199.862 543.739 199.316 543.739 198.865V192.875V192.867C543.709 191.329 542.459 190.079 540.911 190.079C540.411 190.079 539.964 190.308 539.671 190.666C539.174 189.88 538.295 189.358 537.298 189.358C536.798 189.358 536.351 189.587 536.058 189.946C535.561 189.159 534.682 188.638 533.685 188.638C533.329 188.638 533.001 188.753 532.736 188.948L532.442 183.987C532.381 182.956 531.546 182.129 530.54 182.129C529.515 182.129 528.725 182.988 528.725 184.008V195.998L528.195 195.149C527.296 193.712 525.451 193.12 523.92 193.733ZM539.479 196.28H540.111V201.429H539.479V196.28ZM536.639 196.28H537.271V201.429H536.639V196.28ZM533.799 196.28H534.431V201.429H533.799V196.28Z" stroke="black" stroke-opacity="0.8" stroke-width="0.75"/>
</g>
<path d="M564.876 62.6419H536.484C533.871 62.6419 531.752 64.7607 531.752 67.3741V95.7671C531.752 98.3805 533.871 100.499 536.484 100.499H564.876C567.491 100.499 569.609 98.3805 569.609 95.7671V67.3741C569.609 64.7607 567.491 62.6419 564.876 62.6419Z" fill="#F4F6F8"/>
<path d="M548.314 94.5841H480.88C479.573 94.5841 478.514 95.6429 478.514 96.9502V112.33C478.514 113.637 479.573 114.696 480.88 114.696H548.314C549.621 114.696 550.68 113.637 550.68 112.33V96.9502C550.68 95.6429 549.621 94.5841 548.314 94.5841Z" fill="#212B36"/>
<path d="M489.088 108.13H488.22L490.733 101.285H491.588L494.102 108.13H493.233L491.187 102.368H491.134L489.088 108.13ZM489.409 105.456H492.912V106.192H489.409V105.456ZM497 108.237C496.572 108.237 496.194 108.129 495.867 107.913C495.539 107.695 495.284 107.387 495.098 106.99C494.913 106.592 494.821 106.12 494.821 105.577C494.821 105.038 494.913 104.57 495.098 104.173C495.284 103.776 495.54 103.47 495.871 103.254C496.2 103.038 496.581 102.93 497.013 102.93C497.347 102.93 497.612 102.985 497.805 103.097C498.001 103.206 498.151 103.331 498.253 103.471C498.358 103.609 498.439 103.723 498.498 103.812H498.564V101.285H499.353V108.13H498.591V107.341H498.498C498.439 107.435 498.356 107.553 498.249 107.696C498.142 107.836 497.991 107.962 497.792 108.073C497.594 108.183 497.329 108.237 497 108.237ZM497.107 107.529C497.424 107.529 497.691 107.446 497.909 107.281C498.127 107.114 498.293 106.884 498.407 106.589C498.52 106.293 498.578 105.951 498.578 105.563C498.578 105.18 498.521 104.845 498.411 104.557C498.299 104.268 498.134 104.043 497.915 103.882C497.698 103.72 497.427 103.638 497.107 103.638C496.773 103.638 496.494 103.724 496.272 103.896C496.051 104.065 495.885 104.296 495.773 104.587C495.664 104.877 495.609 105.202 495.609 105.563C495.609 105.929 495.665 106.261 495.776 106.559C495.891 106.856 496.058 107.092 496.278 107.268C496.501 107.442 496.776 107.529 497.107 107.529ZM502.846 108.237C502.418 108.237 502.04 108.129 501.713 107.913C501.385 107.695 501.128 107.387 500.944 106.99C500.759 106.592 500.666 106.12 500.666 105.577C500.666 105.038 500.759 104.57 500.944 104.173C501.128 103.776 501.386 103.47 501.715 103.254C502.046 103.038 502.427 102.93 502.859 102.93C503.193 102.93 503.456 102.985 503.651 103.097C503.847 103.206 503.996 103.331 504.099 103.471C504.204 103.609 504.285 103.723 504.342 103.812H504.409V101.285H505.199V108.13H504.436V107.341H504.342C504.285 107.435 504.202 107.553 504.095 107.696C503.988 107.836 503.835 107.962 503.638 108.073C503.439 108.183 503.175 108.237 502.846 108.237ZM502.952 107.529C503.268 107.529 503.536 107.446 503.754 107.281C503.973 107.114 504.139 106.884 504.253 106.589C504.366 106.293 504.422 105.951 504.422 105.563C504.422 105.18 504.367 104.845 504.255 104.557C504.145 104.268 503.98 104.043 503.761 103.882C503.542 103.72 503.273 103.638 502.952 103.638C502.618 103.638 502.34 103.724 502.116 103.896C501.896 104.065 501.731 104.296 501.619 104.587C501.509 104.877 501.455 105.202 501.455 105.563C501.455 105.929 501.511 106.261 501.622 106.559C501.735 106.856 501.902 107.092 502.124 107.268C502.346 107.442 502.622 107.529 502.952 107.529ZM511.632 102.996V103.665H508.972V102.996H511.632ZM509.747 101.767H510.536V106.66C510.536 106.882 510.568 107.05 510.633 107.161C510.7 107.27 510.785 107.344 510.887 107.382C510.992 107.417 511.102 107.435 511.218 107.435C511.305 107.435 511.376 107.43 511.432 107.422C511.487 107.41 511.532 107.402 511.566 107.395L511.726 108.103C511.672 108.124 511.598 108.144 511.502 108.164C511.406 108.186 511.285 108.197 511.138 108.197C510.914 108.197 510.696 108.149 510.482 108.053C510.271 107.958 510.095 107.812 509.954 107.615C509.816 107.419 509.747 107.172 509.747 106.874V101.767ZM514.849 108.237C514.386 108.237 513.979 108.127 513.629 107.906C513.281 107.686 513.009 107.377 512.814 106.98C512.62 106.584 512.522 106.12 512.522 105.59C512.522 105.055 512.62 104.588 512.814 104.19C513.009 103.791 513.281 103.481 513.629 103.26C513.979 103.04 514.386 102.93 514.849 102.93C515.313 102.93 515.718 103.04 516.066 103.26C516.415 103.481 516.687 103.791 516.881 104.19C517.078 104.588 517.175 105.055 517.175 105.59C517.175 106.12 517.078 106.584 516.881 106.98C516.687 107.377 516.415 107.686 516.066 107.906C515.718 108.127 515.313 108.237 514.849 108.237ZM514.849 107.529C515.201 107.529 515.491 107.438 515.718 107.258C515.946 107.077 516.114 106.84 516.222 106.546C516.332 106.252 516.387 105.933 516.387 105.59C516.387 105.247 516.332 104.927 516.222 104.631C516.114 104.334 515.946 104.095 515.718 103.912C515.491 103.73 515.201 103.638 514.849 103.638C514.496 103.638 514.207 103.73 513.98 103.912C513.753 104.095 513.585 104.334 513.475 104.631C513.366 104.927 513.312 105.247 513.312 105.59C513.312 105.933 513.366 106.252 513.475 106.546C513.585 106.84 513.753 107.077 513.98 107.258C514.207 107.438 514.496 107.529 514.849 107.529ZM526.641 103.424H525.813C525.764 103.186 525.678 102.976 525.555 102.796C525.435 102.615 525.288 102.464 525.114 102.341C524.942 102.217 524.752 102.123 524.542 102.061C524.333 101.998 524.114 101.967 523.887 101.967C523.473 101.967 523.098 102.072 522.761 102.281C522.427 102.491 522.16 102.799 521.962 103.207C521.766 103.615 521.668 104.115 521.668 104.708C521.668 105.3 521.766 105.801 521.962 106.208C522.16 106.616 522.427 106.925 522.761 107.134C523.098 107.344 523.473 107.448 523.887 107.448C524.114 107.448 524.333 107.417 524.542 107.355C524.752 107.292 524.942 107.2 525.114 107.077C525.288 106.953 525.435 106.8 525.555 106.62C525.678 106.437 525.764 106.227 525.813 105.991H526.641C526.579 106.341 526.466 106.654 526.3 106.93C526.135 107.207 525.931 107.442 525.686 107.636C525.44 107.827 525.165 107.973 524.86 108.073C524.556 108.174 524.233 108.224 523.887 108.224C523.304 108.224 522.785 108.081 522.329 107.796C521.875 107.511 521.518 107.105 521.256 106.579C520.996 106.054 520.866 105.43 520.866 104.708C520.866 103.986 520.996 103.362 521.256 102.836C521.518 102.31 521.875 101.905 522.329 101.62C522.785 101.334 523.304 101.192 523.887 101.192C524.233 101.192 524.556 101.242 524.86 101.342C525.165 101.442 525.44 101.589 525.686 101.783C525.931 101.975 526.135 102.209 526.3 102.485C526.466 102.759 526.579 103.072 526.641 103.424ZM529.385 108.25C529.059 108.25 528.764 108.189 528.499 108.067C528.234 107.942 528.024 107.762 527.867 107.529C527.711 107.292 527.633 107.007 527.633 106.673C527.633 106.379 527.691 106.14 527.807 105.958C527.922 105.773 528.078 105.628 528.272 105.523C528.466 105.418 528.679 105.34 528.913 105.289C529.149 105.236 529.387 105.193 529.625 105.162C529.938 105.122 530.189 105.092 530.384 105.072C530.58 105.05 530.722 105.013 530.812 104.962C530.904 104.91 530.948 104.821 530.948 104.694V104.668C530.948 104.338 530.859 104.082 530.678 103.899C530.5 103.716 530.229 103.625 529.866 103.625C529.489 103.625 529.194 103.707 528.98 103.872C528.766 104.037 528.615 104.213 528.529 104.4L527.78 104.133C527.914 103.821 528.092 103.578 528.315 103.404C528.54 103.228 528.785 103.106 529.051 103.037C529.318 102.965 529.58 102.93 529.839 102.93C530.004 102.93 530.193 102.95 530.407 102.99C530.624 103.028 530.832 103.107 531.032 103.227C531.235 103.347 531.404 103.529 531.536 103.772C531.671 104.015 531.738 104.34 531.738 104.748V108.13H530.948V107.435H530.908C530.855 107.546 530.766 107.666 530.641 107.793C530.516 107.92 530.351 108.028 530.144 108.117C529.936 108.206 529.684 108.25 529.385 108.25ZM529.505 107.542C529.816 107.542 530.08 107.481 530.294 107.358C530.509 107.236 530.673 107.077 530.781 106.884C530.893 106.69 530.948 106.486 530.948 106.272V105.55C530.915 105.59 530.841 105.627 530.728 105.66C530.616 105.691 530.487 105.719 530.34 105.744C530.195 105.766 530.054 105.786 529.916 105.804C529.78 105.82 529.669 105.833 529.585 105.844C529.38 105.871 529.188 105.914 529.011 105.974C528.834 106.032 528.692 106.12 528.582 106.238C528.475 106.354 528.422 106.512 528.422 106.713C528.422 106.987 528.524 107.194 528.726 107.335C528.931 107.473 529.191 107.542 529.505 107.542ZM533.178 108.13V102.996H533.939V103.772H533.993C534.084 103.518 534.252 103.312 534.498 103.154C534.742 102.995 535.02 102.916 535.329 102.916C535.472 102.916 535.596 102.933 535.704 102.966C535.811 103 535.905 103.046 535.985 103.103L535.718 103.772C535.661 103.743 535.595 103.721 535.52 103.705C535.447 103.687 535.361 103.678 535.262 103.678C535.013 103.678 534.791 103.731 534.594 103.835C534.4 103.94 534.247 104.083 534.133 104.263C534.021 104.444 533.966 104.65 533.966 104.882V108.13H533.178ZM539.344 102.996V103.665H536.684V102.996H539.344ZM537.459 101.767H538.247V106.66C538.247 106.882 538.28 107.05 538.345 107.161C538.411 107.27 538.495 107.344 538.599 107.382C538.704 107.417 538.813 107.435 538.929 107.435C539.016 107.435 539.087 107.43 539.144 107.422C539.199 107.41 539.244 107.402 539.276 107.395L539.438 108.103C539.384 108.124 539.309 108.144 539.213 108.164C539.118 108.186 538.996 108.197 538.849 108.197C538.626 108.197 538.408 108.149 538.194 108.053C537.982 107.958 537.806 107.812 537.666 107.615C537.527 107.419 537.459 107.172 537.459 106.874V101.767Z" fill="white"/>
<path d="M457.507 187.979V179.422H460.398C461.069 179.422 461.618 179.544 462.044 179.786C462.473 180.026 462.791 180.351 462.996 180.76C463.202 181.169 463.306 181.626 463.306 182.131C463.306 182.634 463.202 183.093 462.996 183.505C462.793 183.916 462.479 184.246 462.052 184.491C461.626 184.733 461.08 184.854 460.414 184.854H458.342V183.935H460.381C460.84 183.935 461.209 183.855 461.488 183.696C461.767 183.538 461.968 183.324 462.094 183.053C462.222 182.78 462.286 182.473 462.286 182.131C462.286 181.787 462.222 181.481 462.094 181.211C461.968 180.941 461.765 180.729 461.484 180.576C461.202 180.42 460.829 180.342 460.365 180.342H458.542V187.979H457.507ZM469.002 185.355V181.562H469.988V187.979H469.002V186.893H468.935C468.786 187.219 468.552 187.495 468.234 187.725C467.916 187.949 467.515 188.062 467.031 188.062C466.629 188.062 466.273 187.975 465.961 187.8C465.649 187.621 465.404 187.354 465.226 186.998C465.047 186.638 464.959 186.186 464.959 185.64V181.562H465.945V185.573C465.945 186.04 466.075 186.414 466.338 186.692C466.601 186.971 466.939 187.111 467.348 187.111C467.593 187.111 467.842 187.047 468.096 186.922C468.352 186.796 468.567 186.605 468.739 186.346C468.915 186.087 469.002 185.756 469.002 185.355ZM471.912 187.979V181.562H472.865V182.532H472.932C473.046 182.214 473.256 181.956 473.562 181.759C473.868 181.56 474.215 181.461 474.602 181.461C474.781 181.461 474.936 181.482 475.071 181.525C475.205 181.566 475.321 181.624 475.421 181.695L475.087 182.532C475.018 182.495 474.935 182.467 474.841 182.448C474.748 182.426 474.641 182.414 474.519 182.414C474.207 182.414 473.928 182.48 473.684 182.611C473.441 182.741 473.249 182.92 473.107 183.146C472.968 183.371 472.898 183.628 472.898 183.919V187.979H471.912ZM478.956 188.113C478.355 188.113 477.836 187.971 477.402 187.687C476.968 187.402 476.634 187.012 476.4 186.513C476.166 186.014 476.048 185.445 476.048 184.804C476.048 184.152 476.168 183.578 476.408 183.079C476.651 182.578 476.987 182.186 477.419 181.905C477.854 181.62 478.36 181.479 478.94 181.479C479.391 181.479 479.798 181.562 480.16 181.729C480.522 181.896 480.819 182.131 481.049 182.431C481.281 182.732 481.425 183.082 481.48 183.484H480.494C480.419 183.192 480.252 182.932 479.993 182.707C479.736 182.479 479.391 182.364 478.956 182.364C478.572 182.364 478.235 182.465 477.946 182.665C477.659 182.862 477.434 183.142 477.273 183.505C477.114 183.864 477.035 184.286 477.035 184.771C477.035 185.266 477.113 185.698 477.268 186.066C477.427 186.433 477.651 186.719 477.938 186.922C478.227 187.126 478.567 187.227 478.956 187.227C479.213 187.227 479.446 187.182 479.654 187.093C479.864 187.005 480.04 186.876 480.185 186.709C480.329 186.542 480.433 186.341 480.494 186.107H481.48C481.425 186.486 481.286 186.827 481.066 187.131C480.849 187.432 480.561 187.672 480.201 187.849C479.845 188.025 479.429 188.113 478.956 188.113ZM484.025 184.119V187.979H483.039V179.422H484.025V182.565H484.108C484.259 182.233 484.485 181.971 484.785 181.775C485.088 181.578 485.493 181.479 485.996 181.479C486.434 181.479 486.816 181.566 487.146 181.741C487.474 181.914 487.729 182.18 487.911 182.54C488.094 182.896 488.186 183.351 488.186 183.901V187.979H487.2V183.968C487.2 183.459 487.068 183.065 486.804 182.786C486.541 182.505 486.178 182.364 485.713 182.364C485.389 182.364 485.1 182.433 484.844 182.569C484.591 182.706 484.389 182.905 484.242 183.166C484.098 183.428 484.025 183.746 484.025 184.119ZM491.995 188.129C491.589 188.129 491.22 188.053 490.888 187.9C490.558 187.744 490.294 187.52 490.099 187.227C489.904 186.932 489.807 186.575 489.807 186.158C489.807 185.789 489.879 185.492 490.024 185.264C490.168 185.032 490.362 184.852 490.605 184.72C490.847 184.589 491.114 184.492 491.407 184.428C491.702 184.361 491.999 184.308 492.296 184.269C492.686 184.219 493.002 184.181 493.245 184.156C493.491 184.128 493.668 184.082 493.78 184.019C493.894 183.954 493.951 183.844 493.951 183.685V183.651C493.951 183.239 493.838 182.919 493.613 182.689C493.389 182.461 493.052 182.347 492.598 182.347C492.127 182.347 491.758 182.451 491.491 182.656C491.222 182.862 491.035 183.082 490.926 183.316L489.991 182.982C490.158 182.593 490.38 182.289 490.659 182.072C490.94 181.852 491.247 181.699 491.578 181.612C491.912 181.524 492.241 181.479 492.564 181.479C492.771 181.479 493.007 181.504 493.274 181.554C493.545 181.601 493.805 181.7 494.055 181.851C494.309 182.001 494.519 182.227 494.686 182.532C494.853 182.835 494.936 183.241 494.936 183.751V187.979H493.951V187.111H493.901C493.834 187.249 493.722 187.399 493.567 187.558C493.411 187.716 493.204 187.851 492.944 187.962C492.685 188.074 492.369 188.129 491.995 188.129ZM492.146 187.244C492.536 187.244 492.865 187.167 493.132 187.014C493.402 186.861 493.606 186.664 493.742 186.421C493.881 186.179 493.951 185.924 493.951 185.656V184.754C493.909 184.804 493.818 184.849 493.675 184.892C493.536 184.931 493.374 184.966 493.191 184.996C493.009 185.024 492.833 185.049 492.66 185.072C492.491 185.091 492.352 185.107 492.246 185.121C491.991 185.155 491.751 185.209 491.528 185.285C491.308 185.356 491.129 185.467 490.993 185.614C490.859 185.759 490.793 185.956 490.793 186.208C490.793 186.551 490.919 186.809 491.173 186.985C491.429 187.158 491.753 187.244 492.146 187.244ZM501.4 182.999L500.514 183.249C500.458 183.102 500.376 182.959 500.267 182.82C500.161 182.678 500.016 182.56 499.833 182.468C499.649 182.376 499.414 182.331 499.127 182.331C498.734 182.331 498.407 182.421 498.145 182.602C497.886 182.78 497.756 183.007 497.756 183.284C497.756 183.528 497.846 183.722 498.024 183.864C498.202 184.006 498.481 184.125 498.86 184.219L499.812 184.453C500.386 184.592 500.813 184.806 501.094 185.092C501.376 185.376 501.516 185.742 501.516 186.191C501.516 186.559 501.411 186.887 501.199 187.176C500.991 187.467 500.698 187.695 500.321 187.862C499.946 188.029 499.508 188.113 499.009 188.113C498.355 188.113 497.814 187.971 497.385 187.687C496.955 187.402 496.685 186.987 496.571 186.441L497.506 186.208C497.595 186.553 497.764 186.812 498.012 186.985C498.262 187.158 498.589 187.244 498.993 187.244C499.453 187.244 499.818 187.146 500.088 186.952C500.361 186.754 500.498 186.516 500.498 186.241C500.498 186.019 500.419 185.832 500.264 185.681C500.107 185.528 499.868 185.414 499.545 185.339L498.475 185.088C497.887 184.948 497.455 184.733 497.18 184.44C496.907 184.145 496.771 183.776 496.771 183.333C496.771 182.972 496.872 182.651 497.075 182.373C497.281 182.094 497.561 181.875 497.915 181.716C498.272 181.558 498.675 181.479 499.127 181.479C499.762 181.479 500.26 181.618 500.622 181.896C500.987 182.175 501.246 182.542 501.4 182.999ZM505.809 188.113C505.191 188.113 504.658 187.976 504.208 187.704C503.764 187.427 503.419 187.044 503.176 186.551C502.938 186.054 502.818 185.478 502.818 184.821C502.818 184.164 502.938 183.584 503.176 183.082C503.419 182.579 503.756 182.186 504.188 181.905C504.622 181.62 505.129 181.479 505.708 181.479C506.042 181.479 506.373 181.534 506.699 181.646C507.025 181.756 507.321 181.938 507.588 182.188C507.856 182.436 508.069 182.765 508.228 183.174C508.387 183.584 508.466 184.088 508.466 184.687V185.105H503.52V184.253H507.464C507.464 183.891 507.391 183.567 507.246 183.284C507.104 182.999 506.901 182.775 506.636 182.611C506.374 182.446 506.065 182.364 505.708 182.364C505.316 182.364 504.976 182.461 504.689 182.656C504.405 182.848 504.187 183.099 504.033 183.408C503.88 183.718 503.804 184.049 503.804 184.402V184.971C503.804 185.455 503.887 185.867 504.054 186.204C504.225 186.538 504.46 186.793 504.76 186.968C505.061 187.141 505.411 187.227 505.809 187.227C506.068 187.227 506.302 187.191 506.511 187.119C506.722 187.044 506.905 186.932 507.058 186.785C507.212 186.634 507.329 186.447 507.413 186.225L508.366 186.492C508.266 186.815 508.096 187.099 507.86 187.344C507.624 187.586 507.331 187.775 506.982 187.912C506.635 188.046 506.244 188.113 505.809 188.113Z" fill="white"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M540.231 72.8956C540.231 72.5679 540.495 72.3041 540.822 72.3041H543.976C544.259 72.3041 544.501 72.5028 544.556 72.7785L545.251 76.2472H558.174C558.349 76.2472 558.516 76.3253 558.629 76.4613C558.741 76.5974 558.787 76.776 558.754 76.9487L557.492 83.5667L557.491 83.5714C557.393 84.0707 557.121 84.5191 556.725 84.8373C556.329 85.1555 555.835 85.3259 555.328 85.3175H547.673C547.167 85.3259 546.672 85.1555 546.276 84.8373C545.88 84.5191 545.609 84.0707 545.511 83.5714L544.191 76.983C544.186 76.9653 544.182 76.9463 544.18 76.9274L543.492 73.4872H540.822C540.495 73.4872 540.231 73.2221 540.231 72.8956ZM545.488 77.4302L546.671 83.3395C546.715 83.5667 546.839 83.7713 547.02 83.9168C547.2 84.0612 547.426 84.1381 547.656 84.1346L547.668 84.1334L555.345 84.1346C555.576 84.1381 555.801 84.0612 555.982 83.9168C556.162 83.7713 556.286 83.569 556.331 83.3419L557.458 77.4302H545.488ZM547.131 88.4715C547.022 88.4715 546.934 88.5603 546.934 88.6692C546.934 88.778 547.022 88.8667 547.131 88.8667C547.24 88.8667 547.328 88.778 547.328 88.6692C547.328 88.5603 547.24 88.4715 547.131 88.4715ZM545.752 88.6692C545.752 87.9073 546.369 87.2886 547.131 87.2886C547.894 87.2886 548.512 87.9073 548.512 88.6692C548.512 89.431 547.894 90.0498 547.131 90.0498C546.369 90.0498 545.752 89.431 545.752 88.6692ZM555.807 88.4715C555.699 88.4715 555.609 88.5603 555.609 88.6692C555.609 88.778 555.699 88.8667 555.807 88.8667C555.916 88.8667 556.004 88.778 556.004 88.6692C556.004 88.5603 555.916 88.4715 555.807 88.4715ZM554.427 88.6692C554.427 87.9073 555.045 87.2886 555.807 87.2886C556.569 87.2886 557.187 87.9073 557.187 88.6692C557.187 89.431 556.569 90.0498 555.807 90.0498C555.045 90.0498 554.427 89.431 554.427 88.6692Z" fill="#5F5CE7"/>
</g>
<path d="M395.518 47.2727H396.692L398.479 50.3843H398.553L400.341 47.2727H401.514L399.031 51.4305V54.1176H398.001V51.4305L395.518 47.2727ZM409.262 50.6952C409.262 51.426 409.128 52.0543 408.861 52.5802C408.594 53.1039 408.227 53.5072 407.761 53.7901C407.298 54.0708 406.771 54.2112 406.181 54.2112C405.588 54.2112 405.059 54.0708 404.593 53.7901C404.129 53.5072 403.765 53.1027 403.496 52.5768C403.229 52.0511 403.095 51.4238 403.095 50.6952C403.095 49.9643 403.229 49.3372 403.496 48.8135C403.765 48.2876 404.129 47.8843 404.593 47.6036C405.059 47.3206 405.588 47.1792 406.181 47.1792C406.771 47.1792 407.298 47.3206 407.761 47.6036C408.227 47.8843 408.594 48.2876 408.861 48.8135C409.128 49.3372 409.262 49.9643 409.262 50.6952ZM408.24 50.6952C408.24 50.1381 408.149 49.6691 407.968 49.2881C407.791 48.9048 407.546 48.6152 407.233 48.4191C406.924 48.2208 406.573 48.1216 406.181 48.1216C405.786 48.1216 405.434 48.2208 405.125 48.4191C404.815 48.6152 404.569 48.9048 404.389 49.2881C404.211 49.6691 404.122 50.1381 404.122 50.6952C404.122 51.2522 404.211 51.7223 404.389 52.1056C404.569 52.4866 404.815 52.7762 405.125 52.9746C405.434 53.1707 405.786 53.2687 406.181 53.2687C406.573 53.2687 406.924 53.1707 407.233 52.9746C407.546 52.7762 407.791 52.4866 407.968 52.1056C408.149 51.7223 408.24 51.2522 408.24 50.6952ZM416.128 47.2727H417.164V51.7747C417.164 52.2538 417.052 52.6782 416.827 53.0481C416.601 53.4158 416.285 53.7054 415.878 53.9171C415.469 54.1266 414.992 54.2313 414.444 54.2313C413.898 54.2313 413.421 54.1266 413.013 53.9171C412.605 53.7054 412.289 53.4158 412.064 53.0481C411.839 52.6782 411.726 52.2538 411.726 51.7747V47.2727H412.759V51.6912C412.759 52.0009 412.827 52.2761 412.962 52.5167C413.101 52.7574 413.296 52.9467 413.548 53.0849C413.8 53.2208 414.098 53.2888 414.444 53.2888C414.791 53.2888 415.091 53.2208 415.342 53.0849C415.596 52.9467 415.791 52.7574 415.925 52.5167C416.06 52.2761 416.128 52.0009 416.128 51.6912V47.2727ZM419.842 54.1176V47.2727H422.282C422.812 47.2727 423.252 47.3641 423.602 47.5468C423.954 47.7295 424.218 47.9823 424.391 48.3055C424.565 48.6263 424.652 48.9973 424.652 49.4185C424.652 49.8373 424.564 50.2061 424.387 50.5247C424.214 50.8412 423.951 51.0873 423.599 51.2634C423.249 51.4394 422.809 51.5274 422.279 51.5274H420.431V50.6383H422.185C422.519 50.6383 422.791 50.5905 423 50.4947C423.212 50.3988 423.367 50.2595 423.465 50.0768C423.564 49.8941 423.612 49.6747 423.612 49.4185C423.612 49.16 423.562 48.936 423.461 48.7467C423.364 48.5573 423.209 48.4125 422.998 48.3121C422.788 48.2096 422.513 48.1585 422.172 48.1585H420.875V54.1176H419.842ZM423.221 51.0294L424.912 54.1176H423.735L422.078 51.0294H423.221ZM432.092 54.1176L430.194 47.2727H431.28L432.614 52.5735H432.678L434.065 47.2727H435.14L436.527 52.5768H436.591L437.921 47.2727H439.011L437.109 54.1176H436.069L434.629 48.9906H434.575L433.135 54.1176H432.092ZM441.129 54.1176V47.2727H445.42V48.1618H442.161V50.2473H445.196V51.1331H442.161V53.2286H445.46V54.1176H441.129ZM447.976 54.1176V47.2727H450.484C450.968 47.2727 451.371 47.3529 451.689 47.5134C452.008 47.6715 452.247 47.8866 452.405 48.1585C452.564 48.428 452.642 48.7321 452.642 49.0708C452.642 49.3561 452.589 49.5967 452.485 49.7928C452.38 49.9866 452.24 50.1426 452.064 50.2607C451.891 50.3766 451.699 50.4612 451.489 50.5147V50.5815C451.716 50.5927 451.938 50.6662 452.154 50.8021C452.373 50.9359 452.553 51.1263 452.695 51.3736C452.838 51.6209 452.909 51.9218 452.909 52.2761C452.909 52.6259 452.827 52.9401 452.662 53.2186C452.5 53.4948 452.248 53.7143 451.907 53.8771C451.566 54.0374 451.131 54.1176 450.6 54.1176H447.976ZM449.009 53.232H450.5C450.994 53.232 451.348 53.1361 451.562 52.9445C451.776 52.7529 451.884 52.5134 451.884 52.2259C451.884 52.0098 451.828 51.8115 451.72 51.6311C451.611 51.4506 451.454 51.3068 451.252 51.1999C451.051 51.0929 450.813 51.0394 450.536 51.0394H449.009V53.232ZM449.009 50.234H450.393C450.625 50.234 450.833 50.1894 451.018 50.1002C451.205 50.0112 451.353 49.8863 451.462 49.7259C451.574 49.5633 451.629 49.3716 451.629 49.1511C451.629 48.8681 451.531 48.6308 451.332 48.4392C451.134 48.2475 450.829 48.1518 450.42 48.1518H449.009V50.234ZM459.045 49.0708C459.008 48.7545 458.861 48.5094 458.602 48.3355C458.345 48.1595 458.019 48.0715 457.627 48.0715C457.346 48.0715 457.104 48.1161 456.899 48.2052C456.693 48.2921 456.534 48.4125 456.42 48.5661C456.309 48.7176 456.253 48.8903 456.253 49.0842C456.253 49.2468 456.292 49.3873 456.367 49.5053C456.445 49.6234 456.546 49.7226 456.671 49.8028C456.798 49.8808 456.934 49.9465 457.079 50C457.224 50.0513 457.364 50.0935 457.496 50.1271L458.165 50.3008C458.384 50.3542 458.607 50.4267 458.836 50.518C459.066 50.6094 459.279 50.7298 459.475 50.8791C459.672 51.0283 459.829 51.2132 459.949 51.4339C460.073 51.6543 460.134 51.9185 460.134 52.2259C460.134 52.6136 460.033 52.9579 459.833 53.2587C459.634 53.5595 459.346 53.7968 458.967 53.9706C458.591 54.1443 458.135 54.2313 457.6 54.2313C457.088 54.2313 456.645 54.15 456.271 53.9873C455.895 53.8246 455.602 53.594 455.391 53.2954C455.179 52.9947 455.062 52.6381 455.04 52.2259H456.076C456.096 52.4733 456.176 52.6794 456.316 52.8442C456.46 53.0069 456.641 53.1283 456.861 53.2086C457.085 53.2866 457.328 53.3255 457.594 53.3255C457.886 53.3255 458.145 53.2799 458.372 53.1885C458.602 53.0949 458.782 52.9656 458.914 52.8008C459.045 52.6336 459.111 52.4387 459.111 52.2159C459.111 52.0132 459.053 51.8472 458.938 51.7179C458.824 51.5887 458.668 51.4818 458.473 51.3971C458.279 51.3123 458.059 51.2378 457.814 51.1732L457.006 50.9526C456.458 50.8033 456.022 50.5838 455.702 50.2941C455.384 50.0045 455.224 49.6212 455.224 49.1443C455.224 48.75 455.331 48.4058 455.545 48.1116C455.759 47.8175 456.048 47.5892 456.414 47.4265C456.779 47.2615 457.192 47.1792 457.651 47.1792C458.114 47.1792 458.522 47.2605 458.876 47.4232C459.233 47.5858 459.514 47.8098 459.719 48.0949C459.925 48.3779 460.032 48.7032 460.04 49.0708H459.045ZM463.576 47.2727V54.1176H462.545V47.2727H463.576ZM465.92 48.1618V47.2727H471.218V48.1618H469.081V54.1176H468.052V48.1618H465.92ZM473.565 54.1176V47.2727H477.856V48.1618H474.598V50.2473H477.632V51.1331H474.598V53.2286H477.896V54.1176H473.565Z" fill="#647380"/>
<path d="M843.206 40.1606L839.126 36.1823L847.888 27.2352L852.112 31.3749L843.206 40.1606Z" fill="#8AB4F8"/>
<path d="M843.223 22.5719L839.159 18.4214L830.271 27.2258C829.72 27.7765 829.412 28.5228 829.412 29.3009C829.412 30.0791 829.72 30.8254 830.271 31.3761L839.025 40.1885L843.165 36.3158L836.494 29.3009L843.223 22.5719Z" fill="#4285F4"/>
<path d="M852.053 27.294L843.24 18.4804C842.686 17.9414 841.943 17.642 841.171 17.6472C840.398 17.6522 839.659 17.9613 839.113 18.5075C838.566 19.0538 838.258 19.7932 838.252 20.5656C838.247 21.338 838.546 22.0814 839.085 22.6348L847.899 31.4485C848.171 31.7272 848.494 31.9492 848.853 32.1016C849.211 32.254 849.595 32.3339 849.985 32.3364C850.373 32.3389 850.759 32.2642 851.119 32.1165C851.479 31.9688 851.806 31.7511 852.081 31.476C852.356 31.2008 852.574 30.8739 852.721 30.5139C852.869 30.154 852.943 29.7684 852.941 29.3793C852.939 28.9902 852.859 28.6055 852.707 28.2475C852.554 27.8896 852.332 27.5655 852.053 27.294Z" fill="#8AB4F8"/>
<path d="M841.095 41.1236C842.681 41.1236 843.966 39.8382 843.966 38.2526C843.966 36.6668 842.681 35.3814 841.095 35.3814C839.509 35.3814 838.224 36.6668 838.224 38.2526C838.224 39.8382 839.509 41.1236 841.095 41.1236Z" fill="#246FDB"/>
<path d="M845.588 194.572V212.219C845.588 214.194 846.952 215.294 848.395 215.294C849.733 215.294 851.204 214.359 851.204 212.219V194.706C851.204 192.895 849.866 191.765 848.395 191.765C846.925 191.765 845.588 193.012 845.588 194.572Z" fill="#F9AB00"/>
<path d="M838.235 203.529V212.219C838.235 214.194 839.599 215.294 841.042 215.294C842.38 215.294 843.851 214.359 843.851 212.219V203.664C843.851 201.853 842.513 200.722 841.042 200.722C839.572 200.722 838.235 201.969 838.235 203.529Z" fill="#E37400"/>
<path d="M833.689 215.294C835.24 215.294 836.498 214.038 836.498 212.487C836.498 210.936 835.24 209.68 833.689 209.68C832.139 209.68 830.882 210.936 830.882 212.487C830.882 214.038 832.139 215.294 833.689 215.294Z" fill="#E37400"/>
<path d="M881.779 92.8887V92.0092C881.473 91.9608 881.165 91.9343 880.856 91.9299C877.864 91.9235 875.214 93.8627 874.316 96.7168C873.418 99.571 874.478 102.678 876.934 104.387C876.034 103.423 875.431 102.219 875.2 100.92C874.968 99.6214 875.118 98.2835 875.631 97.0677C876.143 95.852 876.996 94.8105 878.087 94.069C879.177 93.3274 880.46 92.9176 881.779 92.8888V92.8887Z" fill="#25F4EE"/>
<path d="M881.945 102.851C883.618 102.849 884.993 101.531 885.067 99.8596V84.9444H887.791C887.736 84.6328 887.709 84.3165 887.711 84H883.985V98.9009C883.923 100.581 882.544 101.911 880.864 101.914C880.36 101.91 879.867 101.786 879.421 101.554C879.71 101.953 880.089 102.279 880.528 102.505C880.966 102.73 881.451 102.849 881.945 102.851ZM892.88 90.005V89.176C891.877 89.1763 890.897 88.8804 890.061 88.3254C890.794 89.1766 891.784 89.7661 892.88 90.005Z" fill="#25F4EE"/>
<path d="M890.063 88.3259C889.239 87.3889 888.786 86.1846 888.786 84.9376H887.791C887.92 85.627 888.188 86.283 888.578 86.8656C888.968 87.4481 889.474 87.945 890.063 88.3259ZM880.856 95.6573C880.158 95.6608 879.483 95.8975 878.935 96.3298C878.387 96.762 877.999 97.365 877.833 98.0428C877.668 98.7206 877.733 99.4343 878.02 100.071C878.307 100.707 878.797 101.229 879.415 101.554C879.078 101.088 878.874 100.538 878.83 99.9639C878.786 99.3902 878.902 98.8153 879.163 98.3028C879.425 97.7904 879.824 97.3603 880.315 97.06C880.805 96.7598 881.37 96.6012 881.945 96.6016C882.257 96.6056 882.569 96.6544 882.868 96.7462V92.9539C882.563 92.9081 882.254 92.8841 881.945 92.8819H881.78V95.7654C881.478 95.6847 881.168 95.6483 880.856 95.6573Z" fill="#FE2C55"/>
<path d="M892.88 90.0052V92.8888C891.024 92.8851 889.217 92.2975 887.712 91.2091V98.7857C887.704 102.566 884.637 105.627 880.856 105.627C879.453 105.63 878.082 105.196 876.934 104.387C877.87 105.393 879.087 106.095 880.427 106.4C881.767 106.704 883.168 106.599 884.448 106.096C885.725 105.594 886.824 104.718 887.598 103.582C888.372 102.447 888.786 101.104 888.786 99.7303V92.1752C890.295 93.2564 892.106 93.8364 893.963 93.8332V90.1203C893.599 90.1192 893.236 90.0806 892.88 90.0052Z" fill="#FE2C55"/>
<path d="M887.712 98.7859V91.2093C889.22 92.2916 891.031 92.8717 892.888 92.8675V89.9839C891.791 89.7522 890.8 89.1703 890.062 88.3259C889.474 87.945 888.968 87.4481 888.578 86.8656C888.187 86.283 887.92 85.627 887.791 84.9376H885.067V99.8602C885.04 100.51 884.812 101.135 884.414 101.649C884.015 102.163 883.468 102.54 882.845 102.728C882.223 102.916 881.557 102.905 880.941 102.697C880.325 102.49 879.789 102.095 879.407 101.569C878.789 101.244 878.298 100.722 878.013 100.085C877.726 99.4489 877.661 98.735 877.826 98.0572C877.992 97.3792 878.379 96.7763 878.927 96.344C879.475 95.9118 880.151 95.6751 880.849 95.6716C881.162 95.6745 881.473 95.7231 881.772 95.8159V92.9322C880.447 92.9547 879.155 93.3626 878.057 94.1059C876.959 94.8494 876.101 95.8963 875.587 97.119C875.074 98.3417 874.926 99.6874 875.165 100.992C875.403 102.297 876.016 103.504 876.928 104.466C878.087 105.249 879.459 105.654 880.856 105.627C884.637 105.627 887.704 102.567 887.712 98.7859Z" fill="black"/>
<path d="M931.897 140.083C932.571 140.085 933.236 140.232 933.848 140.514C934.458 140.796 935.001 141.206 935.437 141.715C935.665 141.2 935.787 140.645 935.794 140.083C935.794 139.576 935.694 139.074 935.497 138.605C935.302 138.136 935.015 137.71 934.653 137.352C934.291 136.993 933.861 136.709 933.389 136.515C932.916 136.321 932.409 136.221 931.897 136.221C931.386 136.221 930.878 136.321 930.406 136.515C929.933 136.709 929.503 136.993 929.142 137.352C928.78 137.71 928.493 138.136 928.297 138.605C928.101 139.074 928.001 139.576 928.001 140.083C928.008 140.645 928.129 141.2 928.357 141.715C928.789 141.201 929.331 140.789 929.943 140.507C930.555 140.224 931.222 140.08 931.897 140.083Z" fill="#A9B4BD"/>
<path d="M935.794 144.706C935.794 143.943 935.565 143.196 935.137 142.561C934.709 141.926 934.101 141.43 933.389 141.138C932.676 140.846 931.893 140.769 931.137 140.918C930.381 141.067 929.687 141.435 929.142 141.975C928.596 142.516 928.225 143.204 928.075 143.953C927.924 144.702 928.002 145.479 928.297 146.184C928.591 146.89 929.091 147.493 929.733 147.918C930.373 148.342 931.127 148.569 931.897 148.569C932.929 148.562 933.916 148.152 934.644 147.43C935.374 146.707 935.787 145.729 935.794 144.706Z" fill="#4B5E6A"/>
<path d="M935.794 130.862C935.794 130.098 935.565 129.352 935.137 128.716C934.709 128.081 934.101 127.586 933.389 127.294C932.676 127.002 931.893 126.925 931.137 127.074C930.381 127.223 929.687 127.591 929.142 128.131C928.596 128.671 928.225 129.36 928.075 130.109C927.924 130.858 928.002 131.634 928.297 132.34C928.591 133.046 929.091 133.649 929.733 134.074C930.373 134.498 931.127 134.724 931.897 134.724C932.93 134.724 933.922 134.318 934.653 133.593C935.383 132.869 935.794 131.887 935.794 130.862Z" fill="#F5333F"/>
<path d="M981.595 85.5186L984.029 90.4944L989.522 91.2913C991.676 91.6145 992.193 93.1223 990.6 94.6732L986.614 98.5719L987.562 104.065C987.928 106.219 986.614 107.167 984.698 106.133L979.765 103.548L974.832 106.133C972.872 107.167 971.601 106.219 971.967 104.065L972.915 98.5719L968.929 94.6732C967.336 93.1223 967.853 91.6145 970.007 91.2913L975.5 90.4944L977.934 85.5186C979.032 83.4938 980.626 83.4938 981.595 85.5186Z" fill="#FFCC33"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M830 130.287L837.242 126L844.486 130.287V131.782L837.242 144.395L830.942 133.427L832.977 132.281H840.518L839.178 134.625H834.366L837.242 139.709L841.956 131.484L837.242 128.741L830 132.979V130.287ZM842.154 143.946V137.565L844.486 133.478V145.342L837.242 149.529L830 145.342V133.578L832.332 137.615V143.946L837.242 146.838L842.154 143.946Z" fill="#C800A0"/>
<path d="M891.755 126C893.822 126 895.5 127.676 895.5 129.745V145.755C895.5 147.822 893.822 149.5 891.755 149.5H875.745C873.676 149.5 872 147.822 872 145.755V129.745C872 127.676 873.676 126 875.745 126H891.755Z" fill="#FFFC00"/>
<path d="M891.673 141.778C891.603 141.549 891.272 141.387 891.272 141.387C891.24 141.371 891.212 141.356 891.189 141.345C890.636 141.078 890.147 140.756 889.735 140.391C889.403 140.098 889.12 139.774 888.892 139.432C888.613 139.013 888.483 138.664 888.427 138.473C888.395 138.35 888.401 138.3 888.427 138.237C888.448 138.182 888.513 138.131 888.542 138.106C888.729 137.974 889.029 137.779 889.214 137.66C889.374 137.557 889.511 137.467 889.592 137.412C889.851 137.231 890.028 137.046 890.132 136.846C890.267 136.589 890.284 136.305 890.179 136.026C890.036 135.651 889.686 135.426 889.239 135.426C889.14 135.426 889.038 135.438 888.935 135.459C888.68 135.516 888.438 135.606 888.234 135.685C888.231 135.687 888.227 135.687 888.223 135.687C888.22 135.686 888.216 135.685 888.213 135.683C888.211 135.682 888.208 135.678 888.206 135.674C888.205 135.671 888.205 135.667 888.205 135.664C888.226 135.162 888.251 134.485 888.194 133.844C888.145 133.263 888.025 132.773 887.831 132.346C887.634 131.918 887.379 131.6 887.179 131.372C886.989 131.154 886.654 130.832 886.149 130.544C885.441 130.138 884.633 129.932 883.749 129.932C882.867 129.932 882.06 130.138 881.349 130.544C880.815 130.849 880.474 131.193 880.319 131.372C880.12 131.6 879.863 131.918 879.668 132.346C879.472 132.773 879.353 133.262 879.303 133.844C879.247 134.489 879.271 135.11 879.293 135.664C879.293 135.68 879.279 135.692 879.262 135.685C879.059 135.606 878.816 135.516 878.561 135.459C878.461 135.438 878.359 135.426 878.258 135.426C877.813 135.426 877.461 135.651 877.318 136.026C877.213 136.305 877.229 136.589 877.365 136.846C877.469 137.046 877.646 137.231 877.905 137.412C877.985 137.467 878.122 137.557 878.282 137.66C878.462 137.778 878.754 137.967 878.942 138.098C878.966 138.114 879.045 138.173 879.069 138.237C879.095 138.303 879.1 138.352 879.066 138.484C879.008 138.674 878.878 139.022 878.605 139.432C878.376 139.777 878.093 140.098 877.761 140.392C877.349 140.756 876.86 141.078 876.307 141.345C876.281 141.358 876.249 141.372 876.216 141.392C876.216 141.392 875.887 141.56 875.823 141.778C875.732 142.1 875.978 142.402 876.226 142.563C876.635 142.827 877.133 142.969 877.422 143.046C877.502 143.067 877.575 143.087 877.641 143.107C877.682 143.12 877.786 143.16 877.831 143.218C877.887 143.291 877.894 143.379 877.913 143.48C877.945 143.65 878.015 143.859 878.225 144.004C878.455 144.163 878.748 144.174 879.119 144.189C879.506 144.204 879.988 144.222 880.54 144.405C880.795 144.49 881.028 144.632 881.295 144.798C881.856 145.143 882.554 145.571 883.743 145.571C884.936 145.571 885.639 145.14 886.202 144.794C886.469 144.631 886.699 144.49 886.949 144.406C887.502 144.224 887.983 144.205 888.371 144.191C888.742 144.176 889.034 144.166 889.265 144.006C889.489 143.851 889.553 143.62 889.583 143.447C889.6 143.362 889.609 143.284 889.659 143.222C889.702 143.166 889.798 143.129 889.842 143.114C889.909 143.092 889.986 143.073 890.069 143.05C890.358 142.972 890.721 142.882 891.161 142.632C891.692 142.331 891.728 141.962 891.673 141.778Z" fill="white"/>
<path d="M892.132 141.6C892.014 141.28 891.789 141.111 891.536 140.969C891.488 140.94 891.443 140.918 891.407 140.902C891.332 140.862 891.254 140.824 891.176 140.784C890.383 140.364 889.764 139.832 889.334 139.204C889.189 138.992 889.088 138.8 889.018 138.644C888.981 138.538 888.984 138.479 889.009 138.424C889.029 138.383 889.082 138.34 889.112 138.319C889.235 138.237 889.36 138.157 889.485 138.077C889.654 137.966 889.789 137.878 889.875 137.819C890.202 137.592 890.429 137.35 890.572 137.079C890.773 136.698 890.798 136.263 890.642 135.853C890.428 135.286 889.891 134.933 889.24 134.933C889.106 134.933 888.968 134.949 888.833 134.978C888.796 134.986 888.762 134.994 888.728 135.003C888.734 134.617 888.725 134.205 888.689 133.803C888.568 132.384 888.072 131.64 887.554 131.049C887.338 130.802 886.961 130.44 886.398 130.117C885.611 129.665 884.721 129.438 883.749 129.438C882.781 129.438 881.891 129.665 881.105 130.116C880.538 130.438 880.161 130.802 879.947 131.047C879.429 131.639 878.933 132.383 878.811 133.8C878.776 134.203 878.768 134.616 878.773 135.002C878.738 134.993 878.702 134.985 878.667 134.977C878.534 134.947 878.396 134.932 878.26 134.932C877.611 134.932 877.073 135.285 876.859 135.852C876.704 136.262 876.728 136.697 876.929 137.077C877.071 137.347 877.3 137.59 877.625 137.818C877.713 137.879 877.846 137.966 878.016 138.074C878.108 138.134 878.242 138.222 878.374 138.309C878.394 138.323 878.465 138.374 878.489 138.424C878.518 138.48 878.518 138.542 878.476 138.653C878.407 138.807 878.306 138.994 878.165 139.203C877.743 139.818 877.142 140.339 876.375 140.754C875.968 140.971 875.546 141.114 875.368 141.599C875.233 141.965 875.321 142.382 875.662 142.733C875.775 142.853 875.916 142.96 876.095 143.059C876.514 143.291 876.869 143.404 877.151 143.482C877.2 143.497 877.313 143.533 877.364 143.578C877.488 143.686 877.471 143.851 877.636 144.092C877.738 144.242 877.853 144.344 877.948 144.41C878.296 144.651 878.688 144.666 879.105 144.683C879.479 144.697 879.903 144.713 880.389 144.873C880.591 144.939 880.8 145.069 881.04 145.217C881.621 145.574 882.418 146.063 883.748 146.063C885.08 146.063 885.88 145.571 886.466 145.213C886.706 145.066 886.914 144.938 887.108 144.873C887.593 144.713 888.019 144.697 888.393 144.683C888.808 144.666 889.199 144.651 889.549 144.41C889.694 144.309 889.816 144.177 889.905 144.023C890.023 143.82 890.022 143.677 890.134 143.579C890.18 143.539 890.281 143.505 890.335 143.489C890.618 143.411 890.979 143.297 891.406 143.062C891.595 142.958 891.742 142.844 891.859 142.713L891.863 142.709C892.182 142.363 892.264 141.958 892.132 141.6ZM890.949 142.236C890.227 142.634 889.747 142.591 889.374 142.831C889.058 143.034 889.243 143.476 889.014 143.633C888.731 143.83 887.895 143.62 886.815 143.977C885.925 144.272 885.355 145.118 883.751 145.118C882.143 145.118 881.591 144.274 880.687 143.977C879.607 143.62 878.769 143.83 878.487 143.633C878.259 143.476 878.445 143.034 878.128 142.831C877.755 142.59 877.275 142.632 876.553 142.236C876.093 141.982 876.354 141.825 876.507 141.751C879.122 140.485 879.538 138.53 879.558 138.383C879.581 138.209 879.606 138.07 879.413 137.89C879.226 137.717 878.396 137.204 878.168 137.044C877.787 136.779 877.62 136.513 877.744 136.186C877.829 135.96 878.041 135.877 878.263 135.877C878.333 135.877 878.404 135.885 878.471 135.9C878.888 135.991 879.294 136.2 879.528 136.256C879.561 136.264 879.589 136.267 879.614 136.267C879.739 136.267 879.782 136.205 879.774 136.062C879.747 135.605 879.681 134.714 879.754 133.882C879.853 132.737 880.222 132.17 880.661 131.667C880.872 131.426 881.861 130.38 883.753 130.38C885.649 130.38 886.633 131.426 886.845 131.667C887.283 132.169 887.653 132.736 887.752 133.882C887.823 134.714 887.761 135.605 887.732 136.062C887.722 136.211 887.768 136.267 887.892 136.267C887.916 136.267 887.946 136.264 887.978 136.256C888.212 136.2 888.618 135.991 889.034 135.9C889.102 135.885 889.172 135.877 889.242 135.877C889.465 135.877 889.675 135.963 889.761 136.186C889.885 136.513 889.718 136.779 889.338 137.044C889.108 137.204 888.279 137.717 888.093 137.89C887.9 138.069 887.925 138.206 887.948 138.383C887.966 138.53 888.383 140.485 890.999 141.751C891.147 141.825 891.409 141.982 890.949 142.236Z" fill="black"/>
<path d="M677.647 146.911C695.167 146.911 709.412 132.796 709.412 115.337C709.412 97.8766 695.167 83.7632 677.647 83.7632C660.127 83.7632 645.882 97.8766 645.882 115.337C645.882 132.796 660.127 146.911 677.647 146.911Z" fill="#5F5CE7" stroke="#DFDEFA" stroke-width="6"/>
<path d="M297.647 142.236C312.568 142.236 324.706 130.215 324.706 115.336C324.706 100.458 312.568 88.437 297.647 88.437C282.726 88.437 270.588 100.458 270.588 115.336C270.588 130.215 282.726 142.236 297.647 142.236Z" fill="white" stroke="#EFF2F5" stroke-width="6"/>
<path d="M677.365 118.401C676.097 119.781 674.415 120.799 672.536 121.254H679.9C681.826 121.254 683.552 120.146 684.347 118.401H677.365Z" fill="white"/>
<path d="M679.534 112.711C679.458 113.713 679.228 114.669 678.876 115.564H685.646L686.945 112.711H679.534Z" fill="white"/>
<path d="M679.564 107.005V109.858H688.242L689.54 107.005H679.564Z" fill="white"/>
<path d="M676.692 101.314C675.102 101.33 673.513 101.694 672.107 102.407C670.733 103.105 669.541 104.107 668.608 105.321C667.676 106.55 667.035 107.992 666.745 109.509C666.592 110.313 666.576 111.102 666.576 111.922C666.576 112.787 666.576 113.637 666.576 114.502C666.576 115.64 666.576 116.778 666.576 117.916C666.576 118.842 666.576 119.753 666.576 120.678C666.576 121.407 666.592 122.151 666.469 122.879C666.24 124.396 665.583 125.944 664.361 126.931C663.842 127.34 663.231 127.644 662.574 127.749C662.543 127.749 662.391 127.749 662.36 127.78C662.36 127.795 662.36 127.826 662.36 127.841C662.345 127.947 662.36 128.068 662.36 128.175C662.36 128.402 662.36 128.645 662.36 128.873C662.36 129.04 662.36 129.192 662.36 129.359C664.086 129.359 665.813 128.888 667.311 128.038C668.822 127.188 670.091 125.928 670.855 124.366C671.298 123.455 671.558 122.439 671.619 121.421C670.626 121.421 669.633 121.269 668.669 120.981C671.084 120.496 673.284 119.146 674.751 117.188C676.034 115.518 676.692 113.455 676.692 111.36C676.692 110.465 676.692 109.57 676.692 108.69V104.167H690.84L692.153 101.314H676.692ZM671.634 116.657C671.022 116.657 670.534 116.171 670.534 115.564C670.534 114.957 671.022 114.471 671.634 114.471C672.245 114.471 672.734 114.957 672.734 115.564C672.734 116.171 672.245 116.657 671.634 116.657Z" fill="white"/>
<path d="M305.401 124.101V122.153C305.401 121.12 304.965 120.129 304.188 119.399C303.412 118.668 302.359 118.259 301.261 118.259H292.984C291.886 118.259 290.833 118.668 290.056 119.399C289.281 120.129 288.845 121.12 288.845 122.153V124.101" stroke="#4B82FB" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M297.122 114.363C299.408 114.363 301.261 112.619 301.261 110.468C301.261 108.317 299.408 106.573 297.122 106.573C294.836 106.573 292.984 108.317 292.984 110.468C292.984 112.619 294.836 114.363 297.122 114.363Z" stroke="#4B82FB" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M203.529 10.5882H20C12.203 10.5882 5.88235 16.9089 5.88235 24.7059V208.235C5.88235 216.032 12.203 222.353 20 222.353H203.529C211.326 222.353 217.647 216.032 217.647 208.235V24.7059C217.647 16.9089 211.326 10.5882 203.529 10.5882Z" fill="white" stroke="#EFF2F5" stroke-width="10"/>
<path d="M24.7059 72.1018C24.7059 68.2294 29.5781 65.0907 35.5882 65.0907H187.941C193.952 65.0907 198.824 68.2294 198.824 72.1018V139.875C198.824 143.747 193.952 146.886 187.941 146.886H35.5882C29.5781 146.886 24.7059 143.747 24.7059 139.875V72.1018Z" fill="#F4F6F8"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M123.476 89.4625C121.215 86.5693 116.815 86.5693 114.554 89.4625L103.268 103.899C101.895 105.654 99.2144 105.622 97.8842 103.835C95.6261 100.801 91.0573 100.801 88.7993 103.835L79.9399 115.74C77.1839 119.444 79.8458 124.685 84.4824 124.685H87.018H113.4H139.475C144.174 124.685 146.819 119.32 143.936 115.634L123.476 89.4625Z" fill="white"/>
<path d="M119.518 35.0935H120.691L122.479 38.2052H122.553L124.341 35.0935H125.514L123.031 39.2513V41.9385H122.001V39.2513L119.518 35.0935ZM133.262 38.516C133.262 39.2468 133.128 39.8752 132.861 40.4011C132.594 40.9247 132.227 41.328 131.761 41.6109C131.298 41.8916 130.771 42.032 130.181 42.032C129.588 42.032 129.059 41.8916 128.593 41.6109C128.129 41.328 127.765 40.9235 127.496 40.3976C127.229 39.8719 127.095 39.2446 127.095 38.516C127.095 37.7852 127.229 37.158 127.496 36.6344C127.765 36.1085 128.129 35.7052 128.593 35.4245C129.059 35.1414 129.588 35 130.181 35C130.771 35 131.298 35.1414 131.761 35.4245C132.227 35.7052 132.594 36.1085 132.861 36.6344C133.128 37.158 133.262 37.7852 133.262 38.516ZM132.24 38.516C132.24 37.9589 132.149 37.4899 131.968 37.1089C131.791 36.7256 131.546 36.436 131.233 36.2399C130.924 36.0416 130.573 35.9425 130.181 35.9425C129.786 35.9425 129.434 36.0416 129.125 36.2399C128.815 36.436 128.569 36.7256 128.389 37.1089C128.211 37.4899 128.122 37.9589 128.122 38.516C128.122 39.0731 128.211 39.5432 128.389 39.9265C128.569 40.3074 128.815 40.5971 129.125 40.7954C129.434 40.9915 129.786 41.0895 130.181 41.0895C130.573 41.0895 130.924 40.9915 131.233 40.7954C131.546 40.5971 131.791 40.3074 131.968 39.9265C132.149 39.5432 132.24 39.0731 132.24 38.516ZM140.128 35.0935H141.164V39.5955C141.164 40.0746 141.052 40.4991 140.827 40.8689C140.601 41.2366 140.285 41.5262 139.878 41.7379C139.469 41.9474 138.992 42.0521 138.444 42.0521C137.898 42.0521 137.421 41.9474 137.013 41.7379C136.605 41.5262 136.289 41.2366 136.064 40.8689C135.839 40.4991 135.726 40.0746 135.726 39.5955V35.0935H136.759V39.512C136.759 39.8218 136.827 40.0969 136.962 40.3375C137.101 40.5782 137.296 40.7675 137.548 40.9058C137.8 41.0416 138.098 41.1096 138.444 41.1096C138.791 41.1096 139.091 41.0416 139.342 40.9058C139.596 40.7675 139.791 40.5782 139.925 40.3375C140.06 40.0969 140.128 39.8218 140.128 39.512V35.0935ZM143.842 41.9385V35.0935H146.282C146.812 35.0935 147.252 35.1849 147.602 35.3676C147.954 35.5504 148.218 35.8032 148.391 36.1264C148.565 36.4472 148.652 36.8181 148.652 37.2393C148.652 37.6581 148.564 38.0269 148.387 38.3455C148.214 38.662 147.951 38.9081 147.599 39.0842C147.249 39.2602 146.809 39.3482 146.279 39.3482H144.431V38.4592H146.185C146.519 38.4592 146.791 38.4113 147 38.3155C147.212 38.2196 147.367 38.0804 147.465 37.8976C147.564 37.7149 147.612 37.4955 147.612 37.2393C147.612 36.9808 147.562 36.7568 147.461 36.5675C147.364 36.3781 147.209 36.2333 146.998 36.1329C146.788 36.0305 146.513 35.9793 146.172 35.9793H144.875V41.9385H143.842ZM147.221 38.8502L148.912 41.9385H147.735L146.078 38.8502H147.221ZM155.331 41.9385H154.234L156.698 35.0935H157.891L160.354 41.9385H159.258L157.322 36.3368H157.268L155.331 41.9385ZM155.514 39.258H159.071V40.1269H155.514V39.258ZM164.734 41.9385H162.519V35.0935H164.805C165.475 35.0935 166.052 35.2306 166.533 35.5046C167.014 35.7765 167.382 36.1675 167.639 36.6778C167.898 37.1858 168.027 37.7952 168.027 38.506C168.027 39.2189 167.896 39.8318 167.635 40.3442C167.378 40.8567 167.002 41.2511 166.513 41.5274C166.022 41.8014 165.429 41.9385 164.734 41.9385ZM163.552 41.0361H164.678C165.199 41.0361 165.633 40.938 165.978 40.742C166.324 40.5436 166.581 40.2573 166.753 39.8829C166.925 39.5065 167.011 39.0474 167.011 38.506C167.011 37.9689 166.925 37.5133 166.753 37.1391C166.584 36.7647 166.331 36.4806 165.994 36.2867C165.658 36.0928 165.24 35.996 164.741 35.996H163.552V41.0361Z" fill="#647380"/>
<path d="M62.4616 31.5569L56.2395 42.3337L61.6283 45.445L67.8504 34.6684L62.4616 31.5569Z" fill="#FBBC04"/>
<path d="M74.0728 42.3333L67.8502 31.5563C66.9911 30.0683 65.0883 29.5582 63.6002 30.4172C62.1123 31.2764 61.6021 33.1791 62.4612 34.6671L68.6839 45.4441C69.5429 46.9321 71.4457 47.4413 72.9338 46.5832C74.4218 45.7241 74.9309 43.8214 74.0728 42.3333Z" fill="#4285F4"/>
<path d="M58.9343 47.0001C60.6524 47.0001 62.0451 45.6074 62.0451 43.8894C62.0451 42.1713 60.6524 40.7786 58.9343 40.7786C57.2163 40.7786 55.8235 42.1713 55.8235 43.8894C55.8235 45.6074 57.2163 47.0001 58.9343 47.0001Z" fill="#34A853"/>
<path d="M160 171.765H63.5294C60.9304 171.765 58.8235 173.872 58.8235 176.471V194.118C58.8235 196.717 60.9304 198.824 63.5294 198.824H160C162.599 198.824 164.706 196.717 164.706 194.118V176.471C164.706 173.872 162.599 171.765 160 171.765Z" fill="#212B36"/>
<path d="M163.529 167.059H60C56.7513 167.059 54.1176 169.692 54.1176 172.941V197.647C54.1176 200.896 56.7513 203.529 60 203.529H163.529C166.778 203.529 169.412 200.896 169.412 197.647V172.941C169.412 169.692 166.778 167.059 163.529 167.059Z" stroke="#4B82FB" stroke-width="2"/>
<path d="M83.74 180.855L86.2801 188.058H86.3804L88.9205 180.855H90.0067L86.8649 189.412H85.7954L82.6538 180.855H83.74ZM91.3234 189.412V182.994H92.3093V189.412H91.3234ZM91.8247 181.925C91.6325 181.925 91.4668 181.86 91.3275 181.728C91.1911 181.598 91.1228 181.44 91.1228 181.256C91.1228 181.073 91.1911 180.915 91.3275 180.785C91.4668 180.654 91.6325 180.588 91.8247 180.588C92.0168 180.588 92.1812 180.654 92.3176 180.785C92.4569 180.915 92.5266 181.073 92.5266 181.256C92.5266 181.44 92.4569 181.598 92.3176 181.728C92.1812 181.86 92.0168 181.925 91.8247 181.925ZM96.9233 189.546C96.3051 189.546 95.7717 189.409 95.3233 189.136C94.8777 188.86 94.5336 188.476 94.2913 187.984C94.0518 187.487 93.932 186.911 93.932 186.253C93.932 185.596 94.0518 185.016 94.2913 184.515C94.5336 184.012 94.8706 183.619 95.3024 183.338C95.7368 183.053 96.2438 182.911 96.8231 182.911C97.1573 182.911 97.4873 182.967 97.8132 183.078C98.1391 183.189 98.4356 183.371 98.7031 183.621C98.9705 183.869 99.1835 184.198 99.3422 184.607C99.5011 185.016 99.5805 185.521 99.5805 186.12V186.538H94.6339V185.685H98.5778C98.5778 185.324 98.5053 185 98.3605 184.716C98.2185 184.432 98.0152 184.207 97.7506 184.044C97.4887 183.879 97.1795 183.796 96.8231 183.796C96.4304 183.796 96.0906 183.894 95.8036 184.089C95.5196 184.281 95.3009 184.532 95.1478 184.841C94.9946 185.151 94.918 185.482 94.918 185.835V186.404C94.918 186.888 95.0015 187.299 95.1687 187.636C95.3386 187.971 95.5739 188.225 95.8747 188.401C96.1755 188.573 96.5251 188.66 96.9233 188.66C97.1824 188.66 97.4164 188.624 97.6252 188.551C97.8369 188.476 98.0193 188.365 98.1725 188.216C98.3256 188.067 98.4441 187.88 98.5276 187.658L99.4801 187.925C99.3799 188.247 99.2114 188.532 98.9746 188.776C98.7379 189.019 98.4454 189.208 98.0973 189.345C97.7492 189.479 97.3579 189.546 96.9233 189.546ZM102.652 189.412L100.697 182.994H101.733L103.12 187.908H103.187L104.557 182.994H105.61L106.963 187.891H107.03L108.417 182.994H109.453L107.498 189.412H106.529L105.125 184.482H105.025L103.621 189.412H102.652ZM114.301 189.412V182.994H115.253V183.998H115.337C115.471 183.655 115.686 183.388 115.984 183.199C116.282 183.007 116.64 182.911 117.058 182.911C117.482 182.911 117.834 183.007 118.115 183.199C118.399 183.388 118.621 183.655 118.78 183.998H118.846C119.011 183.666 119.258 183.402 119.586 183.208C119.914 183.009 120.308 182.911 120.768 182.911C121.342 182.911 121.811 183.091 122.176 183.451C122.541 183.807 122.724 184.362 122.724 185.116V189.412H121.738V185.116C121.738 184.644 121.608 184.305 121.348 184.102C121.089 183.899 120.785 183.796 120.434 183.796C119.982 183.796 119.633 183.933 119.385 184.206C119.138 184.476 119.013 184.819 119.013 185.234V189.412H118.011V185.016C118.011 184.652 117.893 184.358 117.655 184.135C117.419 183.909 117.114 183.796 116.741 183.796C116.484 183.796 116.245 183.865 116.022 184.001C115.802 184.138 115.624 184.327 115.487 184.569C115.354 184.809 115.287 185.086 115.287 185.401V189.412H114.301ZM127.251 189.546C126.672 189.546 126.164 189.407 125.726 189.132C125.292 188.856 124.952 188.471 124.706 187.974C124.464 187.479 124.342 186.9 124.342 186.236C124.342 185.568 124.464 184.985 124.706 184.486C124.952 183.987 125.292 183.6 125.726 183.325C126.164 183.049 126.672 182.911 127.251 182.911C127.829 182.911 128.336 183.049 128.772 183.325C129.208 183.6 129.548 183.987 129.791 184.486C130.035 184.985 130.159 185.568 130.159 186.236C130.159 186.9 130.035 187.479 129.791 187.974C129.548 188.471 129.208 188.856 128.772 189.132C128.336 189.407 127.829 189.546 127.251 189.546ZM127.251 188.66C127.691 188.66 128.053 188.547 128.336 188.321C128.621 188.095 128.832 187.799 128.968 187.432C129.105 187.064 129.173 186.666 129.173 186.236C129.173 185.808 129.105 185.408 128.968 185.038C128.832 184.667 128.621 184.368 128.336 184.139C128.053 183.911 127.691 183.796 127.251 183.796C126.811 183.796 126.448 183.911 126.165 184.139C125.88 184.368 125.671 184.667 125.534 185.038C125.398 185.408 125.329 185.808 125.329 186.236C125.329 186.666 125.398 187.064 125.534 187.432C125.671 187.799 125.88 188.095 126.165 188.321C126.448 188.547 126.811 188.66 127.251 188.66ZM131.781 189.412V182.994H132.734V183.964H132.8C132.918 183.646 133.129 183.388 133.435 183.191C133.742 182.993 134.087 182.894 134.472 182.894C134.544 182.894 134.634 182.895 134.744 182.899C134.852 182.901 134.934 182.906 134.989 182.911V183.914C134.956 183.906 134.88 183.893 134.76 183.876C134.642 183.856 134.519 183.847 134.388 183.847C134.076 183.847 133.798 183.913 133.553 184.044C133.311 184.172 133.118 184.349 132.976 184.578C132.836 184.804 132.767 185.061 132.767 185.351V189.412H131.781ZM138.772 189.546C138.153 189.546 137.62 189.409 137.171 189.136C136.726 188.86 136.381 188.476 136.139 187.984C135.9 187.487 135.78 186.911 135.78 186.253C135.78 185.596 135.9 185.016 136.139 184.515C136.381 184.012 136.719 183.619 137.151 183.338C137.585 183.053 138.092 182.911 138.671 182.911C139.005 182.911 139.335 182.967 139.661 183.078C139.987 183.189 140.284 183.371 140.551 183.621C140.819 183.869 141.032 184.198 141.191 184.607C141.349 185.016 141.428 185.521 141.428 186.12V186.538H136.482V185.685H140.426C140.426 185.324 140.353 185 140.208 184.716C140.066 184.432 139.864 184.207 139.599 184.044C139.336 183.879 139.027 183.796 138.671 183.796C138.279 183.796 137.939 183.894 137.652 184.089C137.367 184.281 137.149 184.532 136.995 184.841C136.842 185.151 136.766 185.482 136.766 185.835V186.404C136.766 186.888 136.849 187.299 137.016 187.636C137.186 187.971 137.422 188.225 137.722 188.401C138.024 188.573 138.373 188.66 138.772 188.66C139.031 188.66 139.265 188.624 139.473 188.551C139.685 188.476 139.867 188.365 140.02 188.216C140.174 188.067 140.292 187.88 140.375 187.658L141.328 187.925C141.228 188.247 141.059 188.532 140.822 188.776C140.586 189.019 140.293 189.208 139.945 189.345C139.596 189.479 139.206 189.546 138.772 189.546Z" fill="white"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M157.647 207.328V183.529L174.872 200.796H164.795L164.185 200.98L157.647 207.328Z" fill="white"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M171.147 208.331L165.789 210.612L158.832 194.133L164.309 191.825L171.147 208.331Z" fill="white"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M169.166 207.32L166.426 208.469L161.819 197.512L164.554 196.36L169.166 207.32Z" fill="black"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M159.133 187.107V203.733L163.545 199.474L164.181 199.267H171.267L159.133 187.107Z" fill="black"/>
<path d="M733 118H751.712C759.462 118 765.746 111.654 765.746 103.826V44.1745C765.746 36.3462 772.029 30 779.78 30H802" stroke="#716FDA" stroke-width="0.75"/>
<path d="M802.353 205.294H780C772.204 205.294 765.882 198.973 765.882 191.176V131.765C765.882 123.968 759.561 117.647 751.765 117.647H732.941" stroke="#716FDA" stroke-width="0.75"/>
<path d="M796.701 25.5672C796.701 24.6615 797.681 24.0954 798.466 24.5482L805.525 28.6236C806.309 29.0765 806.309 30.2086 805.525 30.6614L798.466 34.7368C797.681 35.1896 796.701 34.6236 796.701 33.718V25.5672Z" fill="#5F5CE7"/>
<path d="M796.701 200.861C796.701 199.955 797.681 199.389 798.466 199.842L805.525 203.918C806.309 204.371 806.309 205.502 805.525 205.955L798.466 210.031C797.681 210.483 796.701 209.918 796.701 209.012V200.861Z" fill="#5F5CE7"/>
<path d="M796.701 113.802C796.701 112.897 797.681 112.331 798.466 112.784L805.525 116.859C806.309 117.312 806.309 118.444 805.525 118.896L798.466 122.972C797.681 123.425 796.701 122.859 796.701 121.953V113.802Z" fill="#5F5CE7"/>
<mask id="mask0_3233_7842" style="mask-type:alpha" maskUnits="userSpaceOnUse" x="825" y="84" width="24" height="24">
<path d="M825 84H848.528V107.386H825V84Z" fill="white"/>
</mask>
<g mask="url(#mask0_3233_7842)">
<path fill-rule="evenodd" clip-rule="evenodd" d="M848.528 95.7637C848.528 89.2663 843.26 83.999 836.764 83.999C830.266 83.999 824.999 89.2663 824.999 95.7637C824.999 101.636 829.3 106.503 834.925 107.385V99.1644H831.938V95.7637H834.925V93.1718C834.925 90.2233 836.681 88.5947 839.368 88.5947C840.655 88.5947 842.003 88.8244 842.003 88.8244V91.7196H840.519C839.057 91.7196 838.601 92.6266 838.601 93.5569V95.7637H841.864L841.343 99.1644H838.601V107.385C844.226 106.503 848.528 101.636 848.528 95.7637Z" fill="#1877F2"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M841.342 99.1645L841.864 95.7638H838.601V93.557C838.601 92.6266 839.057 91.7197 840.519 91.7197H842.003V88.8245C842.003 88.8245 840.655 88.5947 839.368 88.5947C836.681 88.5947 834.925 90.2233 834.925 93.1719V95.7638H831.938V99.1645H834.925V107.386C835.524 107.48 836.138 107.528 836.764 107.528C837.388 107.528 838.002 107.48 838.601 107.386V99.1645H841.342Z" fill="white"/>
</g>
<mask id="mask1_3233_7842" style="mask-type:alpha" maskUnits="userSpaceOnUse" x="86" y="29" width="20" height="19">
<path d="M86.7059 29H105.188V47.37H86.7059V29Z" fill="white"/>
</mask>
<g mask="url(#mask1_3233_7842)">
<path fill-rule="evenodd" clip-rule="evenodd" d="M105.188 38.241C105.188 33.1371 101.05 28.9995 95.9462 28.9995C90.8423 28.9995 86.7047 33.1371 86.7047 38.241C86.7047 42.8537 90.0842 46.6769 94.5023 47.3703V40.9123H92.1558V38.241H94.5023V36.205C94.5023 33.8888 95.882 32.6095 97.993 32.6095C99.004 32.6095 100.062 32.79 100.062 32.79V35.0643H98.8963C97.7483 35.0643 97.3903 35.7766 97.3903 36.5074V38.241H99.9534L99.5436 40.9123H97.3903V47.3703C101.808 46.6769 105.188 42.8537 105.188 38.241Z" fill="#1877F2"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M99.5434 40.9119L99.9532 38.2406H97.3902V36.507C97.3902 35.7761 97.7482 35.0639 98.8961 35.0639H100.061V32.7895C100.061 32.7895 99.0039 32.6091 97.9928 32.6091C95.8818 32.6091 94.5022 33.8884 94.5022 36.2045V38.2406H92.1556V40.9119H94.5022V47.3699C94.9727 47.4437 95.4549 47.4821 95.9461 47.4821C96.4374 47.4821 96.9196 47.4437 97.3902 47.3699V40.9119H99.5434Z" fill="white"/>
</g>
<path d="M869.293 202.527C869.217 202.29 869.116 202.078 868.988 201.891C868.863 201.701 868.714 201.539 868.539 201.406C868.365 201.271 868.165 201.168 867.941 201.098C867.72 201.027 867.477 200.992 867.211 200.992C866.76 200.992 866.354 201.108 865.992 201.34C865.63 201.572 865.344 201.911 865.133 202.359C864.924 202.805 864.82 203.35 864.82 203.996C864.82 204.645 864.926 205.193 865.137 205.641C865.348 206.089 865.637 206.428 866.004 206.66C866.371 206.892 866.789 207.008 867.258 207.008C867.693 207.008 868.072 206.919 868.395 206.742C868.72 206.565 868.971 206.315 869.148 205.992C869.328 205.667 869.418 205.284 869.418 204.844L869.73 204.902H867.441V203.906H870.586V204.816C870.586 205.488 870.443 206.072 870.156 206.566C869.872 207.059 869.479 207.439 868.977 207.707C868.477 207.975 867.904 208.109 867.258 208.109C866.534 208.109 865.898 207.943 865.352 207.609C864.807 207.276 864.383 206.803 864.078 206.191C863.773 205.577 863.621 204.848 863.621 204.004C863.621 203.366 863.71 202.793 863.887 202.285C864.064 201.777 864.313 201.346 864.633 200.992C864.956 200.635 865.335 200.363 865.77 200.176C866.207 199.986 866.685 199.891 867.203 199.891C867.635 199.891 868.038 199.954 868.41 200.082C868.785 200.21 869.118 200.391 869.41 200.625C869.704 200.859 869.948 201.138 870.141 201.461C870.333 201.781 870.464 202.137 870.531 202.527H869.293ZM873.547 208H872.266L875.145 200H876.539L879.418 208H878.137L875.875 201.453H875.813L873.547 208ZM873.762 204.867H877.918V205.883H873.762V204.867ZM881.296 206.438V205.461L884.753 200H885.522V201.437H885.034L882.562 205.352V205.414H887.3V206.438H881.296ZM885.089 208V206.141L885.097 205.695V200H886.241V208H885.089Z" fill="#647380"/>
<path d="M979.531 136.113C978.994 136.113 978.532 136.016 978.144 135.82C977.759 135.625 977.462 135.359 977.253 135.023C977.045 134.685 976.941 134.302 976.941 133.875C976.941 133.549 977.009 133.26 977.144 133.008C977.279 132.753 977.468 132.517 977.71 132.301C977.953 132.085 978.233 131.867 978.55 131.648L979.839 130.738C980.058 130.595 980.229 130.444 980.351 130.285C980.473 130.124 980.535 129.924 980.535 129.688C980.535 129.5 980.454 129.32 980.292 129.148C980.131 128.977 979.915 128.891 979.644 128.891C979.457 128.891 979.291 128.936 979.148 129.027C979.007 129.118 978.897 129.236 978.816 129.379C978.738 129.52 978.699 129.668 978.699 129.824C978.699 130.007 978.748 130.19 978.847 130.375C978.949 130.56 979.079 130.751 979.238 130.949C979.397 131.145 979.563 131.348 979.738 131.559L983.453 136H982.132L979.058 132.387C978.8 132.082 978.561 131.796 978.339 131.527C978.118 131.257 977.938 130.983 977.8 130.707C977.665 130.428 977.597 130.128 977.597 129.805C977.597 129.437 977.681 129.112 977.847 128.828C978.016 128.542 978.252 128.318 978.554 128.156C978.856 127.995 979.21 127.914 979.617 127.914C980.028 127.914 980.381 127.995 980.675 128.156C980.972 128.315 981.2 128.527 981.359 128.793C981.52 129.056 981.601 129.344 981.601 129.656C981.601 130.036 981.506 130.372 981.316 130.664C981.128 130.953 980.869 131.219 980.539 131.461L978.933 132.645C978.621 132.874 978.403 133.1 978.281 133.324C978.161 133.546 978.101 133.719 978.101 133.844C978.101 134.073 978.16 134.285 978.277 134.48C978.397 134.676 978.563 134.832 978.777 134.949C978.993 135.066 979.246 135.125 979.535 135.125C979.832 135.125 980.121 135.061 980.402 134.934C980.686 134.803 980.942 134.617 981.171 134.375C981.403 134.133 981.587 133.842 981.722 133.504C981.858 133.165 981.925 132.786 981.925 132.367H982.98C982.98 132.883 982.921 133.319 982.804 133.676C982.687 134.03 982.545 134.319 982.378 134.543C982.214 134.764 982.059 134.937 981.914 135.062C981.867 135.104 981.822 135.146 981.781 135.187C981.739 135.229 981.695 135.271 981.648 135.312C981.377 135.586 981.049 135.788 980.664 135.918C980.281 136.048 979.903 136.113 979.531 136.113ZM963.357 142H964.822L967.369 148.219H967.462L970.009 142H971.474V150H970.326V144.211H970.251L967.892 149.988H966.939L964.58 144.207H964.505V150H963.357V142ZM981.178 146C981.178 146.854 981.022 147.589 980.709 148.203C980.397 148.815 979.969 149.286 979.424 149.617C978.883 149.945 978.267 150.109 977.577 150.109C976.884 150.109 976.265 149.945 975.721 149.617C975.18 149.286 974.752 148.814 974.44 148.199C974.127 147.585 973.971 146.852 973.971 146C973.971 145.146 974.127 144.413 974.44 143.801C974.752 143.186 975.18 142.715 975.721 142.387C976.265 142.056 976.884 141.891 977.577 141.891C978.267 141.891 978.883 142.056 979.424 142.387C979.969 142.715 980.397 143.186 980.709 143.801C981.022 144.413 981.178 145.146 981.178 146ZM979.983 146C979.983 145.349 979.877 144.801 979.667 144.355C979.458 143.908 979.172 143.569 978.807 143.34C978.445 143.108 978.035 142.992 977.577 142.992C977.116 142.992 976.704 143.108 976.342 143.34C975.98 143.569 975.694 143.908 975.483 144.355C975.275 144.801 975.17 145.349 975.17 146C975.17 146.651 975.275 147.201 975.483 147.648C975.694 148.094 975.98 148.432 976.342 148.664C976.704 148.893 977.116 149.008 977.577 149.008C978.035 149.008 978.445 148.893 978.807 148.664C979.172 148.432 979.458 148.094 979.667 147.648C979.877 147.201 979.983 146.651 979.983 146ZM983.683 150V142H986.535C987.154 142 987.669 142.107 988.078 142.32C988.489 142.534 988.796 142.829 989 143.207C989.203 143.582 989.304 144.016 989.304 144.508C989.304 144.997 989.201 145.428 988.996 145.801C988.792 146.171 988.485 146.458 988.074 146.664C987.665 146.87 987.151 146.973 986.531 146.973H984.371V145.934H986.421C986.812 145.934 987.13 145.878 987.375 145.766C987.622 145.654 987.803 145.491 987.917 145.277C988.032 145.064 988.089 144.807 988.089 144.508C988.089 144.206 988.031 143.944 987.914 143.723C987.799 143.501 987.618 143.332 987.371 143.215C987.126 143.095 986.804 143.035 986.406 143.035H984.89V150H983.683ZM987.632 146.391L989.609 150H988.234L986.296 146.391H987.632ZM991.773 150V142H996.789V143.039H992.98V145.477H996.527V146.512H992.98V148.961H996.835V150H991.773Z" fill="#647380"/>
<path d="M943 88.42H921V103.576H943L938.6 95.7533L943 88.42Z" fill="#232426"/>
<path d="M869.293 28.5273C869.217 28.2904 869.116 28.0781 868.988 27.8906C868.863 27.7005 868.714 27.5391 868.539 27.4063C868.365 27.2708 868.165 27.168 867.941 27.0977C867.72 27.0273 867.477 26.9922 867.211 26.9922C866.76 26.9922 866.354 27.1081 865.992 27.3398C865.63 27.5716 865.344 27.9115 865.133 28.3594C864.924 28.8047 864.82 29.3503 864.82 29.9961C864.82 30.6445 864.926 31.1927 865.137 31.6406C865.348 32.0885 865.637 32.4284 866.004 32.6602C866.371 32.8919 866.789 33.0078 867.258 33.0078C867.693 33.0078 868.072 32.9193 868.395 32.7422C868.72 32.5651 868.971 32.3151 869.148 31.9922C869.328 31.6667 869.418 31.2839 869.418 30.8438L869.73 30.9023H867.441V29.9062H870.586V30.8164C870.586 31.4883 870.443 32.0716 870.156 32.5664C869.872 33.0586 869.479 33.4388 868.977 33.707C868.477 33.9753 867.904 34.1094 867.258 34.1094C866.534 34.1094 865.898 33.9427 865.352 33.6094C864.807 33.276 864.383 32.8034 864.078 32.1914C863.773 31.5768 863.621 30.8477 863.621 30.0039C863.621 29.3659 863.71 28.793 863.887 28.2852C864.064 27.7773 864.313 27.3464 864.633 26.9922C864.956 26.6354 865.335 26.3633 865.77 26.1758C866.207 25.9857 866.685 25.8906 867.203 25.8906C867.635 25.8906 868.038 25.9544 868.41 26.082C868.785 26.2096 869.118 26.3906 869.41 26.625C869.704 26.8594 869.948 27.138 870.141 27.4609C870.333 27.7812 870.464 28.1367 870.531 28.5273H869.293ZM872.391 27.0391V26H878.582V27.0391H876.086V34H874.883V27.0391H872.391ZM880.95 26H882.415L884.962 32.2187H885.056L887.603 26H889.067V34H887.919V28.2109H887.845L885.485 33.9883H884.532L882.173 28.207H882.099V34H880.95V26Z" fill="#647380"/>
</g>
<defs>
<filter id="filter0_d_3233_7842" x="365.471" y="1.58823" width="234.067" height="233.765" filterUnits="userSpaceOnUse" color-interpolation-filters="sRGB">
<feFlood flood-opacity="0" result="BackgroundImageFix"/>
<feColorMatrix in="SourceAlpha" type="matrix" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 127 0" result="hardAlpha"/>
<feOffset dy="2"/>
<feGaussianBlur stdDeviation="3"/>
<feColorMatrix type="matrix" values="0 0 0 0 0.129412 0 0 0 0 0.168627 0 0 0 0 0.211765 0 0 0 0.02 0"/>
<feBlend mode="normal" in2="BackgroundImageFix" result="effect1_dropShadow_3233_7842"/>
<feBlend mode="normal" in="SourceGraphic" in2="effect1_dropShadow_3233_7842" result="shape"/>
</filter>
<filter id="filter1_d_3233_7842" x="520.405" y="180.254" width="26.2094" height="31.7771" filterUnits="userSpaceOnUse" color-interpolation-filters="sRGB">
<feFlood flood-opacity="0" result="BackgroundImageFix"/>
<feColorMatrix in="SourceAlpha" type="matrix" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 127 0" result="hardAlpha"/>
<feOffset dy="1"/>
<feGaussianBlur stdDeviation="1.25"/>
<feColorMatrix type="matrix" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.17 0"/>
<feBlend mode="normal" in2="BackgroundImageFix" result="effect1_dropShadow_3233_7842"/>
<feBlend mode="normal" in="SourceGraphic" in2="effect1_dropShadow_3233_7842" result="shape"/>
</filter>
<clipPath id="clip0_3233_7842">
<rect width="1020" height="236" fill="white"/>
</clipPath>
</defs>
</svg><div class="journey__col1 journey__column" ><svg class="mobile" width="100%" viewBox="0 0 335 190" fill="none" xmlns="http://www.w3.org/2000/svg">
      <rect x="5" y="5" width="325" height="180" rx="12" fill="white" stroke="#EFF2F5" stroke-width="10"/>
      <rect x="61" y="51" width="213" height="73" rx="6" fill="#F4F6F8"/>
      <path fill-rule="evenodd" clip-rule="evenodd" d="M176.955 73.857C175.033 71.381 171.293 71.381 169.371 73.857L159.778 86.2113C158.611 87.7137 156.332 87.6865 155.202 86.1569C153.282 83.5601 149.399 83.5601 147.479 86.1569L139.949 96.3448C137.606 99.5144 139.869 104 143.81 104H145.965H168.39H190.554C194.548 104 196.796 99.4088 194.346 96.2544L176.955 73.857Z" fill="white"/>
      <path d="M167.19 25.0928H168.353L170.126 28.177H170.198L171.971 25.0928H173.134L170.672 29.2139V31.8774H169.652V29.2139L167.19 25.0928Z" fill="#647380"/>
      <path d="M180.813 28.4851C180.813 29.2095 180.681 29.8323 180.416 30.3535C180.151 30.8725 179.788 31.2722 179.326 31.5527C178.867 31.831 178.344 31.9701 177.759 31.9701C177.172 31.9701 176.647 31.831 176.185 31.5527C175.726 31.2722 175.364 30.8714 175.099 30.3502C174.834 29.829 174.701 29.2073 174.701 28.4851C174.701 27.7607 174.834 27.139 175.099 26.62C175.364 26.0987 175.726 25.699 176.185 25.4207C176.647 25.1402 177.172 25 177.759 25C178.344 25 178.867 25.1402 179.326 25.4207C179.788 25.699 180.151 26.0987 180.416 26.62C180.681 27.139 180.813 27.7607 180.813 28.4851ZM179.8 28.4851C179.8 27.9329 179.71 27.468 179.531 27.0904C179.355 26.7105 179.112 26.4234 178.803 26.229C178.496 26.0325 178.148 25.9342 177.759 25.9342C177.368 25.9342 177.019 26.0325 176.712 26.229C176.405 26.4234 176.162 26.7105 175.983 27.0904C175.807 27.468 175.718 27.9329 175.718 28.4851C175.718 29.0372 175.807 29.5032 175.983 29.8831C176.162 30.2607 176.405 30.5478 176.712 30.7444C177.019 30.9387 177.368 31.0359 177.759 31.0359C178.148 31.0359 178.496 30.9387 178.803 30.7444C179.112 30.5478 179.355 30.2607 179.531 29.8831C179.71 29.5032 179.8 29.0372 179.8 28.4851Z" fill="#647380"/>
      <path d="M187.619 25.0928H188.646V29.5551C188.646 30.0299 188.534 30.4507 188.311 30.8173C188.088 31.1817 187.774 31.4688 187.37 31.6786C186.966 31.8862 186.492 31.99 185.949 31.99C185.408 31.99 184.935 31.8862 184.531 31.6786C184.127 31.4688 183.813 31.1817 183.59 30.8173C183.367 30.4507 183.256 30.0299 183.256 29.5551V25.0928H184.279V29.4723C184.279 29.7793 184.347 30.052 184.482 30.2905C184.618 30.5291 184.812 30.7168 185.061 30.8537C185.311 30.9884 185.607 31.0558 185.949 31.0558C186.294 31.0558 186.591 30.9884 186.84 30.8537C187.092 30.7168 187.284 30.5291 187.417 30.2905C187.551 30.052 187.619 29.7793 187.619 29.4723V25.0928Z" fill="#647380"/>
      <path d="M191.3 31.8774V25.0928H193.718C194.244 25.0928 194.68 25.1833 195.027 25.3644C195.376 25.5455 195.637 25.7962 195.809 26.1164C195.981 26.4344 196.067 26.8022 196.067 27.2196C196.067 27.6348 195.98 28.0003 195.806 28.3161C195.633 28.6297 195.373 28.8738 195.024 29.0482C194.677 29.2227 194.241 29.3099 193.715 29.3099H191.883V28.4287H193.622C193.954 28.4287 194.223 28.3813 194.431 28.2863C194.641 28.1913 194.794 28.0533 194.891 27.8722C194.988 27.6911 195.037 27.4736 195.037 27.2196C195.037 26.9634 194.987 26.7414 194.888 26.5537C194.791 26.366 194.637 26.2224 194.427 26.123C194.22 26.0214 193.947 25.9706 193.609 25.9706H192.324V31.8774H191.3ZM194.649 28.8163L196.326 31.8774H195.16L193.516 28.8163H194.649Z" fill="#647380"/>
      <path d="M202.687 31.8774H201.6L204.042 25.0928H205.225L207.666 31.8774H206.58L204.661 26.3251H204.608L202.687 31.8774ZM202.869 29.2205H206.394V30.0818H202.869V29.2205Z" fill="#647380"/>
      <path d="M212.008 31.8774H209.812V25.0928H212.078C212.743 25.0928 213.314 25.2286 213.791 25.5002C214.268 25.7697 214.633 26.1573 214.887 26.663C215.143 27.1666 215.272 27.7706 215.272 28.4751C215.272 29.1819 215.142 29.7892 214.884 30.2972C214.628 30.8051 214.257 31.196 213.771 31.4699C213.285 31.7415 212.697 31.8774 212.008 31.8774ZM210.836 30.9829H211.952C212.469 30.9829 212.898 30.8857 213.241 30.6914C213.583 30.4948 213.839 30.211 214.009 29.84C214.179 29.4668 214.264 29.0118 214.264 28.4751C214.264 27.9429 214.179 27.4912 214.009 27.1202C213.841 26.7492 213.591 26.4676 213.257 26.2754C212.924 26.0833 212.51 25.9872 212.015 25.9872H210.836V30.9829Z" fill="#647380"/>
      <g clip-path="url(#clip0_69_2014)">
      <path d="M123.979 22.7515L119.312 30.8345L123.354 33.1681L128.021 25.0852L123.979 22.7515Z" fill="#FBBC04"/>
      <path d="M132.688 30.8339L128.02 22.7508C127.376 21.6347 125.949 21.2521 124.833 21.8964C123.717 22.5408 123.334 23.9679 123.978 25.084L128.646 33.1671C129.29 34.2832 130.717 34.6651 131.833 34.0215C132.949 33.3771 133.331 31.95 132.688 30.8339Z" fill="#4285F4"/>
      <path d="M121.333 34.3339C122.622 34.3339 123.666 33.2893 123.666 32.0007C123.666 30.7121 122.622 29.6675 121.333 29.6675C120.045 29.6675 119 30.7121 119 32.0007C119 33.2893 120.045 34.3339 121.333 34.3339Z" fill="#34A853"/>
      </g>
      <mask id="mask0_69_2014" style="mask-type:alpha" maskUnits="userSpaceOnUse" x="141" y="21" width="14" height="14">
      <path d="M141 21H154.999V34.9144H141V21Z" fill="white"/>
      </mask>
      <g mask="url(#mask0_69_2014)">
      <path fill-rule="evenodd" clip-rule="evenodd" d="M154.999 27.9995C154.999 24.1335 151.865 20.9995 147.999 20.9995C144.133 20.9995 140.999 24.1335 140.999 27.9995C140.999 31.4934 143.559 34.3893 146.905 34.9145V30.0229H145.128V27.9995H146.905V26.4573C146.905 24.7029 147.95 23.7339 149.549 23.7339C150.315 23.7339 151.116 23.8706 151.116 23.8706V25.5933H150.234C149.364 25.5933 149.093 26.1328 149.093 26.6864V27.9995H151.034L150.724 30.0229H149.093V34.9145C152.439 34.3893 154.999 31.4934 154.999 27.9995Z" fill="#1877F2"/>
      </g>
      <path fill-rule="evenodd" clip-rule="evenodd" d="M150.724 30.0229L151.034 27.9995H149.093V26.6864C149.093 26.1328 149.364 25.5933 150.234 25.5933H151.116V23.8706C151.116 23.8706 150.315 23.7339 149.549 23.7339C147.95 23.7339 146.905 24.7029 146.905 26.4573V27.9995H145.128V30.0229H146.905V34.9145C147.262 34.9704 147.627 34.9995 147.999 34.9995C148.371 34.9995 148.736 34.9704 149.093 34.9145V30.0229H150.724Z" fill="white"/>
      <rect x="97" y="140" width="140" height="26" rx="4" fill="#212B36"/>
      <rect x="93" y="136" width="148" height="34" rx="5" stroke="#4B82FB" stroke-width="2"/>
      <path d="M143.179 149.727L145.338 155.849H145.423L147.582 149.727H148.506L145.835 157H144.926L142.256 149.727H143.179ZM149.625 157V151.545H150.463V157H149.625ZM150.051 150.636C149.888 150.636 149.747 150.581 149.628 150.469C149.512 150.358 149.454 150.224 149.454 150.068C149.454 149.912 149.512 149.778 149.628 149.667C149.747 149.556 149.888 149.5 150.051 149.5C150.214 149.5 150.354 149.556 150.47 149.667C150.588 149.778 150.648 149.912 150.648 150.068C150.648 150.224 150.588 150.358 150.47 150.469C150.354 150.581 150.214 150.636 150.051 150.636ZM154.385 157.114C153.859 157.114 153.406 156.998 153.025 156.766C152.646 156.531 152.354 156.205 152.148 155.786C151.944 155.364 151.842 154.874 151.842 154.315C151.842 153.757 151.944 153.264 152.148 152.838C152.354 152.41 152.64 152.076 153.007 151.837C153.376 151.595 153.807 151.474 154.3 151.474C154.584 151.474 154.864 151.522 155.141 151.616C155.418 151.711 155.67 151.865 155.898 152.078C156.125 152.289 156.306 152.568 156.441 152.916C156.576 153.264 156.643 153.693 156.643 154.202V154.557H152.439V153.832H155.791C155.791 153.525 155.73 153.25 155.606 153.009C155.486 152.767 155.313 152.576 155.088 152.437C154.865 152.297 154.603 152.227 154.3 152.227C153.966 152.227 153.677 152.31 153.433 152.476C153.192 152.639 153.006 152.852 152.876 153.115C152.745 153.378 152.68 153.66 152.68 153.96V154.443C152.68 154.855 152.751 155.204 152.893 155.491C153.038 155.775 153.238 155.991 153.494 156.141C153.749 156.287 154.046 156.361 154.385 156.361C154.605 156.361 154.804 156.33 154.981 156.268C155.161 156.205 155.316 156.11 155.447 155.984C155.577 155.857 155.677 155.698 155.748 155.509L156.558 155.736C156.473 156.01 156.33 156.252 156.128 156.46C155.927 156.666 155.679 156.827 155.383 156.943C155.087 157.057 154.754 157.114 154.385 157.114ZM159.254 157L157.592 151.545H158.473L159.652 155.722H159.709L160.873 151.545H161.768L162.919 155.707H162.976L164.155 151.545H165.035L163.373 157H162.549L161.356 152.81H161.271L160.078 157H159.254ZM169.156 157V151.545H169.965V152.398H170.036C170.15 152.107 170.334 151.88 170.587 151.719C170.84 151.556 171.144 151.474 171.499 151.474C171.859 151.474 172.159 151.556 172.398 151.719C172.639 151.88 172.828 152.107 172.963 152.398H173.019C173.159 152.116 173.369 151.892 173.648 151.727C173.927 151.558 174.262 151.474 174.653 151.474C175.141 151.474 175.539 151.627 175.85 151.933C176.16 152.236 176.315 152.708 176.315 153.349V157H175.477V153.349C175.477 152.947 175.367 152.659 175.146 152.487C174.926 152.314 174.667 152.227 174.369 152.227C173.985 152.227 173.688 152.343 173.477 152.575C173.267 152.805 173.161 153.096 173.161 153.449V157H172.309V153.264C172.309 152.954 172.209 152.704 172.007 152.515C171.806 152.323 171.547 152.227 171.23 152.227C171.012 152.227 170.808 152.285 170.619 152.401C170.432 152.517 170.28 152.678 170.164 152.884C170.051 153.088 169.994 153.323 169.994 153.591V157H169.156ZM180.163 157.114C179.671 157.114 179.239 156.996 178.867 156.762C178.498 156.528 178.209 156.2 178 155.778C177.794 155.357 177.691 154.865 177.691 154.301C177.691 153.733 177.794 153.237 178 152.813C178.209 152.389 178.498 152.06 178.867 151.826C179.239 151.592 179.671 151.474 180.163 151.474C180.655 151.474 181.086 151.592 181.456 151.826C181.827 152.06 182.116 152.389 182.322 152.813C182.53 153.237 182.635 153.733 182.635 154.301C182.635 154.865 182.53 155.357 182.322 155.778C182.116 156.2 181.827 156.528 181.456 156.762C181.086 156.996 180.655 157.114 180.163 157.114ZM180.163 156.361C180.537 156.361 180.845 156.265 181.086 156.073C181.328 155.881 181.507 155.629 181.623 155.317C181.739 155.004 181.797 154.666 181.797 154.301C181.797 153.937 181.739 153.597 181.623 153.282C181.507 152.967 181.328 152.713 181.086 152.518C180.845 152.324 180.537 152.227 180.163 152.227C179.789 152.227 179.481 152.324 179.24 152.518C178.998 152.713 178.82 152.967 178.704 153.282C178.588 153.597 178.53 153.937 178.53 154.301C178.53 154.666 178.588 155.004 178.704 155.317C178.82 155.629 178.998 155.881 179.24 156.073C179.481 156.265 179.789 156.361 180.163 156.361ZM184.014 157V151.545H184.824V152.369H184.88C184.98 152.099 185.16 151.88 185.42 151.712C185.681 151.544 185.974 151.46 186.301 151.46C186.362 151.46 186.439 151.461 186.532 151.464C186.624 151.466 186.694 151.47 186.741 151.474V152.327C186.713 152.32 186.648 152.309 186.546 152.295C186.446 152.278 186.341 152.27 186.23 152.27C185.965 152.27 185.728 152.326 185.52 152.437C185.314 152.546 185.15 152.697 185.03 152.891C184.911 153.083 184.852 153.302 184.852 153.548V157H184.014ZM189.956 157.114C189.43 157.114 188.977 156.998 188.595 156.766C188.217 156.531 187.924 156.205 187.718 155.786C187.515 155.364 187.413 154.874 187.413 154.315C187.413 153.757 187.515 153.264 187.718 152.838C187.924 152.41 188.211 152.076 188.578 151.837C188.947 151.595 189.378 151.474 189.87 151.474C190.154 151.474 190.435 151.522 190.712 151.616C190.989 151.711 191.241 151.865 191.468 152.078C191.696 152.289 191.877 152.568 192.012 152.916C192.147 153.264 192.214 153.693 192.214 154.202V154.557H188.01V153.832H191.362C191.362 153.525 191.3 153.25 191.177 153.009C191.056 152.767 190.884 152.576 190.659 152.437C190.436 152.297 190.173 152.227 189.87 152.227C189.537 152.227 189.248 152.31 189.004 152.476C188.762 152.639 188.577 152.852 188.446 153.115C188.316 153.378 188.251 153.66 188.251 153.96V154.443C188.251 154.855 188.322 155.204 188.464 155.491C188.608 155.775 188.809 155.991 189.064 156.141C189.32 156.287 189.617 156.361 189.956 156.361C190.176 156.361 190.375 156.33 190.552 156.268C190.732 156.205 190.887 156.11 191.017 155.984C191.148 155.857 191.248 155.698 191.319 155.509L192.129 155.736C192.044 156.01 191.9 156.252 191.699 156.46C191.498 156.666 191.249 156.827 190.953 156.943C190.657 157.057 190.325 157.114 189.956 157.114Z" fill="white"/>
      <path fill-rule="evenodd" clip-rule="evenodd" d="M221 175.229V155L235.641 169.677H227.076L226.557 169.833L221 175.229Z" fill="white"/>
      <path fill-rule="evenodd" clip-rule="evenodd" d="M232.475 176.081L227.921 178.02L222.007 164.013L226.663 162.051L232.475 176.081Z" fill="white"/>
      <path fill-rule="evenodd" clip-rule="evenodd" d="M230.791 175.222L228.462 176.199L224.546 166.885L226.871 165.906L230.791 175.222Z" fill="black"/>
      <path fill-rule="evenodd" clip-rule="evenodd" d="M222.263 158.041V172.173L226.013 168.553L226.554 168.377H232.577L222.263 158.041Z" fill="black"/>
      <defs>
      <clipPath id="clip0_69_2014">
      <rect width="14" height="14" fill="white" transform="translate(119 21)"/>
      </clipPath>
      </defs>
      </svg><h3>People Click Your Ads</h3><p>Conversion tracking starts with knowing which channel the shopper is coming from.</p></div><div class="journey__col2 journey__column" ><svg class="mobile" width="100%" viewBox="0 0 337 354" fill="none" xmlns="http://www.w3.org/2000/svg">
      <path d="M306 6.19888e-06V144" stroke="#4B82FB"/>
      <path d="M306.521 118.8C317.836 118.8 327.041 109.683 327.041 98.3997C327.041 87.1161 317.836 78 306.521 78C295.205 78 286 87.1161 286 98.3997C286 109.683 295.205 118.8 306.521 118.8Z" fill="white" stroke="#EFF2F5" stroke-width="6"/>
      <path d="M312.401 105.047V103.569C312.401 102.786 312.07 102.035 311.481 101.481C310.892 100.927 310.094 100.616 309.261 100.616H302.984C302.152 100.616 301.353 100.927 300.764 101.481C300.176 102.035 299.845 102.786 299.845 103.569V105.047" stroke="#4B82FB" stroke-linecap="round" stroke-linejoin="round"/>
      <path d="M306.123 97.6611C307.856 97.6611 309.261 96.3387 309.261 94.7073C309.261 93.0759 307.856 91.7534 306.123 91.7534C304.389 91.7534 302.984 93.0759 302.984 94.7073C302.984 96.3387 304.389 97.6611 306.123 97.6611Z" stroke="#4B82FB" stroke-linecap="round" stroke-linejoin="round"/>
      <rect x="6" y="149" width="325" height="200" rx="12" fill="white" stroke="#F4F6F8" stroke-width="10"/>
      <rect x="38" y="200" width="160" height="72" rx="6" fill="#F4F6F8"/>
      <g filter="url(#filter0_d_207_1740)">
      <path fill-rule="evenodd" clip-rule="evenodd" d="M129.903 219.197C127.629 216.268 123.204 216.268 120.93 219.197L109.581 233.813C108.201 235.59 105.504 235.558 104.166 233.748C101.896 230.676 97.3017 230.676 95.0311 233.748L86.1229 245.801C83.3511 249.551 86.0276 254.858 90.69 254.858H93.2405H119.77H145.99C150.715 254.858 153.375 249.426 150.477 245.694L129.903 219.197Z" fill="white"/>
      <path d="M331 153H6V172H331V153Z" fill="#F4F6F8"/>
      <path d="M192.027 153.732H76.9823C74.3693 153.732 72.2505 155.851 72.2505 158.465C72.2505 161.078 74.3693 163.197 76.9823 163.197H192.027C194.64 163.197 196.759 161.078 196.759 158.465C196.759 155.851 194.64 153.732 192.027 153.732Z" fill="#DFE3E8"/>
      <path d="M17.8304 163.197C20.4433 163.197 22.5622 161.078 22.5622 158.465C22.5622 155.851 20.4433 153.732 17.8304 153.732C15.2175 153.732 13.0986 155.851 13.0986 158.465C13.0986 161.078 15.2175 163.197 17.8304 163.197Z" fill="#F17E6A"/>
      <path d="M34.3929 163.197C37.007 163.197 39.1259 161.078 39.1259 158.465C39.1259 155.851 37.007 153.732 34.3929 153.732C31.78 153.732 29.6611 155.851 29.6611 158.465C29.6611 161.078 31.78 163.197 34.3929 163.197Z" fill="#FDD054"/>
      <path d="M50.9554 163.197C53.5695 163.197 55.6883 161.078 55.6883 158.465C55.6883 155.851 53.5695 153.732 50.9554 153.732C48.3425 153.732 46.2236 155.851 46.2236 158.465C46.2236 161.078 48.3425 163.197 50.9554 163.197Z" fill="#89DD75"/>
      <path d="M227.206 294.161H110.085C107.472 294.161 105.353 296.28 105.353 298.894V322.554C105.353 325.168 107.472 327.287 110.085 327.287H227.206C229.82 327.287 231.939 325.168 231.939 322.554V298.894C231.939 296.28 229.82 294.161 227.206 294.161Z" fill="#212B36"/>
      <path d="M229.606 288.246H107.752C103.179 288.246 99.4707 291.954 99.4707 296.528V324.921C99.4707 329.494 103.179 333.203 107.752 333.203H229.606C234.179 333.203 237.887 329.494 237.887 324.921V296.528C237.887 291.954 234.179 288.246 229.606 288.246Z" stroke="#43CDE9" stroke-width="2"/>
      <g filter="url(#filter1_d_207_1740)">
      <path fill-rule="evenodd" clip-rule="evenodd" d="M222.649 324.782L221.391 322.77C220.531 321.396 218.7 320.896 217.299 321.649L217.627 321.474C217.278 321.661 217.112 322.127 217.255 322.513L218.998 327.227C219.274 327.974 219.98 329.032 220.563 329.563C220.563 329.563 224.069 332.596 224.069 333.734V335.174H229.749L231.168 332.204L232.589 335.174H234.009V333.734C234.009 332.596 236.151 329.014 236.151 329.014C236.546 328.317 236.874 327.09 236.874 326.276V320.287C236.848 318.96 235.771 317.886 234.44 317.886C233.774 317.886 233.235 318.422 233.235 319.086V319.567C233.235 318.239 232.156 317.164 230.827 317.164C230.161 317.164 229.622 317.702 229.622 318.366V318.844C229.622 317.519 228.543 316.444 227.214 316.444C226.548 316.444 226.009 316.981 226.009 317.644V318.124C226.009 317.913 225.987 317.743 225.946 317.608L225.578 311.421C225.528 310.586 224.854 309.935 224.069 309.935C223.279 309.935 222.649 310.6 222.649 311.42V324.782ZM232.614 323.297H234.034V329.235H232.614V323.297ZM229.774 323.297H231.194V329.235H229.774V323.297ZM226.934 323.297H228.354V329.235H226.934V323.297Z" fill="white"/>
      <path d="M217.45 321.145L217.439 321.127L217.113 321.301L217.142 321.357C216.83 321.695 216.721 322.209 216.885 322.65L218.627 327.363C218.925 328.169 219.665 329.279 220.298 329.855L220.305 329.861H220.306L220.307 329.862L220.314 329.868L220.342 329.894C220.368 329.915 220.406 329.947 220.453 329.989C220.546 330.074 220.682 330.196 220.845 330.345C221.17 330.643 221.601 331.054 222.034 331.496C222.467 331.941 222.891 332.413 223.205 332.837C223.362 333.048 223.485 333.24 223.566 333.405C223.652 333.576 223.674 333.681 223.674 333.734V335.174V335.568H224.07H229.75H229.998L230.105 335.345L231.168 333.119L232.232 335.345L232.34 335.568H232.59H234.01H234.404V335.174V333.734C234.404 333.535 234.507 333.163 234.71 332.665C234.904 332.185 235.165 331.642 235.43 331.128C235.695 330.615 235.96 330.136 236.159 329.787C236.259 329.61 236.341 329.468 236.399 329.369C236.428 329.319 236.451 329.28 236.466 329.255L236.484 329.226L236.488 329.219V329.216L236.495 329.208C236.714 328.821 236.905 328.306 237.041 327.79C237.179 327.274 237.268 326.728 237.268 326.276V320.287V320.279C237.239 318.741 235.988 317.49 234.44 317.49C233.94 317.49 233.493 317.72 233.2 318.077C232.704 317.292 231.825 316.769 230.827 316.769C230.327 316.769 229.88 316.999 229.587 317.357C229.091 316.57 228.212 316.049 227.214 316.049C226.859 316.049 226.531 316.165 226.266 316.36L225.972 311.399C225.911 310.368 225.075 309.541 224.07 309.541C223.045 309.541 222.254 310.4 222.254 311.42V323.409L221.725 322.561C220.826 321.123 218.98 320.532 217.45 321.145ZM233.008 323.692H233.64V328.841H233.008V323.692ZM230.168 323.692H230.8V328.841H230.168V323.692ZM227.328 323.692H227.96V328.841H227.328V323.692Z" stroke="black" stroke-opacity="0.8" stroke-width="0.75"/>
      </g>
      <path d="M293.406 200.054H265.013C262.4 200.054 260.281 202.173 260.281 204.786V233.179C260.281 235.792 262.4 237.911 265.013 237.911H293.406C296.02 237.911 298.139 235.792 298.139 233.179V204.786C298.139 202.173 296.02 200.054 293.406 200.054Z" fill="#F4F6F8"/>
      <path d="M279.843 232.996H212.409C211.102 232.996 210.043 234.055 210.043 235.362V250.742C210.043 252.049 211.102 253.108 212.409 253.108H279.843C281.151 253.108 282.209 252.049 282.209 250.742V235.362C282.209 234.055 281.151 232.996 279.843 232.996Z" fill="#212B36"/>
      <path d="M220.618 246.542H219.75L222.262 239.697H223.118L225.632 246.542H224.762L222.717 240.78H222.664L220.618 246.542ZM220.939 243.868H224.441V244.604H220.939V243.868ZM228.53 246.649C228.101 246.649 227.724 246.541 227.397 246.325C227.068 246.106 226.813 245.799 226.627 245.402C226.442 245.004 226.351 244.532 226.351 243.989C226.351 243.449 226.442 242.981 226.627 242.585C226.813 242.188 227.07 241.882 227.4 241.666C227.73 241.45 228.111 241.342 228.542 241.342C228.877 241.342 229.141 241.397 229.334 241.509C229.531 241.618 229.68 241.743 229.782 241.883C229.887 242.021 229.968 242.135 230.027 242.224H230.093V239.697H230.882V246.542H230.12V245.753H230.027C229.968 245.847 229.886 245.965 229.779 246.108C229.672 246.248 229.52 246.374 229.321 246.485C229.124 246.594 228.859 246.649 228.53 246.649ZM228.637 245.94C228.953 245.94 229.22 245.858 229.439 245.693C229.657 245.526 229.822 245.295 229.937 245.001C230.05 244.705 230.107 244.363 230.107 243.975C230.107 243.592 230.051 243.257 229.94 242.969C229.828 242.68 229.664 242.454 229.445 242.294C229.227 242.131 228.957 242.05 228.637 242.05C228.302 242.05 228.024 242.136 227.801 242.307C227.58 242.477 227.414 242.707 227.302 242.999C227.193 243.289 227.139 243.614 227.139 243.975C227.139 244.341 227.194 244.673 227.306 244.971C227.42 245.268 227.587 245.504 227.807 245.68C228.031 245.854 228.306 245.94 228.637 245.94ZM234.375 246.649C233.947 246.649 233.57 246.541 233.242 246.325C232.914 246.106 232.658 245.799 232.473 245.402C232.288 245.004 232.195 244.532 232.195 243.989C232.195 243.449 232.288 242.981 232.473 242.585C232.658 242.188 232.915 241.882 233.245 241.666C233.575 241.45 233.957 241.342 234.388 241.342C234.722 241.342 234.986 241.397 235.18 241.509C235.377 241.618 235.526 241.743 235.628 241.883C235.733 242.021 235.814 242.135 235.872 242.224H235.939V239.697H236.728V246.542H235.966V245.753H235.872C235.814 245.847 235.732 245.965 235.625 246.108C235.518 246.248 235.365 246.374 235.167 246.485C234.968 246.594 234.705 246.649 234.375 246.649ZM234.481 245.94C234.798 245.94 235.066 245.858 235.284 245.693C235.502 245.526 235.668 245.295 235.782 245.001C235.895 244.705 235.952 244.363 235.952 243.975C235.952 243.592 235.897 243.257 235.785 242.969C235.674 242.68 235.51 242.454 235.291 242.294C235.072 242.131 234.802 242.05 234.481 242.05C234.147 242.05 233.87 242.136 233.646 242.307C233.426 242.477 233.26 242.707 233.148 242.999C233.039 243.289 232.985 243.614 232.985 243.975C232.985 244.341 233.04 244.673 233.152 244.971C233.265 245.268 233.432 245.504 233.653 245.68C233.875 245.854 234.152 245.94 234.481 245.94ZM243.161 241.408V242.077H240.501V241.408H243.161ZM241.277 240.178H242.066V245.071C242.066 245.294 242.098 245.461 242.162 245.573C242.23 245.682 242.314 245.756 242.417 245.793C242.521 245.829 242.632 245.847 242.747 245.847C242.834 245.847 242.906 245.842 242.961 245.834C243.017 245.822 243.061 245.813 243.095 245.807L243.255 246.515C243.201 246.535 243.127 246.555 243.032 246.576C242.935 246.598 242.814 246.609 242.667 246.609C242.444 246.609 242.226 246.561 242.012 246.465C241.8 246.369 241.625 246.223 241.484 246.027C241.346 245.831 241.277 245.584 241.277 245.285V240.178ZM246.379 246.649C245.915 246.649 245.508 246.539 245.159 246.318C244.811 246.098 244.539 245.789 244.344 245.392C244.15 244.996 244.052 244.532 244.052 244.002C244.052 243.467 244.15 243 244.344 242.602C244.539 242.203 244.811 241.893 245.159 241.672C245.508 241.452 245.915 241.342 246.379 241.342C246.842 241.342 247.247 241.452 247.595 241.672C247.945 241.893 248.217 242.203 248.411 242.602C248.607 243 248.705 243.467 248.705 244.002C248.705 244.532 248.607 244.996 248.411 245.392C248.217 245.789 247.945 246.098 247.595 246.318C247.247 246.539 246.842 246.649 246.379 246.649ZM246.379 245.94C246.731 245.94 247.02 245.85 247.247 245.67C247.475 245.489 247.644 245.252 247.752 244.958C247.861 244.664 247.917 244.345 247.917 244.002C247.917 243.659 247.861 243.339 247.752 243.043C247.644 242.746 247.475 242.507 247.247 242.324C247.02 242.141 246.731 242.05 246.379 242.05C246.026 242.05 245.737 242.141 245.51 242.324C245.282 242.507 245.114 242.746 245.005 243.043C244.895 243.339 244.841 243.659 244.841 244.002C244.841 244.345 244.895 244.664 245.005 244.958C245.114 245.252 245.282 245.489 245.51 245.67C245.737 245.85 246.026 245.94 246.379 245.94ZM258.171 241.836H257.342C257.293 241.598 257.207 241.388 257.085 241.208C256.965 241.027 256.818 240.876 256.644 240.753C256.472 240.628 256.281 240.535 256.072 240.473C255.862 240.41 255.644 240.379 255.417 240.379C255.002 240.379 254.627 240.484 254.291 240.693C253.957 240.903 253.69 241.211 253.492 241.619C253.295 242.027 253.198 242.527 253.198 243.12C253.198 243.712 253.295 244.212 253.492 244.62C253.69 245.028 253.957 245.337 254.291 245.546C254.627 245.756 255.002 245.86 255.417 245.86C255.644 245.86 255.862 245.829 256.072 245.767C256.281 245.704 256.472 245.612 256.644 245.489C256.818 245.364 256.965 245.212 257.085 245.031C257.207 244.849 257.293 244.639 257.342 244.403H258.171C258.108 244.753 257.995 245.066 257.83 245.342C257.665 245.618 257.46 245.854 257.215 246.047C256.97 246.239 256.694 246.385 256.39 246.485C256.086 246.586 255.762 246.636 255.417 246.636C254.833 246.636 254.314 246.493 253.859 246.208C253.405 245.923 253.047 245.517 252.786 244.991C252.526 244.465 252.395 243.842 252.395 243.12C252.395 242.398 252.526 241.774 252.786 241.248C253.047 240.722 253.405 240.317 253.859 240.031C254.314 239.746 254.833 239.604 255.417 239.604C255.762 239.604 256.086 239.654 256.39 239.754C256.694 239.854 256.97 240.001 257.215 240.195C257.46 240.387 257.665 240.621 257.83 240.897C257.995 241.171 258.108 241.484 258.171 241.836ZM260.914 246.662C260.588 246.662 260.293 246.601 260.028 246.479C259.764 246.354 259.553 246.174 259.397 245.94C259.24 245.704 259.162 245.419 259.162 245.085C259.162 244.791 259.22 244.552 259.337 244.37C259.452 244.185 259.607 244.04 259.801 243.935C259.995 243.83 260.208 243.752 260.442 243.701C260.679 243.648 260.917 243.605 261.154 243.574C261.467 243.534 261.719 243.504 261.913 243.484C262.11 243.462 262.252 243.425 262.341 243.374C262.433 243.322 262.478 243.233 262.478 243.106V243.08C262.478 242.75 262.388 242.494 262.207 242.311C262.03 242.128 261.759 242.037 261.395 242.037C261.019 242.037 260.724 242.119 260.51 242.284C260.295 242.449 260.145 242.625 260.059 242.812L259.31 242.545C259.444 242.233 259.621 241.99 259.845 241.816C260.07 241.64 260.314 241.518 260.58 241.448C260.847 241.377 261.11 241.342 261.368 241.342C261.533 241.342 261.722 241.362 261.937 241.402C262.153 241.44 262.361 241.519 262.561 241.639C262.765 241.759 262.933 241.941 263.066 242.184C263.2 242.427 263.267 242.752 263.267 243.16V246.542H262.478V245.847H262.438C262.385 245.958 262.295 246.078 262.171 246.204C262.046 246.332 261.88 246.44 261.673 246.529C261.466 246.618 261.213 246.662 260.914 246.662ZM261.034 245.954C261.346 245.954 261.61 245.893 261.824 245.77C262.039 245.647 262.202 245.489 262.311 245.295C262.422 245.102 262.478 244.898 262.478 244.684V243.962C262.445 244.002 262.371 244.039 262.258 244.072C262.146 244.103 262.017 244.131 261.87 244.156C261.725 244.178 261.584 244.198 261.446 244.216C261.309 244.231 261.199 244.245 261.114 244.256C260.91 244.283 260.718 244.326 260.54 244.386C260.364 244.444 260.221 244.532 260.112 244.65C260.005 244.766 259.952 244.924 259.952 245.125C259.952 245.399 260.053 245.606 260.255 245.747C260.46 245.885 260.72 245.954 261.034 245.954ZM264.707 246.542V241.408H265.468V242.184H265.522C265.613 241.93 265.781 241.724 266.027 241.565C266.272 241.407 266.55 241.328 266.859 241.328C267.001 241.328 267.126 241.345 267.233 241.378C267.34 241.412 267.434 241.457 267.514 241.515L267.247 242.184C267.191 242.155 267.125 242.132 267.049 242.117C266.977 242.099 266.891 242.09 266.792 242.09C266.542 242.09 266.32 242.143 266.124 242.247C265.93 242.352 265.777 242.495 265.662 242.675C265.551 242.856 265.495 243.062 265.495 243.293V246.542H264.707ZM270.873 241.408V242.077H268.213V241.408H270.873ZM268.988 240.178H269.777V245.071C269.777 245.294 269.809 245.461 269.874 245.573C269.94 245.682 270.025 245.756 270.128 245.793C270.233 245.829 270.342 245.847 270.459 245.847C270.546 245.847 270.617 245.842 270.673 245.834C270.728 245.822 270.773 245.813 270.806 245.807L270.967 246.515C270.913 246.535 270.839 246.555 270.742 246.576C270.647 246.598 270.526 246.609 270.379 246.609C270.155 246.609 269.938 246.561 269.724 246.465C269.512 246.369 269.335 246.223 269.195 246.027C269.057 245.831 268.988 245.584 268.988 245.285V240.178Z" fill="white"/>
      <path d="M144.037 315.39V306.834H146.927C147.599 306.834 148.147 306.955 148.573 307.198C149.002 307.438 149.32 307.762 149.526 308.172C149.732 308.581 149.835 309.038 149.835 309.542C149.835 310.046 149.732 310.505 149.526 310.916C149.322 311.328 149.008 311.658 148.581 311.902C148.155 312.145 147.61 312.266 146.944 312.266H144.872V311.347H146.911C147.37 311.347 147.739 311.267 148.018 311.108C148.297 310.949 148.498 310.735 148.624 310.465C148.752 310.192 148.815 309.885 148.815 309.542C148.815 309.199 148.752 308.893 148.624 308.622C148.498 308.353 148.294 308.141 148.013 307.988C147.732 307.832 147.359 307.754 146.894 307.754H145.072V315.39H144.037ZM155.532 312.767V308.974H156.518V315.39H155.532V314.305H155.465C155.315 314.63 155.081 314.907 154.764 315.136C154.446 315.361 154.045 315.474 153.56 315.474C153.159 315.474 152.802 315.387 152.491 315.212C152.179 315.033 151.933 314.766 151.755 314.409C151.577 314.049 151.488 313.598 151.488 313.052V308.974H152.474V312.985C152.474 313.452 152.605 313.826 152.867 314.103C153.131 314.382 153.468 314.522 153.878 314.522C154.122 314.522 154.372 314.459 154.626 314.334C154.881 314.208 155.097 314.016 155.268 313.758C155.445 313.499 155.532 313.168 155.532 312.767ZM158.441 315.39V308.974H159.394V309.943H159.461C159.575 309.626 159.786 309.368 160.092 309.17C160.398 308.972 160.745 308.873 161.132 308.873C161.311 308.873 161.466 308.894 161.6 308.936C161.734 308.978 161.851 309.035 161.951 309.107L161.617 309.943C161.547 309.907 161.465 309.879 161.371 309.86C161.278 309.838 161.171 309.826 161.048 309.826C160.737 309.826 160.458 309.892 160.213 310.022C159.971 310.153 159.779 310.332 159.637 310.558C159.498 310.782 159.427 311.04 159.427 311.33V315.39H158.441ZM165.486 315.525C164.885 315.525 164.366 315.382 163.932 315.099C163.498 314.814 163.164 314.423 162.93 313.925C162.695 313.426 162.578 312.856 162.578 312.215C162.578 311.563 162.698 310.989 162.938 310.49C163.18 309.989 163.517 309.598 163.948 309.316C164.384 309.032 164.89 308.89 165.47 308.89C165.92 308.89 166.327 308.974 166.69 309.141C167.052 309.308 167.348 309.542 167.579 309.842C167.811 310.143 167.954 310.494 168.01 310.895H167.024C166.948 310.603 166.781 310.343 166.522 310.119C166.266 309.89 165.92 309.775 165.486 309.775C165.101 309.775 164.765 309.876 164.475 310.076C164.188 310.274 163.964 310.554 163.802 310.916C163.644 311.275 163.565 311.698 163.565 312.182C163.565 312.678 163.643 313.109 163.798 313.478C163.957 313.845 164.18 314.13 164.467 314.334C164.757 314.538 165.097 314.639 165.486 314.639C165.742 314.639 165.975 314.594 166.184 314.505C166.393 314.416 166.57 314.288 166.714 314.121C166.859 313.954 166.963 313.753 167.024 313.519H168.01C167.954 313.898 167.815 314.239 167.595 314.542C167.379 314.843 167.091 315.083 166.731 315.261C166.374 315.436 165.959 315.525 165.486 315.525ZM170.554 311.53V315.39H169.568V306.834H170.554V309.976H170.638C170.788 309.645 171.014 309.382 171.314 309.187C171.618 308.989 172.022 308.89 172.526 308.89C172.964 308.89 173.346 308.978 173.675 309.153C174.004 309.326 174.259 309.592 174.44 309.952C174.624 310.308 174.715 310.762 174.715 311.313V315.39H173.73V311.38C173.73 310.87 173.598 310.476 173.333 310.198C173.071 309.916 172.707 309.775 172.242 309.775C171.919 309.775 171.63 309.845 171.373 309.981C171.12 310.118 170.919 310.316 170.772 310.578C170.627 310.84 170.554 311.158 170.554 311.53ZM178.525 315.541C178.119 315.541 177.75 315.465 177.418 315.312C177.087 315.155 176.824 314.932 176.628 314.639C176.433 314.343 176.337 313.987 176.337 313.569C176.337 313.201 176.408 312.903 176.553 312.675C176.698 312.443 176.892 312.263 177.134 312.132C177.377 312.001 177.644 311.903 177.937 311.84C178.232 311.773 178.528 311.72 178.826 311.681C179.215 311.63 179.532 311.593 179.774 311.568C180.02 311.54 180.198 311.494 180.31 311.43C180.424 311.366 180.48 311.255 180.48 311.096V311.062C180.48 310.65 180.367 310.33 180.143 310.101C179.919 309.873 179.581 309.759 179.127 309.759C178.657 309.759 178.287 309.862 178.02 310.068C177.752 310.274 177.565 310.494 177.455 310.728L176.52 310.394C176.687 310.005 176.91 309.701 177.188 309.483C177.47 309.263 177.777 309.11 178.107 309.023C178.441 308.935 178.771 308.89 179.093 308.89C179.3 308.89 179.537 308.915 179.804 308.966C180.074 309.013 180.334 309.112 180.585 309.262C180.839 309.413 181.048 309.639 181.215 309.943C181.382 310.247 181.466 310.653 181.466 311.162V315.39H180.48V314.522H180.431C180.364 314.661 180.252 314.81 180.097 314.969C179.94 315.128 179.733 315.262 179.473 315.374C179.214 315.486 178.899 315.541 178.525 315.541ZM178.675 314.655C179.066 314.655 179.394 314.579 179.661 314.426C179.932 314.273 180.135 314.075 180.272 313.833C180.411 313.59 180.48 313.335 180.48 313.068V312.166C180.439 312.215 180.347 312.261 180.205 312.303C180.066 312.342 179.904 312.378 179.72 312.408C179.539 312.435 179.362 312.461 179.19 312.483C179.02 312.502 178.881 312.519 178.775 312.533C178.52 312.567 178.28 312.621 178.058 312.696C177.838 312.768 177.659 312.879 177.522 313.026C177.388 313.17 177.323 313.368 177.323 313.62C177.323 313.962 177.448 314.221 177.703 314.396C177.959 314.569 178.282 314.655 178.675 314.655ZM187.93 310.41L187.044 310.661C186.987 310.514 186.906 310.37 186.797 310.232C186.691 310.089 186.546 309.972 186.362 309.88C186.179 309.788 185.944 309.742 185.657 309.742C185.264 309.742 184.937 309.833 184.674 310.014C184.415 310.192 184.286 310.419 184.286 310.695C184.286 310.94 184.375 311.134 184.553 311.275C184.732 311.418 185.011 311.536 185.39 311.63L186.341 311.865C186.915 312.003 187.342 312.218 187.624 312.503C187.906 312.788 188.046 313.154 188.046 313.602C188.046 313.97 187.94 314.299 187.728 314.588C187.52 314.879 187.227 315.107 186.851 315.274C186.475 315.441 186.038 315.525 185.539 315.525C184.885 315.525 184.344 315.382 183.914 315.099C183.485 314.814 183.214 314.399 183.1 313.853L184.035 313.62C184.125 313.965 184.293 314.223 184.541 314.396C184.792 314.569 185.119 314.655 185.523 314.655C185.983 314.655 186.347 314.558 186.618 314.363C186.891 314.166 187.027 313.928 187.027 313.653C187.027 313.43 186.948 313.243 186.793 313.093C186.637 312.94 186.398 312.826 186.074 312.75L185.005 312.5C184.417 312.36 183.985 312.145 183.71 311.852C183.437 311.556 183.3 311.188 183.3 310.745C183.3 310.383 183.401 310.062 183.605 309.785C183.811 309.506 184.091 309.287 184.445 309.128C184.801 308.969 185.205 308.89 185.657 308.89C186.292 308.89 186.79 309.029 187.152 309.308C187.517 309.587 187.775 309.954 187.93 310.41ZM192.339 315.525C191.72 315.525 191.187 315.388 190.738 315.115C190.293 314.839 189.948 314.455 189.706 313.962C189.467 313.466 189.347 312.889 189.347 312.233C189.347 311.575 189.467 310.995 189.706 310.494C189.948 309.99 190.286 309.598 190.718 309.316C191.152 309.032 191.659 308.89 192.238 308.89C192.572 308.89 192.902 308.946 193.228 309.058C193.554 309.168 193.851 309.349 194.118 309.6C194.386 309.848 194.599 310.176 194.758 310.586C194.917 310.995 194.995 311.5 194.995 312.099V312.516H190.05V311.665H193.993C193.993 311.302 193.92 310.979 193.775 310.695C193.633 310.41 193.431 310.187 193.166 310.022C192.904 309.858 192.594 309.775 192.238 309.775C191.846 309.775 191.506 309.873 191.219 310.068C190.934 310.26 190.717 310.51 190.563 310.82C190.41 311.129 190.333 311.461 190.333 311.814V312.382C190.333 312.867 190.417 313.279 190.584 313.615C190.754 313.949 190.99 314.205 191.29 314.38C191.591 314.553 191.94 314.639 192.339 314.639C192.598 314.639 192.832 314.602 193.04 314.53C193.252 314.455 193.434 314.343 193.587 314.196C193.741 314.046 193.859 313.859 193.942 313.636L194.895 313.903C194.795 314.227 194.626 314.51 194.39 314.755C194.153 314.998 193.86 315.187 193.512 315.323C193.165 315.458 192.773 315.525 192.339 315.525Z" fill="white"/>
      <path fill-rule="evenodd" clip-rule="evenodd" d="M268.76 210.307C268.76 209.98 269.025 209.716 269.352 209.716H272.506C272.788 209.716 273.031 209.915 273.086 210.19L273.78 213.659H286.704C286.879 213.659 287.046 213.737 287.159 213.873C287.271 214.009 287.317 214.188 287.284 214.36L286.021 220.978L286.02 220.983C285.923 221.482 285.651 221.931 285.254 222.249C284.859 222.567 284.365 222.738 283.858 222.729H276.203C275.697 222.738 275.201 222.567 274.806 222.249C274.41 221.931 274.139 221.482 274.04 220.983L272.72 214.395C272.716 214.377 272.712 214.358 272.71 214.339L272.021 210.899H269.352C269.025 210.899 268.76 210.634 268.76 210.307ZM274.018 214.842L275.2 220.751C275.245 220.978 275.368 221.183 275.55 221.329C275.73 221.473 275.956 221.55 276.186 221.546L276.198 221.545L283.874 221.546C284.106 221.55 284.331 221.473 284.512 221.329C284.692 221.183 284.816 220.981 284.86 220.754L285.987 214.842H274.018ZM275.66 225.883C275.552 225.883 275.464 225.972 275.464 226.081C275.464 226.19 275.552 226.278 275.66 226.278C275.77 226.278 275.858 226.19 275.858 226.081C275.858 225.972 275.77 225.883 275.66 225.883ZM274.281 226.081C274.281 225.319 274.899 224.7 275.66 224.7C276.424 224.7 277.041 225.319 277.041 226.081C277.041 226.843 276.424 227.461 275.66 227.461C274.899 227.461 274.281 226.843 274.281 226.081ZM284.337 225.883C284.228 225.883 284.139 225.972 284.139 226.081C284.139 226.19 284.228 226.278 284.337 226.278C284.446 226.278 284.533 226.19 284.533 226.081C284.533 225.972 284.446 225.883 284.337 225.883ZM282.957 226.081C282.957 225.319 283.574 224.7 284.337 224.7C285.099 224.7 285.717 225.319 285.717 226.081C285.717 226.843 285.099 227.461 284.337 227.461C283.574 227.461 282.957 226.843 282.957 226.081Z" fill="#5F5CE7"/>
      </g>
      <path d="M127 185.684H128.174L129.961 188.796H130.035L131.824 185.684H132.996L130.513 189.842V192.529H129.484V189.842L127 185.684ZM140.745 189.107C140.745 189.838 140.611 190.466 140.344 190.992C140.076 191.516 139.709 191.919 139.244 192.202C138.78 192.482 138.253 192.623 137.664 192.623C137.071 192.623 136.541 192.482 136.075 192.202C135.612 191.919 135.247 191.514 134.979 190.988C134.712 190.463 134.578 189.835 134.578 189.107C134.578 188.376 134.712 187.749 134.979 187.225C135.247 186.699 135.612 186.296 136.075 186.015C136.541 185.732 137.071 185.591 137.664 185.591C138.253 185.591 138.78 185.732 139.244 186.015C139.709 186.296 140.076 186.699 140.344 187.225C140.611 187.749 140.745 188.376 140.745 189.107ZM139.722 189.107C139.722 188.55 139.632 188.081 139.451 187.7C139.273 187.316 139.028 187.027 138.715 186.831C138.406 186.632 138.055 186.533 137.664 186.533C137.268 186.533 136.916 186.632 136.607 186.831C136.298 187.027 136.052 187.316 135.872 187.7C135.693 188.081 135.605 188.55 135.605 189.107C135.605 189.664 135.693 190.134 135.872 190.517C136.052 190.898 136.298 191.188 136.607 191.386C136.916 191.582 137.268 191.68 137.664 191.68C138.055 191.68 138.406 191.582 138.715 191.386C139.028 191.188 139.273 190.898 139.451 190.517C139.632 190.134 139.722 189.664 139.722 189.107ZM147.611 185.684H148.646V190.186C148.646 190.665 148.534 191.09 148.309 191.46C148.084 191.827 147.767 192.117 147.36 192.329C146.952 192.538 146.474 192.643 145.926 192.643C145.38 192.643 144.904 192.538 144.495 192.329C144.087 192.117 143.772 191.827 143.546 191.46C143.321 191.09 143.208 190.665 143.208 190.186V185.684H144.241V190.103C144.241 190.413 144.309 190.688 144.445 190.928C144.584 191.169 144.779 191.358 145.031 191.497C145.282 191.632 145.58 191.7 145.926 191.7C146.273 191.7 146.573 191.632 146.825 191.497C147.079 191.358 147.273 191.169 147.407 190.928C147.542 190.688 147.611 190.413 147.611 190.103V185.684ZM151.325 192.529V185.684H153.765C154.294 185.684 154.734 185.776 155.085 185.958C155.436 186.141 155.7 186.394 155.873 186.717C156.047 187.038 156.134 187.409 156.134 187.83C156.134 188.249 156.046 188.618 155.869 188.936C155.696 189.253 155.433 189.499 155.081 189.675C154.732 189.851 154.292 189.939 153.761 189.939H151.913V189.05H153.667C154.001 189.05 154.273 189.002 154.482 188.906C154.694 188.81 154.849 188.671 154.947 188.488C155.046 188.306 155.094 188.086 155.094 187.83C155.094 187.572 155.045 187.348 154.944 187.158C154.846 186.969 154.692 186.824 154.48 186.724C154.271 186.621 153.995 186.57 153.654 186.57H152.358V192.529H151.325ZM154.704 189.441L156.394 192.529H155.218L153.56 189.441H154.704ZM163.574 192.529L161.676 185.684H162.762L164.096 190.985H164.16L165.547 185.684H166.622L168.009 190.988H168.073L169.404 185.684H170.493L168.592 192.529H167.552L166.112 187.402H166.058L164.618 192.529H163.574ZM172.612 192.529V185.684H176.902V186.573H173.644V188.659H176.679V189.545H173.644V191.64H176.942V192.529H172.612ZM179.459 192.529V185.684H181.966C182.451 185.684 182.853 185.765 183.172 185.925C183.491 186.083 183.729 186.298 183.887 186.57C184.046 186.84 184.125 187.144 184.125 187.482C184.125 187.768 184.072 188.008 183.967 188.204C183.862 188.398 183.722 188.554 183.546 188.672C183.373 188.788 183.181 188.873 182.972 188.926V188.993C183.199 189.004 183.42 189.078 183.636 189.214C183.855 189.348 184.035 189.538 184.178 189.785C184.32 190.033 184.392 190.333 184.392 190.688C184.392 191.038 184.309 191.352 184.145 191.63C183.982 191.906 183.731 192.126 183.389 192.289C183.048 192.449 182.613 192.529 182.082 192.529H179.459ZM180.492 191.644H181.982C182.476 191.644 182.831 191.548 183.045 191.356C183.259 191.165 183.366 190.925 183.366 190.638C183.366 190.421 183.311 190.223 183.202 190.043C183.093 189.862 182.936 189.718 182.734 189.612C182.533 189.505 182.295 189.451 182.019 189.451H180.492V191.644ZM180.492 188.646H181.875C182.107 188.646 182.315 188.601 182.5 188.512C182.687 188.423 182.835 188.298 182.945 188.138C183.056 187.975 183.112 187.783 183.112 187.563C183.112 187.28 183.013 187.042 182.814 186.851C182.616 186.659 182.312 186.563 181.902 186.563H180.492V188.646ZM190.527 187.482C190.491 187.166 190.344 186.921 190.085 186.747C189.827 186.571 189.501 186.483 189.109 186.483C188.828 186.483 188.586 186.528 188.381 186.617C188.175 186.704 188.016 186.824 187.902 186.978C187.792 187.129 187.735 187.302 187.735 187.496C187.735 187.658 187.774 187.799 187.849 187.917C187.927 188.035 188.028 188.134 188.153 188.214C188.28 188.292 188.416 188.358 188.561 188.412C188.706 188.463 188.846 188.505 188.979 188.539L189.647 188.712C189.866 188.766 190.089 188.838 190.319 188.93C190.548 189.021 190.761 189.141 190.958 189.291C191.154 189.44 191.312 189.625 191.432 189.846C191.555 190.066 191.616 190.33 191.616 190.638C191.616 191.025 191.515 191.37 191.315 191.67C191.116 191.971 190.828 192.208 190.449 192.382C190.073 192.556 189.618 192.643 189.082 192.643C188.571 192.643 188.127 192.562 187.753 192.399C187.378 192.236 187.085 192.006 186.873 191.707C186.661 191.406 186.545 191.05 186.522 190.638H187.559C187.579 190.885 187.659 191.091 187.799 191.256C187.942 191.419 188.124 191.54 188.344 191.62C188.567 191.698 188.811 191.737 189.076 191.737C189.368 191.737 189.627 191.692 189.854 191.6C190.085 191.507 190.265 191.377 190.396 191.212C190.527 191.045 190.593 190.85 190.593 190.628C190.593 190.425 190.535 190.259 190.42 190.13C190.306 190 190.151 189.893 189.955 189.809C189.761 189.724 189.541 189.649 189.296 189.585L188.488 189.364C187.94 189.215 187.505 188.995 187.185 188.706C186.866 188.416 186.706 188.033 186.706 187.556C186.706 187.162 186.813 186.817 187.027 186.523C187.241 186.229 187.531 186.001 187.896 185.838C188.261 185.673 188.674 185.591 189.133 185.591C189.596 185.591 190.005 185.672 190.359 185.835C190.715 185.997 190.996 186.221 191.201 186.507C191.407 186.79 191.514 187.115 191.522 187.482H190.527ZM195.059 185.684V192.529H194.027V185.684H195.059ZM197.402 186.573V185.684H202.7V186.573H200.564V192.529H199.534V186.573H197.402ZM205.047 192.529V185.684H209.339V186.573H206.08V188.659H209.114V189.545H206.08V191.64H209.379V192.529H205.047Z" fill="#647380"/>
      <defs>
      <filter id="filter0_d_207_1740" x="0" y="149" width="337" height="194.943" filterUnits="userSpaceOnUse" color-interpolation-filters="sRGB">
      <feFlood flood-opacity="0" result="BackgroundImageFix"/>
      <feColorMatrix in="SourceAlpha" type="matrix" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 127 0" result="hardAlpha"/>
      <feOffset dy="2"/>
      <feGaussianBlur stdDeviation="3"/>
      <feColorMatrix type="matrix" values="0 0 0 0 0.129412 0 0 0 0 0.168627 0 0 0 0 0.211765 0 0 0 0.02 0"/>
      <feBlend mode="normal" in2="BackgroundImageFix" result="effect1_dropShadow_207_1740"/>
      <feBlend mode="normal" in="SourceGraphic" in2="effect1_dropShadow_207_1740" result="shape"/>
      </filter>
      <filter id="filter1_d_207_1740" x="213.934" y="307.666" width="26.2095" height="31.7769" filterUnits="userSpaceOnUse" color-interpolation-filters="sRGB">
      <feFlood flood-opacity="0" result="BackgroundImageFix"/>
      <feColorMatrix in="SourceAlpha" type="matrix" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 127 0" result="hardAlpha"/>
      <feOffset dy="1"/>
      <feGaussianBlur stdDeviation="1.25"/>
      <feColorMatrix type="matrix" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.17 0"/>
      <feBlend mode="normal" in2="BackgroundImageFix" result="effect1_dropShadow_207_1740"/>
      <feBlend mode="normal" in="SourceGraphic" in2="effect1_dropShadow_207_1740" result="shape"/>
      </filter>
      </defs>
      </svg><h3>People Browse Your Website</h3><p>Conversions can be product views, add to cart, purchases, etc.</p></div><div class="journey__col3 journey__column" ><svg id="Group_39" class="mobile" width="100%" data-name="Group 39" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="327.645" height="337.5" viewBox="0 0 327.645 337.5">
  <defs>
    <clipPath id="clip-path">
      <rect id="Rectangle_36" data-name="Rectangle 36" width="327.645" height="337.5" fill="none"/>
    </clipPath>
    <clipPath id="clip-path-3">
      <rect id="Rectangle_22" data-name="Rectangle 22" width="20" height="20.001" transform="translate(20 169.499)" fill="none"/>
    </clipPath>
    <clipPath id="clip-path-5">
      <rect id="Rectangle_24" data-name="Rectangle 24" width="20" height="20" transform="translate(20 307.5)" fill="none"/>
    </clipPath>
    <clipPath id="clip-path-7">
      <rect id="Rectangle_27" data-name="Rectangle 27" width="20" height="20.001" transform="translate(20 223.499)" fill="none"/>
    </clipPath>
    <clipPath id="clip-path-9">
      <rect id="Rectangle_29" data-name="Rectangle 29" width="20" height="20.001" transform="translate(124 223.499)" fill="none"/>
    </clipPath>
    <clipPath id="clip-path-11">
      <rect id="Rectangle_31" data-name="Rectangle 31" width="20.001" height="20.001" transform="translate(228 223.499)" fill="none"/>
    </clipPath>
    <clipPath id="clip-path-13">
      <rect id="Rectangle_34" data-name="Rectangle 34" width="20" height="20" transform="translate(72 253.5)" fill="none"/>
    </clipPath>
  </defs>
  <g id="Group_38" data-name="Group 38" clip-path="url(#clip-path)">
    <g id="Group_13" data-name="Group 13">
      <g id="Group_12" data-name="Group 12" clip-path="url(#clip-path)">
        <line id="Line_4" data-name="Line 4" y1="140" transform="translate(300.355)" fill="none" stroke="#716fda" stroke-width="1"/>
        <path id="Path_44" data-name="Path 44" d="M275.355,179.5h13a12,12,0,0,0,12-12V105" fill="none" stroke="#716fda" stroke-width="1"/>
        <path id="Path_45" data-name="Path 45" d="M275.355,249.5h13a12,12,0,0,0,12-12V85" fill="none" stroke="#716fda" stroke-width="1"/>
        <path id="Path_46" data-name="Path 46" d="M275.355,318.5h13a12,12,0,0,0,12-12V154" fill="none" stroke="#716fda" stroke-width="1"/>
        <path id="Path_47" data-name="Path 47" d="M300.5,129a24,24,0,1,0-24.145-24A24.073,24.073,0,0,0,300.5,129" fill="#5f5ce7"/>
        <ellipse id="Ellipse_1" data-name="Ellipse 1" cx="24.145" cy="24" rx="24.145" ry="24" transform="translate(276.355 81)" fill="none" stroke="#dfdefa" stroke-width="6"/>
        <path id="Path_48" data-name="Path 48" d="M300.286,107.33a7.357,7.357,0,0,1-3.67,2.168h5.6a3.7,3.7,0,0,0,3.38-2.168Z" fill="#fff"/>
        <path id="Path_49" data-name="Path 49" d="M301.935,103a7.517,7.517,0,0,1-.5,2.169h5.145l.987-2.169Z" fill="#fff"/>
        <path id="Path_50" data-name="Path 50" d="M301.957,98.667v2.169h6.6l.986-2.169Z" fill="#fff"/>
        <path id="Path_51" data-name="Path 51" d="M299.774,94.341a7.719,7.719,0,0,0-6.144,3.045,7.675,7.675,0,0,0-1.417,3.184,9.7,9.7,0,0,0-.128,1.834v6.656a10.086,10.086,0,0,1-.081,1.673,4.854,4.854,0,0,1-1.6,3.08,2.978,2.978,0,0,1-1.358.622c-.023,0-.14,0-.163.024v.046a1.954,1.954,0,0,0,0,.254v.9a7.673,7.673,0,0,0,3.763-1,6.539,6.539,0,0,0,2.7-2.791,5.97,5.97,0,0,0,.58-2.238,7.831,7.831,0,0,1-2.242-.334,7.686,7.686,0,0,0,4.623-2.884,7.267,7.267,0,0,0,1.475-4.429V96.51h10.755l1-2.169ZM295.93,106a.831.831,0,1,1,.836-.83.829.829,0,0,1-.836.83" fill="#fff"/>
        <path id="Path_52" data-name="Path 52" d="M280.767,183.329A1.176,1.176,0,0,1,279,184.347l-7.058-4.075a1.175,1.175,0,0,1,0-2.037L279,174.159a1.176,1.176,0,0,1,1.765,1.019Z" fill="#5f5ce7"/>
        <path id="Path_53" data-name="Path 53" d="M280.767,252.822A1.177,1.177,0,0,1,279,253.841l-7.058-4.076a1.175,1.175,0,0,1,0-2.037L279,243.652a1.176,1.176,0,0,1,1.765,1.019Z" fill="#5f5ce7"/>
        <path id="Path_54" data-name="Path 54" d="M280.767,321.822A1.177,1.177,0,0,1,279,322.841l-7.058-4.076a1.175,1.175,0,0,1,0-2.037L279,312.652a1.176,1.176,0,0,1,1.765,1.019Z" fill="#5f5ce7"/>
        <path id="Path_55" data-name="Path 55" d="M10,161.5H260a8,8,0,0,1,8,8v20a8,8,0,0,1-8,8H10a8,8,0,0,1-8-8v-20a8,8,0,0,1,8-8" fill="#fff"/>
        <rect id="Rectangle_18" data-name="Rectangle 18" width="266" height="36" rx="8" transform="translate(2 161.5)" fill="none" stroke="#eff2f5" stroke-width="4"/>
        <path id="Path_56" data-name="Path 56" d="M10,299.5H260a8,8,0,0,1,8,8v20a8,8,0,0,1-8,8H10a8,8,0,0,1-8-8v-20a8,8,0,0,1,8-8" fill="#fff"/>
        <rect id="Rectangle_19" data-name="Rectangle 19" width="266" height="36" rx="8" transform="translate(2 299.5)" fill="none" stroke="#eff2f5" stroke-width="4"/>
        <path id="Path_57" data-name="Path 57" d="M10,211.5H260a8,8,0,0,1,8,8v58a8,8,0,0,1-8,8H10a8,8,0,0,1-8-8v-58a8,8,0,0,1,8-8" fill="#fff"/>
        <rect id="Rectangle_20" data-name="Rectangle 20" width="266" height="74" rx="8" transform="translate(2 211.5)" fill="none" stroke="#eff2f5" stroke-width="4"/>
      </g>
    </g>
    <g id="Group_15" data-name="Group 15">
      <g id="Group_14" data-name="Group 14" clip-path="url(#clip-path-3)">
        <path id="Path_58" data-name="Path 58" d="M31.725,188.637l-3.468-3.381,7.448-7.606,3.59,3.519Z" fill="#8ab4f8"/>
        <path id="Path_59" data-name="Path 59" d="M31.74,173.686l-3.455-3.528-7.555,7.484a2.5,2.5,0,0,0,0,3.528l7.441,7.49,3.519-3.292-5.67-5.962Z" fill="#4285f4"/>
        <path id="Path_60" data-name="Path 60" d="M39.245,177.7l-7.492-7.492a2.5,2.5,0,0,0-3.531,3.532l7.492,7.491a2.5,2.5,0,1,0,3.531-3.531" fill="#8ab4f8"/>
        <path id="Path_61" data-name="Path 61" d="M29.931,189.455a2.44,2.44,0,1,0-2.44-2.44,2.441,2.441,0,0,0,2.44,2.44" fill="#246fdb"/>
      </g>
    </g>
    <g id="Group_17" data-name="Group 17">
      <g id="Group_16" data-name="Group 16" clip-path="url(#clip-path)">
        <path id="Path_62" data-name="Path 62" d="M55.721,178.525a2.216,2.216,0,0,0-.277-.579,1.777,1.777,0,0,0-.409-.441,1.705,1.705,0,0,0-.543-.28,2.183,2.183,0,0,0-.664-.1,2.007,2.007,0,0,0-1.108.316,2.16,2.16,0,0,0-.781.927,4.039,4.039,0,0,0,0,2.983,2.142,2.142,0,0,0,.789.927,2.091,2.091,0,0,0,1.139.316,2.118,2.118,0,0,0,1.034-.242,1.679,1.679,0,0,0,.685-.682,2.118,2.118,0,0,0,.245-1.044l.284.054H54.037v-.906H56.9v.828a3.12,3.12,0,0,1-.39,1.59,2.658,2.658,0,0,1-1.073,1.037,3.526,3.526,0,0,1-3.295-.088,3.083,3.083,0,0,1-1.158-1.289,4.434,4.434,0,0,1-.416-1.989,4.731,4.731,0,0,1,.242-1.563,3.4,3.4,0,0,1,.678-1.175,2.96,2.96,0,0,1,1.034-.742,3.229,3.229,0,0,1,1.3-.259,3.36,3.36,0,0,1,1.1.174,2.956,2.956,0,0,1,.909.493,2.79,2.79,0,0,1,.664.76,2.753,2.753,0,0,1,.355.97Zm2.907-1.353v-.945h5.628v.945H61.987V183.5H60.893v-6.328Zm7.872-.945h1.332l2.315,5.653h.085l2.316-5.653h1.331V183.5H72.835v-5.263h-.067l-2.145,5.252h-.867l-2.144-5.256h-.068V183.5H66.5Z" fill="#647380"/>
      </g>
    </g>
    <g id="Group_19" data-name="Group 19">
      <g id="Group_18" data-name="Group 18" clip-path="url(#clip-path-5)">
        <path id="Path_63" data-name="Path 63" d="M33.75,309.886v15a2.42,2.42,0,0,0,2.386,2.614,2.389,2.389,0,0,0,2.387-2.614V310a2.39,2.39,0,0,0-2.387-2.5,2.425,2.425,0,0,0-2.386,2.386" fill="#f9ab00"/>
        <path id="Path_64" data-name="Path 64" d="M27.5,317.5v7.387a2.42,2.42,0,0,0,2.386,2.613,2.388,2.388,0,0,0,2.387-2.613v-7.273a2.39,2.39,0,0,0-2.387-2.5A2.425,2.425,0,0,0,27.5,317.5" fill="#e37400"/>
        <path id="Path_65" data-name="Path 65" d="M23.636,327.5a2.387,2.387,0,1,0-2.386-2.387,2.387,2.387,0,0,0,2.386,2.387" fill="#e37400"/>
      </g>
    </g>
    <g id="Group_21" data-name="Group 21">
      <g id="Group_20" data-name="Group 20" clip-path="url(#clip-path)">
        <path id="Path_66" data-name="Path 66" d="M55.721,316.525a2.185,2.185,0,0,0-.277-.579,1.762,1.762,0,0,0-.951-.721,2.19,2.19,0,0,0-.665-.1,2.015,2.015,0,0,0-1.107.316,2.155,2.155,0,0,0-.782.927,4.032,4.032,0,0,0,0,2.983,2.14,2.14,0,0,0,.788.927,2.089,2.089,0,0,0,1.14.316,2.114,2.114,0,0,0,1.033-.241,1.687,1.687,0,0,0,.686-.682,2.131,2.131,0,0,0,.245-1.044l.284.053H54.038v-.906H56.9v.828a3.125,3.125,0,0,1-.391,1.591,2.662,2.662,0,0,1-1.072,1.037,3.532,3.532,0,0,1-3.3-.089,3.082,3.082,0,0,1-1.158-1.289,4.434,4.434,0,0,1-.415-1.989,4.7,4.7,0,0,1,.242-1.562,3.38,3.38,0,0,1,.678-1.176,2.969,2.969,0,0,1,1.033-.742,3.232,3.232,0,0,1,1.3-.259,3.37,3.37,0,0,1,1.1.174,2.956,2.956,0,0,1,.909.493,2.8,2.8,0,0,1,1.019,1.73Zm3.958,4.975H58.515l2.617-7.273H62.4l2.617,7.273H63.852L61.8,315.548h-.057Zm.2-2.848h3.778v.923H59.875Zm6.94,1.428v-.888l3.143-4.965h.7v1.307h-.444l-2.248,3.558v.057h4.308v.931Zm3.448,1.42v-1.69l.007-.4v-5.178h1.041V321.5Z" fill="#647380"/>
      </g>
    </g>
    <g id="Group_23" data-name="Group 23">
      <g id="Group_22" data-name="Group 22" clip-path="url(#clip-path-7)">
        <image id="Rectangle_26" data-name="Rectangle 26" width="21" height="20" transform="translate(19 223.5)" xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABUAAAAUCAYAAABiS3YzAAAAAXNSR0IArs4c6QAAADhlWElmTU0AKgAAAAgAAYdpAAQAAAABAAAAGgAAAAAAAqACAAQAAAABAAAAFaADAAQAAAABAAAAFAAAAAAWsxmEAAAArUlEQVQ4Eb2S0Q2AIAxExfjrAG7qCG7qAA6AweTIeWlRVPQHW9rHKxpijJ31TPNmb0jxuoxBUl2viRTfBXq1gU1rYJYMrLPpWyAfkqGcvHqHkdZB7BgfgRZprDCvb9BGL2agB0Nv9fhXwASuhsKmtDaBFu+U7xFmnPOu4n9TNoEh52CvaxPTdlCMpmM8iRMrm34BBiNDn1h5Paf/FCfd+cIMRB9ypqkWodhardodwZREH7rEWecAAAAASUVORK5CYII="/>
        <path id="Path_67" data-name="Path 67" d="M33.891,236.39l.443-2.891H31.561v-1.875a1.445,1.445,0,0,1,1.629-1.562h1.262V227.6a15.416,15.416,0,0,0-2.239-.195,3.529,3.529,0,0,0-3.777,3.89v2.2H25.9v2.891h2.539v6.988a10.15,10.15,0,0,0,3.125,0V236.39Z" fill="#fff" fill-rule="evenodd"/>
      </g>
    </g>
    <g id="Group_25" data-name="Group 25">
      <g id="Group_24" data-name="Group 24" clip-path="url(#clip-path)">
        <path id="Path_68" data-name="Path 68" d="M80.211,231.553v-.714a5.235,5.235,0,0,0-.75-.065,5.557,5.557,0,0,0-3.185,10.119,5.552,5.552,0,0,1,3.935-9.34Z" fill="#25f4ee"/>
        <path id="Path_69" data-name="Path 69" d="M80.345,239.646a2.54,2.54,0,0,0,2.535-2.43V225.1h2.214a4.2,4.2,0,0,1-.065-.767H82v12.1a2.541,2.541,0,0,1-2.536,2.448,2.587,2.587,0,0,1-1.171-.293,2.541,2.541,0,0,0,2.05,1.054m8.883-10.435v-.673a4.137,4.137,0,0,1-2.29-.691,4.2,4.2,0,0,0,2.29,1.364" fill="#25f4ee"/>
        <path id="Path_70" data-name="Path 70" d="M86.939,227.847a4.169,4.169,0,0,1-1.037-2.753h-.808a4.19,4.19,0,0,0,1.845,2.753M79.461,233.8a2.541,2.541,0,0,0-1.171,4.79,2.535,2.535,0,0,1,2.055-4.023,2.652,2.652,0,0,1,.75.118v-3.081a5.377,5.377,0,0,0-.75-.059h-.134v2.343a2.6,2.6,0,0,0-.75-.088" fill="#fe2c55"/>
        <path id="Path_71" data-name="Path 71" d="M89.228,229.211v2.342a7.188,7.188,0,0,1-4.2-1.364v6.154a5.568,5.568,0,0,1-5.568,5.557,5.5,5.5,0,0,1-3.186-1.007,5.557,5.557,0,0,0,9.627-3.782v-6.137a7.2,7.2,0,0,0,4.2,1.347V229.3a4.321,4.321,0,0,1-.878-.094" fill="#fe2c55"/>
        <path id="Path_72" data-name="Path 72" d="M85.03,236.343v-6.154a7.179,7.179,0,0,0,4.2,1.346v-2.342a5.51,5.51,0,0,1-4.14-4.1H82.881v12.122a2.541,2.541,0,0,1-4.6,1.387,2.541,2.541,0,0,1,1.171-4.79,2.645,2.645,0,0,1,.75.117v-2.342a5.551,5.551,0,0,0-3.935,9.369,5.508,5.508,0,0,0,3.191.943,5.569,5.569,0,0,0,5.569-5.557"/>
      </g>
    </g>
    <g id="Group_27" data-name="Group 27">
      <g id="Group_26" data-name="Group 26" clip-path="url(#clip-path-9)">
        <path id="Path_73" data-name="Path 73" d="M135.556,225.207l2.069,4.229,4.669.678c1.831.275,2.27,1.556.916,2.874l-3.388,3.314.806,4.669c.311,1.831-.806,2.637-2.435,1.758l-4.193-2.2-4.193,2.2c-1.666.879-2.746.073-2.435-1.758l.806-4.669-3.388-3.314c-1.354-1.318-.915-2.6.916-2.874l4.669-.678,2.069-4.229c.933-1.721,2.288-1.721,3.112,0" fill="#fc3"/>
      </g>
    </g>
    <g id="Group_29" data-name="Group 29">
      <g id="Group_28" data-name="Group 28" clip-path="url(#clip-path)">
        <path id="Path_74" data-name="Path 74" d="M195.167,227.183H176.833v12.63h18.334l-3.667-6.519Z" fill="#232426"/>
      </g>
    </g>
    <g id="Group_31" data-name="Group 31">
      <g id="Group_30" data-name="Group 30" clip-path="url(#clip-path-11)">
        <path id="Path_75" data-name="Path 75" d="M231.842,227.144,238,223.5l6.157,3.643v1.272L238,239.135l-5.355-9.322,1.729-.975h6.409l-1.138,1.992h-4.09L238,235.152,242,228.161,238,225.83l-6.156,3.6Zm10.331,11.61V233.33l1.982-3.474V239.94L238,243.5l-6.156-3.56v-10l1.982,3.432v5.382L238,241.211Z" fill="#c800a0" fill-rule="evenodd"/>
      </g>
    </g>
    <g id="Group_33" data-name="Group 33">
      <g id="Group_32" data-name="Group 32" clip-path="url(#clip-path)">
        <path id="Path_76" data-name="Path 76" d="M29.979,265.454a3.975,3.975,0,0,1,3.009,1.387,3.535,3.535,0,0,0,.3-1.387,3.267,3.267,0,0,0-.97-2.322,3.285,3.285,0,0,0-1.074-.711,3.341,3.341,0,0,0-2.536,0,3.3,3.3,0,0,0-1.792,1.776,3.25,3.25,0,0,0-.252,1.257,3.535,3.535,0,0,0,.3,1.387,3.873,3.873,0,0,1,1.348-1.027,3.914,3.914,0,0,1,1.661-.36" fill="#a9b4bd"/>
        <path id="Path_77" data-name="Path 77" d="M33.292,269.384a3.271,3.271,0,0,0-.558-1.824,3.318,3.318,0,0,0-6,1.183,3.266,3.266,0,0,0,1.409,3.37,3.312,3.312,0,0,0,4.175-.415,3.289,3.289,0,0,0,.978-2.314" fill="#4b5e6a"/>
        <path id="Path_78" data-name="Path 78" d="M33.292,257.616a3.271,3.271,0,0,0-.558-1.824,3.3,3.3,0,0,0-1.487-1.209,3.335,3.335,0,0,0-3.611.712,3.266,3.266,0,0,0,.5,5.051,3.336,3.336,0,0,0,4.182-.408,3.267,3.267,0,0,0,.971-2.322" fill="#f5333f"/>
      </g>
    </g>
    <g id="Group_35" data-name="Group 35">
      <g id="Group_34" data-name="Group 34" clip-path="url(#clip-path-13)">
        <rect id="Rectangle_33" data-name="Rectangle 33" width="19.975" height="19.975" rx="3.183" transform="translate(72.013 253.512)" fill="#fffc00"/>
        <path id="Path_79" data-name="Path 79" d="M88.735,266.924c-.059-.2-.341-.332-.341-.332-.026-.014-.05-.027-.07-.036a5.43,5.43,0,0,1-1.236-.811,4.163,4.163,0,0,1-.716-.815,3.039,3.039,0,0,1-.4-.815.27.27,0,0,1,0-.2.318.318,0,0,1,.1-.111c.158-.112.413-.278.57-.379.136-.088.252-.164.321-.211a1.4,1.4,0,0,0,.46-.481.828.828,0,0,0,.039-.7.808.808,0,0,0-.8-.51,1.28,1.28,0,0,0-.258.028,4.085,4.085,0,0,0-.595.192l-.01,0-.008,0-.006-.007,0-.009a11.989,11.989,0,0,0-.008-1.547,3.794,3.794,0,0,0-.31-1.273,3.48,3.48,0,0,0-1.428-1.532,4.262,4.262,0,0,0-4.08,0,3.447,3.447,0,0,0-.876.7,3.4,3.4,0,0,0-.554.829,3.764,3.764,0,0,0-.31,1.273,11.975,11.975,0,0,0-.008,1.547.019.019,0,0,1-.027.018,4.085,4.085,0,0,0-.595-.192,1.265,1.265,0,0,0-.258-.028.811.811,0,0,0-.8.51.828.828,0,0,0,.039.7,1.415,1.415,0,0,0,.46.481c.067.047.185.123.321.211.153.1.4.261.56.372a.323.323,0,0,1,.108.118.284.284,0,0,1,0,.21,3.124,3.124,0,0,1-.393.806,4.107,4.107,0,0,1-.716.815,5.43,5.43,0,0,1-1.236.811.826.826,0,0,0-.077.04s-.281.143-.334.328a.644.644,0,0,0,.342.667,3.661,3.661,0,0,0,1.016.411c.069.018.13.035.187.052a.373.373,0,0,1,.161.094.51.51,0,0,1,.07.223.655.655,0,0,0,.265.445,1.4,1.4,0,0,0,.759.157,4.127,4.127,0,0,1,1.209.184,3.066,3.066,0,0,1,.642.334,3.632,3.632,0,0,0,4.171,0,3.121,3.121,0,0,1,.635-.33,4.115,4.115,0,0,1,1.208-.183,1.408,1.408,0,0,0,.76-.157.683.683,0,0,0,.27-.475.421.421,0,0,1,.065-.192.35.35,0,0,1,.155-.091c.058-.019.122-.036.194-.055a3.6,3.6,0,0,0,.927-.355c.452-.256.483-.57.435-.726" fill="#fff"/>
        <path id="Path_80" data-name="Path 80" d="M89.124,266.773a1,1,0,0,0-.506-.537,1.19,1.19,0,0,0-.109-.057c-.065-.034-.131-.066-.2-.1a4.272,4.272,0,0,1-1.565-1.343,3.165,3.165,0,0,1-.269-.476.226.226,0,0,1-.007-.187.275.275,0,0,1,.087-.089c.105-.07.21-.139.316-.206.145-.094.26-.169.333-.219a1.811,1.811,0,0,0,.591-.629,1.252,1.252,0,0,0,.06-1.042,1.23,1.23,0,0,0-1.191-.782,1.628,1.628,0,0,0-.346.038l-.09.021a10.056,10.056,0,0,0-.032-1.02,3.719,3.719,0,0,0-.966-2.341,3.866,3.866,0,0,0-.982-.792,4.672,4.672,0,0,0-4.5,0,3.833,3.833,0,0,0-.984.791,3.719,3.719,0,0,0-.965,2.341c-.03.342-.037.693-.033,1.021l-.089-.022a1.682,1.682,0,0,0-.346-.037,1.23,1.23,0,0,0-1.192.782,1.25,1.25,0,0,0,.06,1.041,1.828,1.828,0,0,0,.592.63c.074.051.188.126.332.218l.3.2a.333.333,0,0,1,.1.1.229.229,0,0,1-.011.2,3.1,3.1,0,0,1-.265.467,4.253,4.253,0,0,1-1.521,1.319c-.346.183-.705.305-.856.717a.909.909,0,0,0,.251.965,1.47,1.47,0,0,0,.367.277,4,4,0,0,0,.9.359.6.6,0,0,1,.181.081c.107.093.091.233.233.438a1,1,0,0,0,.265.27,1.74,1.74,0,0,0,.982.231,3.77,3.77,0,0,1,1.092.163,2.778,2.778,0,0,1,.554.292,4.049,4.049,0,0,0,4.611,0,2.91,2.91,0,0,1,.547-.289,3.763,3.763,0,0,1,1.091-.163,1.746,1.746,0,0,0,.983-.231,1.036,1.036,0,0,0,.3-.329c.1-.173.1-.3.195-.377a.549.549,0,0,1,.171-.077,4.02,4.02,0,0,0,.909-.363,1.452,1.452,0,0,0,.386-.3l0,0a.905.905,0,0,0,.227-.942m-1,.539c-.614.34-1.022.3-1.339.506-.269.174-.11.548-.305.683-.241.167-.952-.011-1.87.292-.757.25-1.24.97-2.6.97s-1.836-.717-2.6-.97c-.918-.3-1.63-.125-1.87-.292-.195-.135-.036-.509-.306-.683-.316-.2-.724-.168-1.338-.506-.391-.215-.17-.349-.039-.412a4.353,4.353,0,0,0,2.593-2.862.4.4,0,0,0-.124-.419c-.158-.147-.863-.583-1.058-.719-.324-.226-.465-.451-.36-.729a.434.434,0,0,1,.441-.263.88.88,0,0,1,.177.019c.355.077.7.256.9.3a.3.3,0,0,0,.073.01c.107,0,.143-.053.136-.175a13.114,13.114,0,0,1-.017-1.853,2.943,2.943,0,0,1,.771-1.883,3.706,3.706,0,0,1,5.256,0,2.935,2.935,0,0,1,.771,1.883,12.4,12.4,0,0,1-.017,1.853c-.008.127.031.175.136.175a.29.29,0,0,0,.073-.01c.2-.047.544-.226.9-.3a.871.871,0,0,1,.176-.019.437.437,0,0,1,.442.263c.1.278-.038.5-.36.729-.195.136-.9.572-1.059.719a.392.392,0,0,0-.123.419,4.35,4.35,0,0,0,2.593,2.862c.126.063.349.2-.042.412"/>
      </g>
    </g>
    <g id="Group_37" data-name="Group 37">
      <g id="Group_36" data-name="Group 36" clip-path="url(#clip-path)">
        <path id="Path_81" data-name="Path 81" d="M126.031,267.5H124.75l2.879-8h1.394l2.879,8h-1.281l-2.262-6.547H128.3Zm.215-3.133H130.4v1.016h-4.156Zm14.269-4.867v8H139.4l-4.066-5.867h-.074V267.5h-1.207v-8h1.117l4.07,5.875h.074V259.5Zm5.35,8h-2.59v-8h2.672a4.023,4.023,0,0,1,2.02.48,3.172,3.172,0,0,1,1.293,1.372,5.272,5.272,0,0,1,0,4.285,3.208,3.208,0,0,1-1.313,1.383,4.2,4.2,0,0,1-2.078.48m-1.383-1.055H145.8a3.043,3.043,0,0,0,1.519-.343,2.172,2.172,0,0,0,.907-1,3.879,3.879,0,0,0,.3-1.61,3.825,3.825,0,0,0-.3-1.6,2.122,2.122,0,0,0-.887-1,2.892,2.892,0,0,0-1.465-.34h-1.391Zm11.643-6.945h1.465l2.547,6.219h.093l2.547-6.219h1.465v8h-1.148v-5.789h-.074l-2.36,5.777h-.953l-2.359-5.781h-.075V267.5h-1.148Zm17.821,4a4.814,4.814,0,0,1-.468,2.2,3.442,3.442,0,0,1-1.286,1.414,3.73,3.73,0,0,1-3.7,0,3.451,3.451,0,0,1-1.281-1.418,5.39,5.39,0,0,1,0-4.4,3.421,3.421,0,0,1,1.281-1.414,3.7,3.7,0,0,1,3.7,0,3.406,3.406,0,0,1,1.286,1.414,4.791,4.791,0,0,1,.468,2.2m-1.195,0a3.83,3.83,0,0,0-.316-1.645,2.315,2.315,0,0,0-.86-1.015,2.357,2.357,0,0,0-2.465,0,2.346,2.346,0,0,0-.859,1.015,4.487,4.487,0,0,0,0,3.293,2.372,2.372,0,0,0,.859,1.016,2.38,2.38,0,0,0,2.465,0,2.341,2.341,0,0,0,.86-1.016,3.848,3.848,0,0,0,.316-1.648m3.7,4v-8H179.3a3.32,3.32,0,0,1,1.543.32,2.133,2.133,0,0,1,.922.887,2.691,2.691,0,0,1,.3,1.3,2.641,2.641,0,0,1-.308,1.293,2.078,2.078,0,0,1-.922.863,3.416,3.416,0,0,1-1.543.309h-2.16v-1.039h2.05a2.311,2.311,0,0,0,.954-.168,1.114,1.114,0,0,0,.543-.489,1.611,1.611,0,0,0,.171-.769,1.657,1.657,0,0,0-.175-.785,1.135,1.135,0,0,0-.543-.508,2.207,2.207,0,0,0-.965-.18h-1.516V267.5Zm3.949-3.609,1.977,3.609H181l-1.938-3.609Zm4.141,3.609v-8h5.016v1.039h-3.809v2.438h3.547v1.035h-3.547v2.449H189.6V267.5Zm9.007-8-.1,5.7h-1.082l-.1-5.7Zm-.641,8.074a.76.76,0,0,1-.554-.226.742.742,0,0,1-.227-.555.723.723,0,0,1,.227-.547.785.785,0,0,1,1.335.547.762.762,0,0,1-.113.394.807.807,0,0,1-.281.282.74.74,0,0,1-.387.105" fill="#647380"/>
      </g>
    </g>
  </g>
</svg><h3>Conversions Sent to Destinations</h3><p>Elevar pushes your conversion data server-side to marketing channels with near 100% accuracy (and GDPR compliant).</p></div></div></div></div></div></div></div></div><div class="vc_row-full-width vc_clearfix"></div><div data-vc-full-width="true" data-vc-full-width-init="false" class="vc_row wpb_row vc_row-fluid vc_custom_1659458648610 vc_row-has-fill"><div class="wpb_column vc_column_container vc_col-sm-12"><div class="vc_column-inner "><div class="wpb_wrapper"><style>
  .post .allarounddata-widget  {
    padding: 64px 32px;
  }
  .post .allarounddata-widget > .container {
    max-width: 800px;
  }
  .post .allarounddata-widget h2 {
    text-align: center;
    max-width: 800px;
    margin: 0 auto 24px;
    font-size: 38px;
    color: #212B36;
  }
  .post .allarounddata-widget .subheading {
    font-size: 18px;
    line-height: 28px;
    color: #647380;
    max-width: 640px;
    text-align: center;
    margin: 0 auto;
  }
  .post .allarounddata-widget span {
    text-align: center;
    font-size: 12px;
    line-height: 16px;
    letter-spacing: 1px;
    text-transform: uppercase;
    color: #929EAA;
    font-weight: 600;
    margin: 0 auto 16px;
    displaY: block;
}
.allarounddata__rows {
  display: flex;
  flex-direction: column;
  justify-content: flex-start;
  align-items: center;
}
.allarounddata__row {
  width: 100%;
  display: flex;
  margin: 78px 0 0;
  align-items: center;
}
.allarounddata__row:first-child {
  margin-top: 64px;
}
.allarounddata_row_2 {
    flex-direction: row-reverse;
    justify-content: space-between;
}
.allarounddata__column {
    display: flex;
    flex-direction: column;
    justify-content: center;
    margin-left: 78px;
}
.allarounddata_row_2 .allarounddata__column {
    margin-left: 0;
    padding-right: 48px;
}
.post .allarounddata__row img {
  max-width: 320px;
  width: 100%;
  margin-bottom: 0 !important;
}
.post .allarounddata__row h3 {
  font-size: 20px;
    line-height: 28px;
    color: #212B36;
    margin-top: 0;
    margin-bottom: 16px;
}
.post .allarounddata__row p {
  color: #647380;
  font-size: 16px;
  line-height: 24px;
  margin-bottom: 24px;
}
.allarounddata__row a {
    display: flex;
    align-items: center;
    font-size: 16px;
    color: #5F5CE7;
    line-height: 1;
    margin-top: 0;
    margin-bottom: 24px;
    text-decoration: none;
}
.allarounddata__row a svg {
    margin-right: 8px;
}

@media screen and (max-width: 767px) {
    .allarounddata__row img {
      max-width: 34%;
    }

    .post .allarounddata-widget h2 {
        line-height: 36px;
        font-size: 26px;
        margin-bottom: 16px;
    }

    .post .allarounddata__row h3 {
        margin-bottom: 12px;
    }
    
    .post .allarounddata__row p {
        margin-bottom: 16px;
    }
}

@media screen and (max-width: 615px) {
    .post .allarounddata__rows.slick-initialized  {
        flex-direction: row;
    }
    
    .post .allarounddata__row  {
        flex-direction: column;
        align-items: center;
        text-align: center;
    }

    .post .allarounddata__column {
        margin: 24px 0;
        padding-right: 0;
    }

    .post .allarounddata__row a {
        text-align: center;
        margin: 0 auto;
    }

    .post .allarounddata__row img {
        max-width: 230px;
        margin: 0 auto;
    }

    .post .allarounddata-widget {
        padding: 64px 0;
    }
}

@media screen and (max-width: 500px) {
    .post .allarounddata__row img {
        max-width: 190px;
    }
}
</style><style>
      .allarounddata-widget .slick-slide, .allarounddata-widget .slick-list {
          width: 100%;
      }
      .allarounddata-widget .slick-arrow.slick-prev {
      }
      .allarounddata-widget .slick-arrow.slick-next {
      }

      .allarounddata-widget .slick-arrow.slick-prev, .allarounddata-widget .slick-arrow.slick-next {
        left: -15px !important;
        bottom: 144px !important;
        background-color: transparent;
        box-shadow: none;
        position: absolute;
    }
    .allarounddata-widget .slick-arrow.slick-next {
        right: -15px !important;
        left: auto !important;
    }
    .allarounddata-widget .slick-arrow i {
        color: #5F5CE7;
        font-size: 17px;
    }
    .allarounddata-widget .slick-arrow.slick-prev i:before {
        content: "\f060";
    }
    .allarounddata-widget .slick-arrow.slick-next i:before {
        content: "\f061";
    }

    @media screen and (min-width: 450px) {
        .allarounddata-widget .slick-arrow.slick-prev, .allarounddata-widget .slick-arrow.slick-next {
            bottom: 122px !important;
        }
    }
      
      @media screen and (max-width: 767px) {
          .allarounddata-widget {
              width: 400px !important;
              max-width: 100% !important;
              margin: 0 auto;
          }
          .allarounddata-widget .slick-arrow.slick-prev {
          }
          .allarounddata-widget .slick-arrow.slick-next {
          }

          #page .allarounddata-widget {
            width: 100% !important;
            padding: 60px 0 !important;
        }
      }

  </style><div class="allarounddata-widget"><div class="container" ><span>All Around Data</span><h2>3 Types of Data Collected</h2><p class="subheading" >Elevar's job is to collect the maximum amount of attributable data to send to each of your marketing destinations.</p><div class="allarounddata__rows" ><div class="allarounddata_row_1 allarounddata__row" ><img decoding="async" src="https://getelevar.com/wp-content/uploads/2022/08/Product-Data.png" alt="" /><div class="allarounddata__column" ><h3>Product & Order Data</h3><p>This is the data you'd expect to see in each of your tags that appears in pixel helpers -- product sku, price, brand, revenue, transaction IDs, etc.</p><a href="https://getelevar.com/video-demo/"><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
      <path d="M12 22C17.5228 22 22 17.5228 22 12C22 6.47715 17.5228 2 12 2C6.47715 2 2 6.47715 2 12C2 17.5228 6.47715 22 12 22Z" stroke="#5F5CE7" stroke-linecap="round" stroke-linejoin="round"/>
      <path d="M10 8L16 12L10 16V8Z" stroke="#5F5CE7" stroke-linecap="round" stroke-linejoin="round"/>
      </svg>Watch how it works</a></div></div><div class="allarounddata_row_2 allarounddata__row" ><img decoding="async" src="https://getelevar.com/wp-content/uploads/2022/08/Customer-Data.png" alt="" /><div class="allarounddata__column" ><h3>Customer Data</h3><p>This is data such as email, user identifier, customer id, phone, addresses, etc. This data collection can be integrated with consent providers like OneTrust.</p><a href="https://getelevar.com/video-demo/"><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
      <path d="M12 22C17.5228 22 22 17.5228 22 12C22 6.47715 17.5228 2 12 2C6.47715 2 2 6.47715 2 12C2 17.5228 6.47715 22 12 22Z" stroke="#5F5CE7" stroke-linecap="round" stroke-linejoin="round"/>
      <path d="M10 8L16 12L10 16V8Z" stroke="#5F5CE7" stroke-linecap="round" stroke-linejoin="round"/>
      </svg>Watch how it works</a></div></div><div class="allarounddata_row_3 allarounddata__row" ><img decoding="async" src="https://getelevar.com/wp-content/uploads/2022/08/Attribution-Data.png" alt="" /><div class="allarounddata__column" ><h3>Attribution Data</h3><p>The most critical data for your marketing channels to attribute clicks to conversions. This data includes click IDs, cookie values, UTM parameters, and other data related to session stitching.</p><a href="https://getelevar.com/video-demo/"><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
      <path d="M12 22C17.5228 22 22 17.5228 22 12C22 6.47715 17.5228 2 12 2C6.47715 2 2 6.47715 2 12C2 17.5228 6.47715 22 12 22Z" stroke="#5F5CE7" stroke-linecap="round" stroke-linejoin="round"/>
      <path d="M10 8L16 12L10 16V8Z" stroke="#5F5CE7" stroke-linecap="round" stroke-linejoin="round"/>
      </svg>Watch how it works</a></div></div></div></div></div></div></div></div></div><div class="vc_row-full-width vc_clearfix"></div><div id="do-more" data-vc-full-width="true" data-vc-full-width-init="false" class="vc_row wpb_row vc_row-fluid hero hero-clean section"><div class="wpb_column vc_column_container vc_col-sm-5"><div class="vc_column-inner "><div class="wpb_wrapper"><h2 style="font-size: 38px;color: #212b36;line-height: 48px;text-align: left" class="vc_custom_heading" >Do More with 50+ Integrations With Elevar</h2>
	<div class="wpb_text_column wpb_content_element " >
		<div class="wpb_wrapper">
			<p>With real-time event monitoring and integrations with Facebook Conversion API, Google Ads, GA4, TikTok, and 40+ more digital marketing channels</p>

		</div>
	</div>
<div class="vc_btn3-container  btn btn-default vc_btn3-inline" >
	<a class="vc_general vc_btn3 vc_btn3-size-md vc_btn3-shape-square vc_btn3-style-flat vc_btn3-color-grey" href="https://www.getelevar.com/all-integrations/" title="Do More with 50+ Integrations With Elevar">Explore Integrations</a></div>
</div></div></div><div class="wpb_column vc_column_container vc_col-sm-7"><div class="vc_column-inner "><div class="wpb_wrapper">
	<div  class="wpb_single_image wpb_content_element vc_align_right  vc_custom_1688479279524">
		
		<figure class="wpb_wrapper vc_figure">
			<div class="vc_single_image-wrapper   vc_box_border_grey"><img loading="lazy" decoding="async" width="1174" height="816" src="https://getelevar.com/wp-content/uploads/2023/07/Image-–-Integrations.png" class="vc_single_image-img attachment-full" alt="" srcset="https://getelevar.com/wp-content/uploads/2023/07/Image-–-Integrations.png 1174w, https://getelevar.com/wp-content/uploads/2023/07/Image-–-Integrations-300x209.png 300w, https://getelevar.com/wp-content/uploads/2023/07/Image-–-Integrations-1024x712.png 1024w, https://getelevar.com/wp-content/uploads/2023/07/Image-–-Integrations-768x534.png 768w" sizes="auto, (max-width: 1174px) 100vw, 1174px" /></div>
		</figure>
	</div>
</div></div></div></div><div class="vc_row-full-width vc_clearfix"></div><div id="quote-carousel" class="vc_row wpb_row vc_row-fluid vc_custom_1620309629137"><div class="wpb_column vc_column_container vc_col-sm-12"><div class="vc_column-inner "><div class="wpb_wrapper"><style>
                .v2.opinion-wrapper .slick-slide {
                    width: 100%;
                }
                .v2.opinion-wrapper .slick-arrow.slick-prev {
                    left: -40px;
                    top: 150px;
                }
                .v2.opinion-wrapper .slick-arrow.slick-next {
                    right: -40px;
                    top: 150px;
                }
                .opinion2-single-inner {
                    background-color: #DFE3E8;
                    text-align: left;
                    color: #647380;
                    display: flex;
                }
                .opinion2-single {
                    opacity: 0;
                    transition: opacity .3s;
                }
                .opinion2-single.slick-active {
                    opacity: 1;
                }
                .opinion2-single-inner .content-box  {
                    background-color: #fff;
                    padding: 30px;
                }
                .opinion2-single-inner .content-box .logo  {
                    max-width: 200px;
                    max-height: 40px;
                    margin-bottom: 15px;
                }
                .opinion2-single-inner blockquote  {
                    border: none;
                    padding-left: 0;
                    color: #212B36;
                    font-size: 24px;
                }
                .opinion2-single-inner blockquote:before  {
                    // content: "“";
                    // position: absolute;
                    // left: 10px;
                    // top: 7px;
                    // font-size: 80px;
                    // color: #5F5CE7;
                    // opacity: .4;
                }
                .opinion2-single-inner blockquote .quote-mark  {
                    position: absolute;
                    left: 7px;
                    top: 6px;
                    font-size: 80px;
                    color: #5F5CE7;
                    opacity: .4;
                }
                .opinion2-single-inner .name  {
                    color: #454F5A;
                    font-size: 18px;
                }
                .opinion2-single-inner span  {
                    font-size: 16px;
                    color: #647380;
                    display: block;
                }
                .image-box {
                    min-height: 100%;
                    background-repeat: no-repeat;
                    background-position: center;
                    background-size: cover;
                }
                @media screen and (max-width: 767px) {
                    .opinion-wrapper.v2 {
                        width: 400px !important;
                        max-width: 100% !important;
                        margin: 0 auto;
                    }
                    .opinion2-single-inner {
                        flex-direction: column;
                    }
                    .opinion2-single-inner .content-box .logo  {
                        max-width: 100%;
                    }
                    .v2.opinion-wrapper .slick-arrow.slick-prev {
                        left: 140px;
                        top: auto;
                        bottom: -70px;
                    }
                    .v2.opinion-wrapper .slick-arrow.slick-next {
                        right: 140px;
                        top: auto;
                        bottom: -70px;
                    }
                    .image-box {
                        min-height: 240px;
                    }
                    .opinion2-single-inner blockquote  {
                        font-size: 20px;
                    }
                    .opinion2-single-inner blockquote .quote-mark  {
                        display: inline;
                        position: relative;
                        left: 10px;
                        top: 30px;
                        font-size: 80px;
                        line-height: .5;
                    }
                }
            </style>
            <div class="opinion-wrapper v2">
                
				<div class="col-sm-8 opinion2-single text-center">
					<div class="row opinion2-single-inner">
						<div class="col-sm-3 image-box" style="background-image: url(https://getelevar.com/wp-content/uploads/2020/03/customeropinionbuck.png);"  >
						  
						</div>
						<div class="col-sm-9 content-box" >
                            <!-- <img decoding="async" src="https://getelevar.com/wp-content/uploads/2020/02/buck-mason-logo-png.png" alt="" class="img-responsive logo"> -->
							  <blockquote><span class="quote-mark">“</span>Amazing feedback, support, and optimizations. The team is extremely knowledgeable, and shares that info transparently. Education and execution are the hallmarks of the platform, but more importantly, of the team.</blockquote>
							 <p class="name">Amit Shah</p>
						      <span>Growth Marketing Manager, Buck Mason</span>
						</div>								
					</div>
				</div>
			
                
				<div class="col-sm-8 opinion2-single text-center">
					<div class="row opinion2-single-inner">
						<div class="col-sm-3 image-box" style="background-image: url(https://getelevar.com/wp-content/uploads/2020/03/mark-duffy.jpeg);"  >
						  
						</div>
						<div class="col-sm-9 content-box" >
                            <!-- <img decoding="async" src="https://getelevar.com/wp-content/uploads/2020/02/owllabs_logo_2019.png" alt="" class="img-responsive logo"> -->
							  <blockquote><span class="quote-mark">“</span>The Elevar team is responsive and eager to help. We now feel that our site analytics are in a great place, and we get so much value in working with the Elevar Team.</blockquote>
							 <p class="name">Mark Duffy</p>
						      <span>Digital Marketing Manager, Owl Labs</span>
						</div>								
					</div>
				</div>
			
                
				<div class="col-sm-8 opinion2-single text-center">
					<div class="row opinion2-single-inner">
						<div class="col-sm-3 image-box" style="background-image: url(https://getelevar.com/wp-content/uploads/2020/03/dylan-kim.jpeg);"  >
						  
						</div>
						<div class="col-sm-9 content-box" >
                            <!-- <img decoding="async" src="https://getelevar.com/wp-content/uploads/2019/03/brevite-logo.png" alt="" class="img-responsive logo"> -->
							  <blockquote><span class="quote-mark">“</span>I have a much better understanding of how minor changes can hugely impact different KPIs. The eCommerce strategy has also been greatly beneficial to how we think about long-term strategy and how we operate day-to-day.</blockquote>
							 <p class="name">Dylan Kim</p>
						      <span>Co-Founder, Brevite</span>
						</div>								
					</div>
				</div>
			</div></div></div></div></div><div data-vc-full-width="true" data-vc-full-width-init="false" data-vc-stretch-content="true" class="vc_row wpb_row vc_row-fluid section vc_custom_1621248598905 vc_row-has-fill"><div class="has-purple-buttons has-centered-buttons wpb_column vc_column_container vc_col-sm-10 vc_col-lg-offset-3 vc_col-lg-6 vc_col-md-offset-2 vc_col-md-8 vc_col-sm-offset-1" id="how-it-works"><div class="vc_column-inner vc_custom_1619540288743"><div class="wpb_wrapper">
	<div class="wpb_text_column wpb_content_element  meta-title" >
		<div class="wpb_wrapper">
			<h5 style="text-align: center;">Built for Shopify</h5>

		</div>
	</div>
<h2 style="font-size: 38px;color: #333333;line-height: 48px;text-align: center" class="vc_custom_heading" >Power your pixels and analytics with complete datasets </h2>
	<div class="wpb_text_column wpb_content_element " >
		<div class="wpb_wrapper">
			<p style="text-align: center;"> Instantly deploy a Google Tag Manager data layer, server-side tracking, session enrichment, and real-time performance monitoring so your marketing platforms are always fully optimized.</p>

		</div>
	</div>
<div class="vc_btn3-container  btn btn-default vc_btn3-inline" >
	<a class="vc_general vc_btn3 vc_btn3-size-md vc_btn3-shape-square vc_btn3-style-flat vc_btn3-color-grey" href="https://www.getelevar.com/use-cases/" title="use cases">See Use Cases</a></div>
</div></div></div></div><div class="vc_row-full-width vc_clearfix"></div><div data-vc-full-width="true" data-vc-full-width-init="false" class="vc_row wpb_row vc_row-fluid section section-about vert-margin-100--desktop has-bottom-connector column-reverse vc_custom_1619804057056 vc_row-has-fill vc_row-o-content-middle vc_row-flex"><div class="has_vertical_connector wpb_column vc_column_container vc_col-sm-6 vc_col-lg-offset-1 vc_col-lg-4"><div class="vc_column-inner "><div class="wpb_wrapper"><h3 style="font-size: 38px;color: #333333;line-height: 48px;text-align: left" class="vc_custom_heading" >Privacy Enabled Data Layer</h3>
	<div class="wpb_text_column wpb_content_element " >
		<div class="wpb_wrapper">
			<p>Our data layer and webhook integrations capture user behavior, marketing attribution data, customer data, and consent mode status.</p>
<p>This data is then used to power server-side tracking in Elevar or tags in your own Google Tag Manager account.</p>

		</div>
	</div>
<div class="vc_btn3-container  btn btn-blank violet vc_btn3-inline" >
	<a class="vc_general vc_btn3 vc_btn3-size-md vc_btn3-shape-square vc_btn3-style-flat vc_btn3-color-grey" href="https://www.getelevar.com/data-layer-gtm-shopify/" title="Data Foundation" target="_blank">Learn About Data Layer for Shopify</a></div>
<div class="vc_btn3-container  btn btn-blank violet vc_btn3-inline" >
	<a class="vc_general vc_btn3 vc_btn3-size-md vc_btn3-shape-square vc_btn3-style-flat vc_btn3-color-grey" href="https://www.getelevar.com/all-integrations/#consentmode" title="Data Foundation" target="_blank">View Consent Integrations</a></div>
</div></div></div><div class="wpb_column vc_column_container vc_col-sm-6 vc_col-lg-offset-1 vc_col-lg-6"><div class="vc_column-inner vc_custom_1500895717347"><div class="wpb_wrapper">
	<div  class="wpb_single_image wpb_content_element vc_align_left   section-img">
		
		<figure class="wpb_wrapper vc_figure">
			<div class="vc_single_image-wrapper   vc_box_border_grey"><img loading="lazy" decoding="async" width="1300" height="900" src="https://getelevar.com/wp-content/uploads/2022/01/vuori-data-layer-ssv1.png" class="vc_single_image-img attachment-full" alt="elevar-server-side" srcset="https://getelevar.com/wp-content/uploads/2022/01/vuori-data-layer-ssv1.png 1300w, https://getelevar.com/wp-content/uploads/2022/01/vuori-data-layer-ssv1-300x208.png 300w, https://getelevar.com/wp-content/uploads/2022/01/vuori-data-layer-ssv1-1024x709.png 1024w, https://getelevar.com/wp-content/uploads/2022/01/vuori-data-layer-ssv1-768x532.png 768w" sizes="auto, (max-width: 1300px) 100vw, 1300px" /></div>
		</figure>
	</div>
</div></div></div></div><div class="vc_row-full-width vc_clearfix"></div><div class="vc_row wpb_row vc_row-fluid section-connector-box"><div class="wpb_column vc_column_container vc_col-sm-12"><div class="vc_column-inner "><div class="wpb_wrapper"><div class="vc_empty_space  section-connector"   style="height: 130px" ><span class="vc_empty_space_inner"></span></div>
</div></div></div></div><div data-vc-full-width="true" data-vc-full-width-init="false" class="vc_row wpb_row vc_row-fluid section section-about has-connector vc_custom_1619541529920 vc_row-o-content-middle vc_row-flex"><div class="wpb_column vc_column_container vc_col-sm-6 vc_col-lg-6 vc_col-xs-12"><div class="vc_column-inner vc_custom_1500909319896"><div class="wpb_wrapper">
	<div  class="wpb_single_image wpb_content_element vc_align_left">
		
		<figure class="wpb_wrapper vc_figure">
			<div class="vc_single_image-wrapper   vc_box_border_grey"><img loading="lazy" decoding="async" width="1674" height="960" src="https://getelevar.com/wp-content/uploads/2024/07/elevar-server-side-tracking-1.png" class="vc_single_image-img attachment-full" alt="" srcset="https://getelevar.com/wp-content/uploads/2024/07/elevar-server-side-tracking-1.png 1674w, https://getelevar.com/wp-content/uploads/2024/07/elevar-server-side-tracking-1-300x172.png 300w, https://getelevar.com/wp-content/uploads/2024/07/elevar-server-side-tracking-1-1024x587.png 1024w, https://getelevar.com/wp-content/uploads/2024/07/elevar-server-side-tracking-1-768x440.png 768w, https://getelevar.com/wp-content/uploads/2024/07/elevar-server-side-tracking-1-1536x881.png 1536w" sizes="auto, (max-width: 1674px) 100vw, 1674px" /></div>
		</figure>
	</div>
</div></div></div><div class="has_vertical_connector wpb_column vc_column_container vc_col-sm-6 vc_col-lg-offset-1 vc_col-lg-4"><div class="vc_column-inner "><div class="wpb_wrapper"><h3 style="font-size: 38px;color: #333333;line-height: 48px;text-align: left" class="vc_custom_heading" >Client-Side &amp; Server-Side Tracking</h3>
	<div class="wpb_text_column wpb_content_element " >
		<div class="wpb_wrapper">
			<p>Most marketing channels are moving to server-side tracking to ensure 100% of first party data is collected to improve performance reporting and audience automations.</p>
<p>With Elevar, you can publish server-side tracking to Conversion APIs in a few clicks.</p>
<p>Or if you prefer client-side tracking, then utilize Elevar&#8217;s Pre-Built Tag library to use in GTM.</p>

		</div>
	</div>
<div class="vc_btn3-container  btn btn-blank violet vc_btn3-inline" >
	<a class="vc_general vc_btn3 vc_btn3-size-md vc_btn3-shape-square vc_btn3-style-flat vc_btn3-color-grey" href="https://www.getelevar.com/all-integrations/" title="eCommerce Insights" target="_blank">View All Integrations</a></div>
<div class="vc_btn3-container  btn btn-blank violet vc_btn3-inline" >
	<a class="vc_general vc_btn3 vc_btn3-size-md vc_btn3-shape-square vc_btn3-style-flat vc_btn3-color-grey" href="https://www.getelevar.com/improve-facebook-performance/" title="eCommerce Insights" target="_blank">Boost Facebook Performance by 20%</a></div>
</div></div></div></div><div class="vc_row-full-width vc_clearfix"></div><div class="vc_row wpb_row vc_row-fluid section-connector-box"><div class="wpb_column vc_column_container vc_col-sm-12"><div class="vc_column-inner "><div class="wpb_wrapper"><div class="vc_empty_space  section-connector flip"   style="height: 110px" ><span class="vc_empty_space_inner"></span></div>
</div></div></div></div><div data-vc-full-width="true" data-vc-full-width-init="false" class="vc_row wpb_row vc_row-fluid section section-about vert-margin-100--desktop has-connector column-reverse vc_custom_1619807702005 vc_row-has-fill vc_row-o-content-middle vc_row-flex"><div class="has_vertical_connector wpb_column vc_column_container vc_col-sm-6 vc_col-lg-offset-1 vc_col-lg-4"><div class="vc_column-inner "><div class="wpb_wrapper"><h3 style="font-size: 38px;color: #333333;line-height: 48px;text-align: left" class="vc_custom_heading" >2-3x Klaviyo Flow Performance</h3>
	<div class="wpb_text_column wpb_content_element " >
		<div class="wpb_wrapper">
			<div class="beforeafter-widget__step active" tabindex="-1" role="option" data-step="step1" aria-describedby="slick-slide00">
<p class="elevar-grey2">Leveraging Elevar&#8217;s Session Enrichment and Klaviyo server-side integration, our customers consistently experience a 50% or greater increase in product view and add-to-cart events.</p>
<p class="elevar-grey2">This results in more abandoned flow emails being sent and a direct boost in ROI from your Elevar integration.</p>
</div>
<div class="beforeafter-widget__step" tabindex="-1" role="option" data-step="step2" aria-describedby="slick-slide01"></div>

		</div>
	</div>
<div class="vc_btn3-container  btn btn-blank violet vc_btn3-inline" >
	<a class="vc_general vc_btn3 vc_btn3-size-md vc_btn3-shape-square vc_btn3-style-flat vc_btn3-color-grey" href="https://share.vidyard.com/watch/dWbtS8hiVVCh11YsHC3qi4?" title="Goal Forecasting" target="_blank">See How It Works</a></div>
</div></div></div><div class="wpb_column vc_column_container vc_col-sm-6 vc_col-lg-offset-1 vc_col-lg-6"><div class="vc_column-inner vc_custom_1500895717347"><div class="wpb_wrapper">
	<div  class="wpb_single_image wpb_content_element vc_align_center   section-img">
		
		<figure class="wpb_wrapper vc_figure">
			<div class="vc_single_image-wrapper   vc_box_border_grey"><img loading="lazy" decoding="async" width="2000" height="1640" src="https://getelevar.com/wp-content/uploads/2023/06/2-3x-Klaviyo-Flow-Performance.png" class="vc_single_image-img attachment-full" alt="" srcset="https://getelevar.com/wp-content/uploads/2023/06/2-3x-Klaviyo-Flow-Performance.png 2000w, https://getelevar.com/wp-content/uploads/2023/06/2-3x-Klaviyo-Flow-Performance-300x246.png 300w, https://getelevar.com/wp-content/uploads/2023/06/2-3x-Klaviyo-Flow-Performance-1024x840.png 1024w, https://getelevar.com/wp-content/uploads/2023/06/2-3x-Klaviyo-Flow-Performance-768x630.png 768w, https://getelevar.com/wp-content/uploads/2023/06/2-3x-Klaviyo-Flow-Performance-1536x1260.png 1536w" sizes="auto, (max-width: 2000px) 100vw, 2000px" /></div>
		</figure>
	</div>
</div></div></div></div><div class="vc_row-full-width vc_clearfix"></div><div class="vc_row wpb_row vc_row-fluid section-connector-box"><div class="wpb_column vc_column_container vc_col-sm-12"><div class="vc_column-inner "><div class="wpb_wrapper"><div class="vc_empty_space  section-connector"   style="height: 130px" ><span class="vc_empty_space_inner"></span></div>
</div></div></div></div><div data-vc-full-width="true" data-vc-full-width-init="false" class="vc_row wpb_row vc_row-fluid section section-about has-connector vc_custom_1619808036540 vc_row-o-content-middle vc_row-flex"><div class="wpb_column vc_column_container vc_col-sm-6 vc_col-lg-6 vc_col-xs-12"><div class="vc_column-inner vc_custom_1500909319896"><div class="wpb_wrapper">
	<div  class="wpb_single_image wpb_content_element vc_align_left">
		
		<figure class="wpb_wrapper vc_figure">
			<div class="vc_single_image-wrapper   vc_box_border_grey"><img loading="lazy" decoding="async" width="1820" height="1804" src="https://getelevar.com/wp-content/uploads/2023/06/Recognize-Returning-Users-2023.png" class="vc_single_image-img attachment-full" alt="" srcset="https://getelevar.com/wp-content/uploads/2023/06/Recognize-Returning-Users-2023.png 1820w, https://getelevar.com/wp-content/uploads/2023/06/Recognize-Returning-Users-2023-300x297.png 300w, https://getelevar.com/wp-content/uploads/2023/06/Recognize-Returning-Users-2023-1024x1015.png 1024w, https://getelevar.com/wp-content/uploads/2023/06/Recognize-Returning-Users-2023-150x150.png 150w, https://getelevar.com/wp-content/uploads/2023/06/Recognize-Returning-Users-2023-768x761.png 768w, https://getelevar.com/wp-content/uploads/2023/06/Recognize-Returning-Users-2023-1536x1522.png 1536w, https://getelevar.com/wp-content/uploads/2023/06/Recognize-Returning-Users-2023-36x36.png 36w" sizes="auto, (max-width: 1820px) 100vw, 1820px" /></div>
		</figure>
	</div>
</div></div></div><div class="has_vertical_connector wpb_column vc_column_container vc_col-sm-6 vc_col-lg-offset-1 vc_col-lg-4"><div class="vc_column-inner "><div class="wpb_wrapper"><h3 style="font-size: 38px;color: #333333;line-height: 48px;text-align: left" class="vc_custom_heading" >Recognize Returning Users with Session Enrichment</h3>
	<div class="wpb_text_column wpb_content_element " >
		<div class="wpb_wrapper">
			<p>Boost your marketing performance: Elevar’s Session Enrichment instantly improves campaign ROI by recognizing returning users &amp; enhancing data sent to Facebook CAPI, Klaviyo, Google Ads, and more!</p>

		</div>
	</div>
</div></div></div></div><div class="vc_row-full-width vc_clearfix"></div><div class="vc_row wpb_row vc_row-fluid section-connector-box"><div class="wpb_column vc_column_container vc_col-sm-12"><div class="vc_column-inner "><div class="wpb_wrapper"><div class="vc_empty_space  section-connector flip"   style="height: 110px" ><span class="vc_empty_space_inner"></span></div>
</div></div></div></div><div data-vc-full-width="true" data-vc-full-width-init="false" class="vc_row wpb_row vc_row-fluid section section-about vert-margin-100--desktop has-connector column-reverse vc_custom_1620308966170 vc_row-has-fill vc_row-o-content-middle vc_row-flex"><div class="has_vertical_connector wpb_column vc_column_container vc_col-sm-6 vc_col-lg-offset-1 vc_col-lg-4"><div class="vc_column-inner "><div class="wpb_wrapper"><h3 style="font-size: 38px;color: #333333;line-height: 48px;text-align: left" class="vc_custom_heading" >Launch GA4 and Enrich with Events</h3>
	<div class="wpb_text_column wpb_content_element " >
		<div class="wpb_wrapper">
			<p>Is GA4 setup for success ahead of the July 2023 sunset date of Universal Analytics? Elevar helps automate the setup of accurate server-side tracking for GA4 and Universal Analytics. Plus our point-and-click Chrome Extension allows you to quickly add event tracking across your website that syncs with Google Tag Manager.</p>

		</div>
	</div>
<div class="vc_btn3-container  btn btn-blank violet vc_btn3-inline" >
	<a class="vc_general vc_btn3 vc_btn3-size-md vc_btn3-shape-square vc_btn3-style-flat vc_btn3-color-grey" href="https://knowledge.getelevar.com/how-to-configure-ga4-for-shopify" title="eCommerce Insights" target="_blank">Launch GA4 on Shopify</a></div>
<div class="vc_btn3-container  btn btn-blank violet vc_btn3-inline" >
	<a class="vc_general vc_btn3 vc_btn3-size-md vc_btn3-shape-square vc_btn3-style-flat vc_btn3-color-grey" href="https://www.getelevar.com/event-builder/" title="eCommerce Insights">Chrome Extension</a></div>
</div></div></div><div class="wpb_column vc_column_container vc_col-sm-6 vc_col-lg-offset-1 vc_col-lg-6"><div class="vc_column-inner vc_custom_1500895717347"><div class="wpb_wrapper">
	<div  class="wpb_single_image wpb_content_element vc_align_center">
		
		<figure class="wpb_wrapper vc_figure">
			<div class="vc_single_image-wrapper   vc_box_border_grey"><img loading="lazy" decoding="async" width="1162" height="760" src="https://getelevar.com/wp-content/uploads/2021/05/benefit-4.png" class="vc_single_image-img attachment-full" alt="enrich ga data" srcset="https://getelevar.com/wp-content/uploads/2021/05/benefit-4.png 1162w, https://getelevar.com/wp-content/uploads/2021/05/benefit-4-300x196.png 300w, https://getelevar.com/wp-content/uploads/2021/05/benefit-4-1024x670.png 1024w, https://getelevar.com/wp-content/uploads/2021/05/benefit-4-768x502.png 768w" sizes="auto, (max-width: 1162px) 100vw, 1162px" /></div>
		</figure>
	</div>
</div></div></div></div><div class="vc_row-full-width vc_clearfix"></div><div id="logo-callouts" data-vc-full-width="true" data-vc-full-width-init="false" class="vc_row wpb_row vc_row-fluid section section--logo-callout section--client-callout vc_custom_1620308767610"><div class="client-callout wpb_column vc_column_container vc_col-sm-4"><div class="vc_column-inner "><div class="wpb_wrapper">
	<div class="wpb_raw_code wpb_content_element wpb_raw_html" >
		<div class="wpb_wrapper">
			<div style="padding:62.25% 0 0 0;position:relative;"><iframe src="https://player.vimeo.com/video/549617590?autoplay=0&loop=0&title=0&byline=0&portrait=0" style="position:absolute;top:0;left:0;width:100%;height:100%;" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe></div><script src="https://player.vimeo.com/api/player.js"></script>
		</div>
	</div>
<h3 style="font-size: 20px;color: #212b36;line-height: 1;text-align: left" class="vc_custom_heading" >Boris Hodakel</h3><h4 style="font-size: 16px;color: #647380;line-height: 1;text-align: left" class="vc_custom_heading" >Founder, Feel</h4>
	<div class="wpb_text_column wpb_content_element " >
		<div class="wpb_wrapper">
			<p>&#8220;A gift that we have something like this that can be deployed with just a couple of clicks which makes my life easier&#8230;and I don&#8217;t get anxiety when I need to add something new.&#8221;</p>

		</div>
	</div>
</div></div></div><div class="client-callout wpb_column vc_column_container vc_col-sm-4"><div class="vc_column-inner "><div class="wpb_wrapper">
	<div class="wpb_raw_code wpb_content_element wpb_raw_html" >
		<div class="wpb_wrapper">
			<div style="padding:62.25% 0 0 0;position:relative;"><iframe src="https://player.vimeo.com/video/549617463?autoplay=0&loop=0&title=0&byline=0&portrait=0" style="position:absolute;top:0;left:0;width:100%;height:100%;" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe></div><script src="https://player.vimeo.com/api/player.js"></script>
		</div>
	</div>
<h3 style="font-size: 20px;color: #212b36;line-height: 1;text-align: left" class="vc_custom_heading" >Gabriel S. Dias</h3><h4 style="font-size: 16px;color: #647380;line-height: 1;text-align: left" class="vc_custom_heading" >Head of Digital &amp; Growth, Vessi</h4>
	<div class="wpb_text_column wpb_content_element " >
		<div class="wpb_wrapper">
			<p>&#8220;We&#8217;ve tripled in size which is quite a milestone. And our conversion rate has gone up significantly even with high volume of paid social traffic.&#8221;</p>

		</div>
	</div>
</div></div></div><div class="client-callout wpb_column vc_column_container vc_col-sm-4"><div class="vc_column-inner "><div class="wpb_wrapper">
	<div class="wpb_raw_code wpb_content_element wpb_raw_html" >
		<div class="wpb_wrapper">
			<div style="padding:62.25% 0 0 0;position:relative;"><iframe src="https://player.vimeo.com/video/549617597?autoplay=0&loop=0&title=0&byline=0&portrait=0" style="position:absolute;top:0;left:0;width:100%;height:100%;" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe></div><script src="https://player.vimeo.com/api/player.js"></script>
		</div>
	</div>
<h3 style="font-size: 20px;color: #212b36;line-height: 1;text-align: left" class="vc_custom_heading" >Dylan Kim</h3><h4 style="font-size: 16px;color: #647380;line-height: 1;text-align: left" class="vc_custom_heading" >Co-Founder, Brevitē</h4>
	<div class="wpb_text_column wpb_content_element " >
		<div class="wpb_wrapper">
			<p>&#8220;15x&#8217;d our business in 3 years since working with Elevar. Laying down the foundational work early so we could see that growth was key to our success.&#8221;</p>

		</div>
	</div>
</div></div></div></div><div class="vc_row-full-width vc_clearfix"></div><div data-vc-full-width="true" data-vc-full-width-init="false" data-vc-stretch-content="true" class="vc_row wpb_row vc_row-fluid section full-width-checklist vc_custom_1619808691479"><div class="wpb_column vc_column_container vc_col-sm-10 vc_col-lg-offset-3 vc_col-lg-6 vc_col-md-offset-2 vc_col-md-8 vc_col-sm-offset-1"><div class="vc_column-inner vc_custom_1500890239705"><div class="wpb_wrapper">
	<div class="wpb_text_column wpb_content_element  meta-title" >
		<div class="wpb_wrapper">
			<h5 style="text-align: center;">One Central System</h5>

		</div>
	</div>
<h2 style="font-size: 38px;color: #333333;line-height: 48px;text-align: center" class="vc_custom_heading" >Elevar simplifies the growing complexity of tracking and user identification all in one place</h2>
	<div class="wpb_text_column wpb_content_element " >
		<div class="wpb_wrapper">
			<p style="text-align: center;">Your marketing team feels confident and sees their campaign performance improve. You get peace of mind, better performance, and more revenue.</p>

		</div>
	</div>

	<div class="wpb_raw_code wpb_content_element wpb_raw_html" >
		<div class="wpb_wrapper">
			<div id="highlights_1">
<ul class="checklist">
<li><img decoding="async" src="/wp-content/uploads/2021/05/check-square.png" />Improve ad performance with better analytics</li>
<li><img decoding="async" src="/wp-content/uploads/2021/05/check-square.png" />Reduce the cost to acquire new customers</li>
<li><img decoding="async" src="/wp-content/uploads/2021/05/check-square.png" />Fully managed, and DIY server-side plans</li>
<li><img decoding="async" src="/wp-content/uploads/2021/05/check-square.png" />Real-Time Conversion Reporting</li>
<li><img decoding="async" src="/wp-content/uploads/2021/05/check-square.png" />Sitewide data layer for Google Tag Manager</li>
<li><img decoding="async" src="/wp-content/uploads/2021/05/check-square.png" />CCPA and GDPR consent integrations</li>
<li><img decoding="async" src="/wp-content/uploads/2021/05/check-square.png" />Automated tracking alerts</li>
<li><img decoding="async" src="/wp-content/uploads/2021/05/check-square.png" />Facebook Conversion API</li>
<li><img decoding="async" src="/wp-content/uploads/2021/05/check-square.png" />Expert installation and setup options</li>
<li><img decoding="async" src="/wp-content/uploads/2021/05/check-square.png" />99% conversion accuracy - guaranteed</li>
<li><img decoding="async" src="/wp-content/uploads/2021/05/check-square.png" />4.9 out of 5 stars on Shopify's app store</li>
<li><img decoding="async" src="/wp-content/uploads/2021/05/check-square.png" />24 hour, 6 days a week customer support</li>
</ul>
</div>
		</div>
	</div>
<div class="vc_row wpb_row vc_inner vc_row-fluid stacked-mobile"><div class="wpb_column vc_column_container vc_col-sm-6"><div class="vc_column-inner "><div class="wpb_wrapper"><div class="vc_btn3-container  btn btn-default vc_btn3-inline" >
	<a class="vc_general vc_btn3 vc_btn3-size-md vc_btn3-shape-square vc_btn3-style-flat vc_btn3-color-grey" href="https://www.getelevar.com/pricing-and-plans/" title="Pricing Plans">View Pricing &amp; Plans</a></div>
</div></div></div><div class="wpb_column vc_column_container vc_col-sm-6"><div class="vc_column-inner "><div class="wpb_wrapper"><div class="vc_btn3-container  btn btn-blank violet vc_btn3-inline" >
	<a class="vc_general vc_btn3 vc_btn3-size-md vc_btn3-shape-square vc_btn3-style-flat vc_btn3-color-grey" href="https://www.getelevar.com/video-demo/" title="Goal Forecasting">Watch or Book a Demo</a></div>
</div></div></div></div></div></div></div></div><div class="vc_row-full-width vc_clearfix"></div><div data-vc-full-width="true" data-vc-full-width-init="false" class="vc_row wpb_row vc_row-fluid section section--logo-callout section--stats vc_custom_1620213673571"><div class="wpb_column vc_column_container vc_col-sm-6 vc_col-lg-offset-1 vc_col-lg-5 vc_col-md-offset-0 vc_col-md-6 vc_col-sm-offset-0"><div class="vc_column-inner "><div class="wpb_wrapper">
	<div class="wpb_raw_code wpb_content_element wpb_raw_html" >
		<div class="wpb_wrapper">
			<span class="stat-callout">99%<span>
		</div>
	</div>
<h2 style="font-size: 38px;color: #212b36;line-height: 48px;text-align: center" class="vc_custom_heading" >Conversion Accuracy</h2>
	<div class="wpb_text_column wpb_content_element " >
		<div class="wpb_wrapper">
			<p style="text-align: center;"><!--(figmeta)eyJmaWxlS2V5IjoicGtmSGlsRWJHRWo2WmQ2Mk1udlFjUSIsInBhc3RlSUQiOjcyMTYzNTc3MiwiZGF0YVR5cGUiOiJzY2VuZSJ9Cg==(/figmeta)--><!--(figma)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(/figma)-->Implement Elevar&#8217;s fully managed server-side tracking and we guarantee 99% of your purchase data will be successfully delivered to all of your server-side marketing destinations.</p>

		</div>
	</div>
</div></div></div><div class="wpb_column vc_column_container vc_col-sm-6 vc_col-lg-offset-0 vc_col-lg-5 vc_col-md-offset-0 vc_col-md-6"><div class="vc_column-inner "><div class="wpb_wrapper">
	<div class="wpb_raw_code wpb_content_element wpb_raw_html" >
		<div class="wpb_wrapper">
			<span class="stat-callout">30 <span>DAY</span><span>
		</div>
	</div>
<h2 style="font-size: 38px;color: #212b36;line-height: 48px;text-align: center" class="vc_custom_heading" >Money Back Guarantee</h2>
	<div class="wpb_text_column wpb_content_element " >
		<div class="wpb_wrapper">
			<p style="text-align: center;">Our no questions asked 30 day money back guarantee is available on all plans. We&#8217;re invested into your success.</p>

		</div>
	</div>
</div></div></div></div><div class="vc_row-full-width vc_clearfix"></div><div class="vc_row wpb_row vc_row-fluid section section--get-started vc_custom_1621249512603 vc_row-has-fill"><div class="wpb_column vc_column_container vc_col-sm-10 vc_col-lg-offset-3 vc_col-lg-6 vc_col-md-offset-2 vc_col-md-8 vc_col-sm-offset-1"><div class="vc_column-inner vc_custom_1621249005551"><div class="wpb_wrapper"><h2 style="font-size: 38px;color: #333333;line-height: 48px;text-align: center" class="vc_custom_heading" >Ready to Get Started?</h2>
	<div class="wpb_text_column wpb_content_element " >
		<div class="wpb_wrapper">
			<p style="text-align: center;">Try free for 15 days to start increasing performance through better tracking</p>

		</div>
	</div>
<div class="vc_row wpb_row vc_inner vc_row-fluid stacked-mobile"><div class="wpb_column vc_column_container vc_col-sm-6"><div class="vc_column-inner "><div class="wpb_wrapper"><div class="vc_btn3-container  btn btn-default vc_btn3-inline" >
	<a class="vc_general vc_btn3 vc_btn3-size-md vc_btn3-shape-square vc_btn3-style-flat vc_btn3-color-grey" href="https://app.getelevar.com/auth/signup" title="Pricing Plans" target="_blank">Sign up</a></div>
</div></div></div><div class="wpb_column vc_column_container vc_col-sm-6"><div class="vc_column-inner "><div class="wpb_wrapper"><div class="vc_btn3-container  btn btn-blank violet vc_btn3-inline" >
	<a class="vc_general vc_btn3 vc_btn3-size-md vc_btn3-shape-square vc_btn3-style-flat vc_btn3-color-grey" href="https://www.getelevar.com/pricing-and-plans/" title="Goal Forecasting">View Plans</a></div>
</div></div></div></div></div></div></div></div><div data-vc-full-width="true" data-vc-full-width-init="false" data-vc-stretch-content="true" class="vc_row wpb_row vc_row-fluid section section--good-company"><div class="wpb_column vc_column_container vc_col-sm-10 vc_col-lg-offset-3 vc_col-lg-6 vc_col-md-offset-2 vc_col-md-8 vc_col-sm-offset-1"><div class="vc_column-inner vc_custom_1619534361139"><div class="wpb_wrapper"><h2 style="font-size: 38px;color: #333333;line-height: 48px;text-align: center" class="vc_custom_heading" >You're In Good Hands</h2>
	<div class="wpb_text_column wpb_content_element " >
		<div class="wpb_wrapper">
			<p style="text-align: center;">Proud to be official partners.</p>
<div class="partners_box" style="text-align: center;"></div>
<div><img loading="lazy" decoding="async" class="aligncenter wp-image-10683 size-large" src="https://getelevar.com/wp-content/uploads/2023/03/meta-shopify-plus-official-partners.png" alt="" width="640" height="113" /></div>

		</div>
	</div>
</div></div></div></div><div class="vc_row-full-width vc_clearfix"></div><div data-vc-full-width="true" data-vc-full-width-init="false" class="vc_row wpb_row vc_row-fluid section section--price-promo-footer section-tab vc_custom_1619520836542 vc_row-has-fill"><div class="wpb_column vc_column_container vc_col-sm-12"><div class="vc_column-inner "><div class="wpb_wrapper"></div></div></div></div><div class="vc_row-full-width vc_clearfix"></div>
				</article>
					</div><!--.row-->
	</div><!--.container-->
</div>
	<div class="modal fade" id="ShowDemo" tabindex="-1" role="dialog" aria-labelledby="ShowDemoTitle" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-body">
				<div class="embed-responsive embed-responsive-16by9">
					<iframe class="embed-responsive-item" src="https://www.youtube.com/embed/grH8r0Ntxog" allowfullscreen></iframe>
				</div>
				</div>
			</div>
		</div>
	</div>
  <footer class="bottom-footer">
		<div class="container">
      		<div class="row">
            <div class="col-md-4 col-xs-12">
              <img width="190" src="https://getelevar.com/wp-content/themes/elevar/img/elevar-logo-buxton-rev.svg" alt="" class="img-responsive">
              <p>Elevar automates data collection<br />
and server-side tracking for <br />
D2C Shopify brands</p>
              <ul class="nolist social clearfix">
                <li><a href="https://facebook.com/getelevar" target="_blank"><i class="fa fa-facebook-official"></i></a></li>                <li><a href="https://twitter.com/getelevar" target="_blank"><i class="fa fa-twitter"></i></a></li>                <li><a href="https://www.linkedin.com/company/elevar---intelligent-ecommerce-insights" target="_blank"><i class="fa fa-linkedin"></i></a></li>                <li><a href="https://www.youtube.com/channel/UCsmm8h3Mu__aqjzN1wM0Mnw" target="_blank"><i class="fa fa-youtube"></i></a></li>              </ul>
				<a style="margin-top: 24px;display: block;margin-bottom: 24px;" href=" https://drata.com/product " target="_blank"><img src="https://cdn.drata.com/badge/soc2-light.png" height="90"></a>
            
            </div>
      			<div class="col-md-2 col-xs-6 footer-col">
      				<h5>Product</h5>
      				<ul id="menu-features" class="nolist"><li id="menu-item-11986" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-11986"><a href="https://getelevar.com/session-enrichment/">Session Enrichment</a></li>
<li id="menu-item-11689" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-11689"><a href="https://getelevar.com/improve-facebook-performance/">Boost Meta by 20%</a></li>
<li id="menu-item-11785" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-11785"><a href="https://getelevar.com/ga4-training-setup/">GA4 for Shopify</a></li>
<li id="menu-item-10618" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-10618"><a href="https://getelevar.com/server-side-tracking/">Server-Side Tracking</a></li>
<li id="menu-item-10082" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-10082"><a href="https://getelevar.com/data-layer-gtm-shopify-1/">Data Layer for GTM</a></li>
<li id="menu-item-6937" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-6937"><a href="https://getelevar.com/marketing-tag-monitoring/">Conversion Monitoring</a></li>
<li id="menu-item-11687" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-11687"><a href="https://getelevar.com/all-integrations/">View All Integrations</a></li>
</ul>      			</div>
      			<div class="col-md-2 col-xs-6 footer-col">
      				<h5>Company</h5>
      				<ul id="menu-educate" class="nolist"><li id="menu-item-8580" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-8580"><a href="https://getelevar.com/about/">About</a></li>
<li id="menu-item-11753" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-11753"><a href="/events/">Events</a></li>
<li id="menu-item-9010" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9010"><a href="https://getelevar.com/partners/">Partner Program</a></li>
<li id="menu-item-5938" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-5938"><a href="https://getelevar.com/customers/">Case Studies</a></li>
<li id="menu-item-11602" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-11602"><a href="https://getelevar.com/video-demo/">Watch/Book Demo</a></li>
<li id="menu-item-11603" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-11603"><a href="https://getelevar.com/pricing-and-plans/">Pricing</a></li>
<li id="menu-item-8303" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-8303"><a target="_blank" href="https://www.buxtonco.com/careers">Careers</a></li>
<li id="menu-item-13952" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-13952"><a href="https://getelevar.com/refer-a-friend/">Refer a Friend</a></li>
</ul>      			</div>
      			<div class="col-md-2 col-xs-6 footer-col footer-col-three">
      				<h5>Support</h5>
      				<ul id="menu-company" class="nolist"><li id="menu-item-5503" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-5503"><a href="https://docs.getelevar.com/page/contact-support">Contact Support</a></li>
<li id="menu-item-4992" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-4992"><a href="https://docs.getelevar.com/docs">Help Docs</a></li>
<li id="menu-item-7277" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-7277"><a href="https://getelevar.com/academy/">Read Blog</a></li>
<li id="menu-item-10085" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-10085"><a href="https://getelevar.com/podcasts/conversion-tracking-playbook/">Our Podcast</a></li>
<li id="menu-item-12066" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-12066"><a target="_blank" href="https://docs.getelevar.com/docs/headless-overview">Headless Setup Docs</a></li>
<li id="menu-item-15275" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-15275"><a href="https://getelevar.com/elevar-summit/">Growth Summit 2025</a></li>
<li id="menu-item-12753" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-12753"><a href="https://docs.getelevar.com/docs/status-page-elevar-incident-tracking">Status Page</a></li>
<li id="menu-item-13801" class="ot-sdk-show-settings menu-item menu-item-type-custom menu-item-object-custom current-menu-item current_page_item menu-item-13801"><a href="/" aria-current="page">Cookie Settings</a></li>
</ul>      			</div>
            <div class="col-md-2 col-xs-6 footer-col">
              <h5>Shopify Tools</h5>
              <ul id="menu-tools" class="nolist"><li id="menu-item-4933" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-4933"><a href="https://apps.shopify.com/gtm-datalayer-by-elevar">Elevar App on Shopify</a></li>
<li id="menu-item-15589" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-15589"><a href="https://getelevar.com/free-consent-checker/">Free Consent Checker</a></li>
</ul>            </div>
      			
      		</div><!-- .row -->
      	</div><!-- .container -->
      	<div class="copyright clearBoth">
      		<div class="container">
      			<div class="row">
      				<div class="col-lg-3 col-md-5 col-sm-6 col-xs-12">
      					<p>&copy; 2025 All Right Reserved.</p>
      				</div>
      				<div class="col-lg-9 col-md-7 col-sm-6 col-xs-12 text-right">
      					<ul id="menu-footer-5" class="nolist"><li id="menu-item-8374" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-8374"><a href="#">Accessibility</a></li>
<li id="menu-item-7869" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-7869"><a href="https://getelevar.com/legal/gdpr/">GDPR</a></li>
<li id="menu-item-11159" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-11159"><a href="https://getelevar.com/legal/">Legal</a></li>
<li id="menu-item-4887" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-4887"><a href="https://getelevar.com/legal/privacy/">Privacy Policy</a></li>
<li id="menu-item-4886" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-4886"><a href="https://getelevar.com/legal/terms/">Terms</a></li>
<li id="menu-item-13475" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-13475"><a href="https://getelevar.com/your-privacy-choices/">Your Privacy Choices</a></li>
</ul>						<a id="acsb-custom-trigger" style="cursor: pointer;display: block;height: 0;width: 0; overflow: hidden;" data-acsb-custom-trigger="true" aria-describedby="a11y-external-message">Accessibility</a>
      				</div>
      			</div><!-- .row -->
      		</div><!-- .container -->
      	</div>
	</footer>
	</div><!-- #page -->
    	<link rel='stylesheet' id='animate-css-css' href='https://getelevar.com/wp-content/plugins/js_composer/assets/lib/bower/animate-css/animate.min.css?ver=5.2' type='text/css' media='all' />
<script type="text/javascript" src="https://getelevar.com/wp-includes/js/dist/vendor/wp-polyfill.min.js?ver=3.15.0" id="wp-polyfill-js"></script>
<script type="text/javascript" id="contact-form-7-js-extra">
/* <![CDATA[ */
var wpcf7 = {"api":{"root":"https:\/\/getelevar.com\/wp-json\/","namespace":"contact-form-7\/v1"}};
/* ]]> */
</script>
<script type="text/javascript" src="https://getelevar.com/wp-content/plugins/contact-form-7/includes/js/index.js?ver=5.5.6" id="contact-form-7-js"></script>
<script type="text/javascript" id="leadin-script-loader-js-js-extra">
/* <![CDATA[ */
var leadin_wordpress = {"userRole":"visitor","pageType":"home","leadinPluginVersion":"10.1.16"};
/* ]]> */
</script>
<script type="text/javascript" src="https://js.hs-scripts.com/4789123.js?integration=WordPress&amp;ver=10.1.16" id="leadin-script-loader-js-js"></script>
<script type="text/javascript" src="https://getelevar.com/wp-includes/js/hoverIntent.min.js?ver=1.10.2" id="hoverIntent-js"></script>
<script type="text/javascript" src="https://getelevar.com/wp-content/plugins/js_composer/assets/js/dist/js_composer_front.min.js?ver=5.2" id="wpb_composer_front_js-js"></script>
<script type="text/javascript" src="https://getelevar.com/wp-content/plugins/js_composer/assets/lib/waypoints/waypoints.min.js?ver=5.2" id="waypoints-js"></script>
<script>
$(document).ready(function(){
//   $("#menu-item-8374").click(function(e){
// 	  console.log('loaded');
// 	  e.preventDefault();
	  
// 	  setTimeout(loadACSB(e), 2000);
//   });
   $("#menu-item-8374").attr('data-acsb-custom-trigger', true);
});
// 	function loadACSB() {
//       $("#data-acsb-custom-trigger").trigger('click');
// 	}
</script>

<!-- This site is converting visitors into subscribers and customers with OptinMonster - https://optinmonster.com -->
<script>(function(d,u,ac){var s=d.createElement('script');s.type='text/javascript';s.src='https://a.omappapi.com/app/js/api.min.js';s.async=true;s.dataset.user=u;s.dataset.account=ac;d.getElementsByTagName('head')[0].appendChild(s);})(document,359656,380112);</script>
<!-- / OptinMonster -->
</body>
</html>