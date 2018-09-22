<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

<!DOCTYPE html>
<html>
<head>
    <!-- IMPORTANT METAS -->
    <meta charset="UTF-8" />
    <!--[if IE]><meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"><![endif]-->
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1" />

    <!-- DYNAMIC METAS -->
    <?php
        if(!empty($_SERVER['QUERY_STRING'])) {
            $current_url_full = current_url().'?'.$_SERVER['QUERY_STRING'];
        } else {
            $current_url_full = current_url();
        }

        if($this->input->get('lang') && $this->input->get('lang') == 'ge' || !$this->input->get('lang')) {
            $canonical_url = current_url();
        } else {
            $canonical_url = current_url().'?'.$_SERVER['QUERY_STRING'];
        }
        
        if(isset($data)) {
            $title = 'career.ciu.edu.ge - '.$data['title_'.LANG];
            if(isset($data['descr_'.LANG])) {
                $descr = $data['descr_'.LANG];
            } else {
                $descr = '';
            }
            if(isset($data['image'])) {
                $image = base_url().$data['image'];
            } else {
                $image = base_url().'public/assets/images/logo.png';
            }
        } else {
            $title = 'career.ciu.edu.ge';
            $descr = '';
            $image = base_url().'public/assets/images/logo.png';
        }
    ?>
    <title><?=$title?></title>
    <meta name="description" content="<?=$descr?>" />

    <link rel="canonical" href="<?=$canonical_url; ?>" />

    <meta property="og:title" content="<?=$title?>" />
    <meta property="og:description" content="<?=$descr?>" />
    <meta property="og:image" content="<?=$image?>" />

    <meta property="og:url" content="<?=$current_url_full; ?>" />
    <meta property="og:locale" content="<?=LANG;?>">
    <meta property="og:site_name" content="career.ciu.edu.ge" />
    <meta property="og:type" content="website" />
    <meta property="fb:app_id" content="534718170285249"/>

    <!-- STATIC METAS -->
    <meta name="robots" content="index, follow" />
    <meta name="revisit-after" content="1 days" />
    <meta name="creator" content="Indygo" />

    <!-- FAVICON -->
    <link rel="icon" href="/public/assets/images/favicon.ico" type="image/x-icon" />
    <link rel="shortcut icon" href="/public/assets/images/favicon.ico" type="image/x-icon"/>

    <!-- FONT AWESOME -->
    <link rel="stylesheet" href="/public/assets/bower_components/font-awesome/css/font-awesome.min.css">
    <!-- CUSTOM FONTS -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,900" rel="stylesheet">
    <!-- UIKIT CSS -->
    <link rel="stylesheet" href="/public/assets/bower_components/uikit/css/uikit.min.css">
    <link rel="stylesheet" href="/public/assets/bower_components/uikit/css/components/slideshow.min.css">
    <link rel="stylesheet" href="/public/assets/bower_components/uikit/css/components/slider.min.css">
    <link rel="stylesheet" href="/public/assets/bower_components/uikit/css/components/slidenav.min.css">
    <link rel="stylesheet" href="/public/assets/bower_components/uikit/css/components/dotnav.min.css">
    <link rel="stylesheet" href="/public/assets/bower_components/uikit/css/components/tooltip.min.css">
    <link rel="stylesheet" href="/public/assets/bower_components/uikit/css/components/progress.min.css">
    <link rel="stylesheet" href="/public/assets/bower_components/uikit/css/components/form-select.min.css">
    <link rel="stylesheet" href="/public/assets/bower_components/uikit/css/components/datepicker.min.css">
    <!-- SELECT2 CSS -->
    <link rel="stylesheet" href="/public/assets/bower_components/select2/dist/css/select2.min.css">
    <!-- SLICK CSS -->
    <link rel="stylesheet" href="/public/assets/bower_components/slick-carousel/slick/slick.css"/>
    <!-- CLNDR CSS -->
    <link rel="stylesheet" href="/public/assets/css/clndr.css">
    <!--  CUSTOM CSS -->
    <link rel="stylesheet" href="/public/assets/css/style.css?v=2">

    <?php
    if(LANG != 'ge') {
        echo "<link rel='stylesheet' href='/public/assets/css/en.css?v=<?=RAND()?>'>";
    }
    ?>

    <script>
    var config = {
        base_url: '<?=base_url()?>',
        language: '<?=LANG?>'
    };
    </script>

    <script src="https://cdn.onesignal.com/sdks/OneSignalSDK.js" async='async'></script>
    <script>
    var config = {
        base_url: '<?=base_url()?>',
        language: '<?=LANG?>'
    };

    var OneSignal = window.OneSignal || [];
    OneSignal.push(["init", {
        appId: "7ab1e012-32ca-42fa-a296-28c7c35ece97",
        autoRegister: false, /* Set to true to automatically prompt visitors */
        subdomainName: 'career_ciu.onesignal.com',
        /*
        subdomainName: Use the value you entered in step 1.4: http://imgur.com/a/f6hqN
        */
        httpPermissionRequest: {
            enable: true
        },
        notifyButton: {
            enable: true /* Set to false to hide */
        },
        notifyButton: {
            enable: true, /* Required to use the notify button */
            size: 'medium', /* One of 'small', 'medium', or 'large' */
            theme: 'default', /* One of 'default' (red-white) or 'inverse" (white-red) */
            position: 'bottom-left', /* Either 'bottom-left' or 'bottom-right' */
            showCredit: false, /* Hide the OneSignal logo */
            <?php if(LANG == 'ge'): ?>
            text: {
                'tip.state.unsubscribed': 'გამოიწერეთ ახალი ამბები ბრაუზერში',
                'tip.state.subscribed': "თქვენ გამოწერილი გაქვთ ახალი ამბები",
                'tip.state.blocked': "თქვენ გააუქმეთ ახალი ამბები",
                'message.prenotify': 'გამოწერა',
                'message.action.subscribed': "გმადლობთ გამოწერისთვის!",
                'message.action.resubscribed': "თქვენ გამოიწერეთ ახალი ამბები",
                'message.action.unsubscribed': "თქვენ აღარ მიიღებთ შეტყობინებებს",
                'dialog.main.title': 'სიახლეების გამოწერა',
                'dialog.main.button.subscribe': 'გამოწერა',
                'dialog.main.button.unsubscribe': 'გაუქმება',
                'dialog.blocked.title': 'შეტყობინებების ჩართვა',
                'dialog.blocked.message': "შეტყობინებების ჩასართავად მიყევით ინსტრუქციებს:"
            }
            <?php endif; ?>
        },
        <?php if(LANG == 'ge'): ?>
        welcomeNotification: {
            "title": "<?=$title?>",
            "message": "გმადლობთ გამოწერისთვის!",
        },
        httpPermissionRequest: {
            modalTitle: 'გმადლობთ გამოწერისთვის',
            modalMessage: "თქვენ გამოწერილი გაქვთ ახალი ამბები.",
            modalButtonText: 'დახურვა'
        },
        promptOptions: {
            /* These prompt options values configure both the HTTP prompt and the HTTP popup. */
            /* actionMessage limited to 90 characters */
            actionMessage: "გსურთ მიიღოთ შეტყობინებები ჩვენი სიახლეების შესახებ?",
            /* acceptButtonText limited to 15 characters */
            acceptButtonText: "დიახ",
            /* cancelButtonText limited to 15 characters */
            cancelButtonText: "არა"
        }
        <?php endif; ?>
    }]);
    </script>
    <style>
    #onesignal-bell-container.onesignal-reset .onesignal-bell-launcher.onesignal-bell-launcher-bottom-left {
        bottom: 12px !important;
        left: 15px !important;
    }
    #onesignal-bell-container.onesignal-reset .onesignal-bell-launcher.onesignal-bell-launcher-sm {
        bottom: 19px !important;
    }
    </style>
</head>
<body class="<?=$this->uri->segment(1)?>">
    <div id="fb-root"></div>
    <script>(function(d, s, id) {
      var js, fjs = d.getElementsByTagName(s)[0];
      if (d.getElementById(id)) return;
      js = d.createElement(s); js.id = id;
      js.src = 'https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v3.1&appId=534718170285249&autoLogAppEvents=1';
      fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>

    <!--[if lt IE 10]>
    <p class="alert alert-danger">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->

    <!-- <div class="loader">
        <img src="/public/assets/images/ciu-logo.png" alt="ciu.edu.ge loader">
    </div> -->

    <!-- HEADER -->
    <div class="header-wrap" id="header-wrap">
        <header class="header" id="header">
            <div class="wrap uk-grid">
                <div class="uk-width-large-4-10 uk-width-medium-2-10">
                    <div class="mobile-menu-box">
                        <div class="header-logo-box">
                            <div class="menu-icon uk-visible-small" id="mobile-menu-toggle">
                                <i class="uk-icon-bars"></i>
                                <i class="uk-icon-times custom-hide"></i>
                            </div>

                            <a href="<?=base_url()?>">
                                <img src="/public/assets/images/logo.png" alt="<?=$translate['ciu_name']?>" id="main-logo" class="header-logo">
                                <h2 class="logo-box-title mobile custom-hide"><?=$translate['ciu_name_mobile']?></h2>
                            </a>

                            <h1 class="logo-box-title"><?=$translate['ciu_name']?></h1>
                            <div class="menu-icon uk-visible-small" id="mobile-search-btn">
                                <i class="uk-icon-search"></i>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="uk-width-large-6-10 uk-width-medium-8-10">
                    <div class="header-tools-wrap">
                        <?php if($google_forms_link): ?>
                        <a href="<?=$google_forms_link['link_'.LANG]?>" target="<?=$google_forms_link['target_'.LANG]?>" class="header-conference-link"><?=$google_forms_link['title_'.LANG]?></a>
                        <?php endif; ?>
                        <a href="/contact" class="header-text-link"><?=$translate['contact']?></a>
                        <button type="button" class="header-color-change" id="header-color-change">
                            <img src="/public/assets/images/b_w.png" alt="black and white toggler">
                        </button>
                        <button type="button" class="header-font-change" id="header-font-change">
                            <img src="/public/assets/images/aa.png" alt="font size toggler">
                        </button>
                        <div class="header-lang-box">
                            <button type="button">
                                <?php
                                if(LANG == 'ru') { echo "РУС"; } else if(LANG == 'en') { echo "ENG"; } else { echo "GEO";  } ?>
                                <i class="uk-icon-caret-down"></i>
                            </button>
                            <div class="header-lang-box-dropdown">
                                <?php if(LANG == 'ge') { ?>
                                <a href="<?=current_url()?>?lang=en">ENG</a>
                                <?php } else if(LANG == 'en') { ?>
                                <a href="<?=current_url()?>?lang=ge">GEO</a>
                                <?php } ?>
                            </div>
                        </div>
                        
                        <?php foreach($socials as $row): ?>
                        <a href="<?=$row['link']?>" target="<?=$row['target']?>" class="header-fb-link">
                            <i class="uk-icon-<?=str_replace('fa-','',$row['icon']);?>"></i>
                        </a>
                        <?php endforeach; ?>
                        
                        <div class="header-search-box" id="header-search-box">
                            <button type="button" class="header-search-btn" id="header-search-btn">
                                <i class="uk-icon-search"></i>
                                <i class="uk-icon-times custom-hide"></i>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="header-search-field-wrap">
                <input type="text" class="header-search-field centerV" placeholder="<?=$translate['search_placeholder']?>...">
                <button type="button" class="header-search-btn uk-visible-small" id="header-search-btn-close">
                    <i class="uk-icon-times"></i>
                </button>
                <div class="header-search-result-box" id="header-search-result-box">
                    <div class="header-search-result-cat" id="header-search-news-results">
                        <div class="header-search-result-cat-head">
                            <h3><?=$translate['news']?><span id="header-search-news-results-count">15</span></h3>
                            <a href="#" id="header-search-result-news-all"><?=$translate['all']?></a>
                        </div>
                        <ul class="header-search-result-list"></ul>
                    </div>
                    <div class="header-search-result-cat" id="header-search-pub-results">
                        <div class="header-search-result-cat-head">
                            <h3><?=$translate['publications']?><span id="header-search-pub-results-count">5</span></h3>
                            <a href="#" id="header-search-result-pub-all"><?=$translate['all']?></a>
                        </div>
                        <ul class="header-search-result-list"></ul>
                    </div>
                </div>
            </div>
        </header>
    </div>
    <!-- menu -->
    <div class="menu-wrap" id="menu-wrap">
        <div class="mobile-tools-box header-tools-wrap">
            <a href="/contact" class="header-text-link mobile"><?=$translate['contact']?></a>
	        <div class="header-lang-box mobile">
	            <button type="button">
	                <?php
	                if(LANG == 'ru') { echo "РУС"; } else if(LANG == 'en') { echo "ENG"; } else { echo "GEO";  } ?>
	                <i class="uk-icon-caret-down"></i>
	            </button>
	            <div class="header-lang-box-dropdown">
	                <?php if(LANG == 'ge') { ?>
                    <a href="<?=current_url()?>?lang=en">ENG</a>
                    <?php } else if(LANG == 'en') { ?>
                    <a href="<?=current_url()?>?lang=ge">GEO</a>
                    <?php } ?>
	            </div>
	        </div>
    	</div>
        <nav class="menu wrap">
            <ul class="menu-list">
                <?php foreach ($menu as $key => $value):
                    if($menu[$key]['parent'] == 0) {
                        if($menu[$key]['type_'.LANG] == 0) {
                            $menu_link = $menu[$key]['link_'.LANG].'?lang='.LANG;
                        } else {
                            $menu_link = '/page/index/'.$menu[$key]['slug_'.LANG].'?lang='.LANG;
                        }
                ?>
                <li class="menu-item">
                    <a href="<?=$menu_link?>" class="menu-item-link fontchange <?php if($menu[$key]['submenu']) { echo 'hassub'; } ?>">
                        <?=$menu[$key]['title_'.LANG]?>
                        <i class="uk-icon-caret-down"></i>
                    </a>
                    <?php if($menu[$key]['submenu']) { ?>
                    <ul class="menu-sub-list">
                        <?php foreach ($menu[$key]['submenu'] as $submenu):
                            if($submenu['type_'.LANG] == 0) {
                                $menu_sub_link = $submenu['link_'.LANG].'?lang='.LANG;
                            } else {
                                $menu_sub_link = '/page/index/'.$submenu['slug_'.LANG].'?lang='.LANG;
                            }
                        ?>
                        <li class="menu-item">
                            <a href="<?=$menu_sub_link?>" target="<?=$submenu['target_'.LANG]?>" class="menu-item-link fontchange"><?=$submenu['title_'.LANG]?></a>
                        </li>
                        <?php endforeach; ?>
                    </ul>
                    <?php } ?>
                </li>
                <?php } endforeach; ?>
            </ul>
        </nav>
    </div>
    <!-- menu end -->

    <!-- conference mobile link -->
    <?php if($google_forms_link): ?>
    <div class="mobile-conference-link-wrap uk-visible-small">
        <a href="<?=$google_forms_link['link_'.LANG]?>" target="<?=$google_forms_link['target_'.LANG]?>" class="header-conference-link"><?=$google_forms_link['title_'.LANG]?></a>
    </div>
    <?php endif; ?>
    <!-- conference mobile link end -->

    <!-- mobile search -->
    <div class="header-search-m custom-hide uk-visible-small" id="header-search-m">
        <input type="text" class="header-search-field" placeholder="<?=$translate['search_placeholder']?>...">
        <i class="uk-icon-times search-close-m" id="search-close-m"></i>
        <div class="header-search-result-box" id="header-search-result-box-m">
            <div class="header-search-result-cat" id="header-search-news-results-m">
                <div class="header-search-result-cat-head">
                    <h3><?=$translate['news']?><span id="header-search-news-results-count-m">15</span></h3>
                    <a href="#" id="header-search-result-news-all-m"><?=$translate['all']?></a>
                </div>
                <ul class="header-search-result-list"></ul>
            </div>
            <div class="header-search-result-cat" id="header-search-pub-results-m">
                <div class="header-search-result-cat-head">
                    <h3><?=$translate['publications']?><span id="header-search-pub-results-count-m">5</span></h3>
                    <a href="#" id="header-search-result-pub-all-m"><?=$translate['all']?></a>
                </div>
                <ul class="header-search-result-list"></ul>
            </div>
        </div>
    </div>
    <!-- mobile search end -->

    <!-- HEADER END -->

    <!-- FIXED QUIZ -->
    <?php $this->load->view('front/inc/quiz.php'); ?>
    <!-- FIXED QUIZ END -->

    <!-- SUBSCRIBE FORM -->
    <?php $this->load->view('front/inc/subscribe.php'); ?>
    <!-- SUBSCRIBE FORM END -->