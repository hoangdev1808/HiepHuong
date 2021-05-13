const toggleMenuMobile = () => {
    $('.kv-toggle').on('click', function () {
        $(this).toggleClass('active');
        $('header').find('.kv-menu').toggleClass('active');
        $('header').toggleClass('active');
        $('body').toggleClass('disabled');
        $('#overlay').toggleClass('active');
        $('header').find('.kv-search').removeClass('active');
    });
    $('#overlay').on('click', function () {
        $(this).removeClass('active');
        $('body').removeClass('disabled')
        $('.kv-menu').removeClass('active');
        $('.kv-toggle').removeClass('active');
        $('header').removeClass('active');
        $('header').find('.kv-search').removeClass('active');
    })
}

function searchBox() {
    $('.btn-search').on('click', function () {
        $('header').find('.kv-search').toggleClass('active');
        $('.kv-toggle').removeClass('active');
        $('.kv-menu').removeClass('active');
        $('header').removeClass('active');
        $('#overlay').removeClass('active');
        $('body').removeClass('disabled')
    })
    $('main, footer').on('click', function () {
        $('header').find('.kv-search').removeClass('active');
    })
}

//Header when scroll
const activeHeaderWhenScroll = () => {
    window.addEventListener("scroll", function () {
        if (window.pageYOffset > 0 && $(window).width() >= 1024) {
            document.querySelector("header").classList.add("header-scoll");
            $('header').find('.logo').addClass('active');
            $('header').find('.logo-scroll').addClass('active');
        } else {
            document.querySelector("header").classList.remove("header-scoll");
            $('header').find('.logo').removeClass('active');
            $('header').find('.logo-scroll').removeClass('active')
        }
    });
}

function activeMobileMenu() {
    if ($(window).width() <= 1240) {
        $('.nav-item.dropdown').on('click', function (z) {
            z.stopPropagation();
            $(z.currentTarget).children('.dropdown-menu').slideToggle();
        });
    }
}

function moveNavitem() {
    if ($(window).width() <= 1024) {
        $('.icon > #desktop').appendTo('nav .nav-mobile');
    } else {
        $('.icon > #desktop').appendTo('.main-nav>.nav .icon');
    }
}

//Slide banner
function CrMainBanner() {
    var swiperhomebanner = new Swiper('.kv-banner__slide', {
        loop: true,
        speed: 4000,
        grabCursor: true,
        watchSlidesProgress: true,
        mousewheelControl: true,
        keyboardControl: true,
        effect: 'fade',
        autoplay: {
            delay: 8000,
            disableOnInteraction: false,
        },
        navigation: {
            nextEl: '.kv-banner__slide .swiper-button-next',
            prevEl: '.kv-banner__slide .swiper-button-prev',
        },
    });
    $(".single-swiper .swiper-container").each(function (index, element) {
        var $this = $(this);
        $this.addClass("instance-" + index);
        $this.parent().find(".swiper-button-prev").addClass("swiper-button-prev-" + index);
        $this.parent().find(".swiper-button-next").addClass("swiper-button-next-" + index);

        var swiper = new Swiper(".instance-" + index, {
            speed: 750,
            observer: true,
            observeParents: true,
            lazy: true,
            breakpointsInverse: true,
            spaceBetween: 30,
            slidesPerView: 3,
            loop: true,
            navigation: {
                nextEl: ".swiper-button-next-" + index,
                prevEl: ".swiper-button-prev-" + index
            },
            breakpoints: {
                1280: {
                    slidesPerView: 3,
                    spaceBetween: 20,
                },
                1024: {
                    slidesPerView: 3,
                    spaceBetween: 10,
                },
                767: {
                    slidesPerView: 2,
                    spaceBetween: 10,
                },
                575: {
                    slidesPerView: 2,
                    spaceBetween: 10,
                },
                400: {
                    slidesPerView: 2,
                    spaceBetween: 10,
                },
                375: {
                    slidesPerView: 2,
                    spaceBetween: 10,
                },
            },
        });
    });
    var galleryThumbs = new Swiper('.kv-slide .gallery-thumbs', {
        navigation: {
            nextEl: '.kv-slide .swiper-button-next',
            prevEl: '.kv-slide .swiper-button-prev',
        },
        spaceBetween: 10,
        slidesPerView: 6,
        loop: true,
        loopedSlides: 6,
        slideToClickedSlide: true,
        breakpoints: {
            1280: {
                slidesPerView: 6,
                spaceBetween: 20,
            },
            575: {
                slidesPerView: 4,
                spaceBetween: 10,
            },
        },
    });
    var galleryTop = new Swiper('.kv-slide .gallery-top', {
        spaceBetween: 30,
        loop: true,
        navigation: {
            nextEl: '.kv-slide .swiper-button-next',
            prevEl: '.kv-slide .swiper-button-prev',
        },
        thumbs: {
            swiper: galleryThumbs,
        },
    });
    galleryTop.params.control = galleryThumbs
    galleryThumbs.params.control = galleryTop
    var swiper = new Swiper('.kv-other .swiper-container', {
        navigation: {
            nextEl: '.kv-other .swiper-button-next',
            prevEl: '.kv-other .swiper-button-prev',
        },
        speed: 3000,
        // autoplay: true,
        spaceBetween: 30,
        slidesPerView: 4,
        loop: true,
        slideToClickedSlide: true,
        breakpoints: {
            1280: {
                slidesPerView: 4,
                spaceBetween: 20,
            },
            575: {
                slidesPerView: 1,
                spaceBetween: 10,
            },
        },
    });
    var galleryThumbs = new Swiper('.history-slide .gallery-thumbs', {
        navigation: {
            nextEl: '.history-slide .swiper-button-next',
            prevEl: '.history-slide .swiper-button-prev',
        },
        spaceBetween: 30,
        slidesPerView: 7,
        loop: true,
        loopedSlides: 7,
        slideToClickedSlide: true,
        breakpoints: {
            1280: {
                slidesPerView: 6,
                spaceBetween: 20,
            },
            1024: {
                slidesPerView: 5,
                spaceBetween: 10,
            },
            767: {
                slidesPerView: 4,
                spaceBetween: 10,
            },
            575: {
                slidesPerView: 4,
                spaceBetween: 10,
            },
            400: {
                slidesPerView: 3,
                spaceBetween: 10,
            },
        },
    });
    var galleryTop = new Swiper('.history-slide .gallery-top', {
        spaceBetween: 30,
        loop: true,
        navigation: {
            nextEl: '.thumbs .swiper-button-next',
            prevEl: '.thumbs .swiper-button-prev',
        },
        thumbs: {
            swiper: galleryThumbs,
        },
    });
    galleryTop.params.control = galleryThumbs
    galleryThumbs.params.control = galleryTop

    var galleryThumbs = new Swiper('.project-home .gallery-thumbs', {
        direction: 'vertical',
        spaceBetween: 3,
        slidesPerView: 5,
        loop: true,
        centeredSlides: true,
        loopedSlides: 5,
        slideToClickedSlide: true,
        breakpoints: {
            1280: {
                slidesPerView: 5,
                spaceBetween: 10,
            },
            1024: {
                slidesPerView: 5,
                spaceBetween: 10,
            },
            991: {
                slidesPerView: 4,
                spaceBetween: 10,
            },
            767: {
                slidesPerView: 5,
                spaceBetween: 10,
                direction: 'horizontal',
            },
            575: {
                direction: 'horizontal',
                slidesPerView: 3,
                spaceBetween: 10,
            },
        },
    });
    var galleryTop = new Swiper('.project-home .gallery-top', {
        spaceBetween: 30,
        loop: true,
        slideToClickedSlide: true,
        navigation: {
            nextEl: '.thumbs .swiper-button-next',
            prevEl: '.thumbs .swiper-button-prev',
        },
        thumbs: {
            swiper: galleryThumbs,
        },
    });
    galleryTop.params.control = galleryThumbs
    galleryThumbs.params.control = galleryTop
    var swiper = new Swiper('.news-slide .news-home', {
        slidesPerView: 3,
        spaceBetween: 30,
        loop: true,
        speed: 1000,
        grabCursor: true,
        observer: true,
        observeParents: true,
        // autoplay: {
        //     delay: 3500,
        //     disableOnInteraction: false,
        // },
        breakpoints: {
            1280: {
                slidesPerView: 3,
                spaceBetween: 20,
            },
            1024: {
                slidesPerView: 3,
                spaceBetween: 10,
            },
            767: {
                slidesPerView: 2,
                spaceBetween: 10,
            },
            575: {
                slidesPerView: 2,
                spaceBetween: 10,
            },
            400: {
                slidesPerView: 1,
                spaceBetween: 10,
            },
        },
        pagination: {
            el: '.swiper-pagination',
            type: 'bullets',
            clickable: true,
        },
    });
}
//Check banner
const checkLayoutBanner = () => {
    const pagesBanner = $('#page-banner');
    const widthHeader = $('header').outerWidth();
    const mainBanner = $('#home-banner');
    if ($(window).width() > 1240) {
        if (mainBanner.length >= 1) {
            $('main').css('margin-left', widthHeader);
            $('footer').css('padding-left', widthHeader);
            $('.kv-menu').css('margin-left', widthHeader);
        } else if (pagesBanner.length >= 1) {
            $('main').css('margin-left', widthHeader);
            $('footer').css('padding-left', widthHeader);
            $('.kv-menu').css('margin-left', widthHeader);
        } else {
            $('main').css('margin-left', widthHeader);
            $('footer').css('padding-left', widthHeader);
            $('.kv-menu').css('margin-left', widthHeader);
        }
    }
}

function MultiLevelAccordiion() {
    $('.label').click(function () {
        var label = $(this);
        var parent = label.parent('.has-children');
        var list = label.siblings('#list-child');
        if (parent.hasClass('is-open')) {
            list.slideUp('slow');
            parent.removeClass('is-open');
        } else {
            list.slideDown('slow');
            parent.addClass('is-open');
        }
    });
}

function searchbox() {
    $('#searchbox').on('click', function () {
        $('#search-box').toggleClass('active');
    })
}

function Accordiion() {
    if ($(window).width() <= 1199) {
        $('.acc__title').click(function (j) {
            var dropDown = $(this).closest('.acc').find('.acc__panel');
            $(this).closest('.acc').find('.acc__panel').not(dropDown).slideUp();
            if ($(this).hasClass('active')) {
                $(this).removeClass('active');
            } else {
                $(this).closest('.acc').find('.acc__title.active').removeClass('active');
                $(this).addClass('active');
            }
            dropDown.stop(false, true).slideToggle();
            j.preventDefault();
        });
    }
}

function Faqs() {
    $('.question-title').click(function (x) {
        var dropDown = $(this).closest('.question-card').find('.question-body');
        $(this).closest('.question-card').find('.question-body').not(dropDown).slideUp();
        if ($(this).hasClass('active')) {
            $(this).removeClass('active');
        } else {
            $(this).closest('.question-card').find('.question-title.active').removeClass('active');
            $(this).addClass('active');
        }
        dropDown.stop(false, true).slideToggle();
        x.preventDefault();
    });
}

function tabs() {
    $('.tabs > li').on('click', function () {
        var $panel = $(this).closest('.home-2');
        $panel.find('li.active').removeClass('active');
        $(this).addClass('active');
        var panelToShow = $(this).attr('rel');
        $panel.find('.panel.active').fadeOut(300, showNextPanel);

        function showNextPanel() {
            $(this).removeClass('active');
            $('#' + panelToShow).fadeIn(300, function () {
                $(this).addClass('active').fadeIn(300);
            });
        };
    });
}

function coutingNumber() {
    $('.counter').each(function () {
        var $this = $(this),
            countTo = $this.attr('data-count');
        $({
            countNum: $this.text()
        }).animate({
            countNum: countTo
        }, {
            duration: 500,
            easing: 'linear',
            step: function () {
                $this.text(Math.floor(this.countNum));
            },
            complete: function () {
                $this.text(this.countNum);
            }

        });
    });
}

function changePlaceholder() {
    $('.wrap-form .frm-captcha .frm-captcha-input input ').attr('placeholder', 'Nhập mã captcha');
    if ($('.wrap-form .frm-captcha').length >= 1) {
        $('.form-contact .wrap-form .frm-btnwrap').appendTo('.wrap-form .frm-captcha')
    }
    $('.footer-subscribed .wrap-form .frm-btnwrap input').attr('value', '')
}

function Tool() {
    $('#block__tool').find('.icon-tool').on('click', function (n) {
        $('#block__tool').toggleClass('active');
    })
}

function showBackToTop() {
    var heughtTop = ($('header').outerHeight()) + ($('#home-banner').outerHeight())
    var heightPageTop = ($('header').outerHeight()) + ($('#page-banner').outerHeight())
    $(window).scroll(function () {
        if (($(this).scrollTop() > heughtTop) || ($(this).scrollTop() > heightPageTop)) {
            $("#back-to-top").addClass("active");
        } else {
            $("#back-to-top").removeClass("active");
        }
    });

    $("#back-to-top").on("click", function (e) {
        e.preventDefault();
        $("html,body").animate({
            scrollTop: 0
        });
    });
}

function Showmap() {
    $('.kv-list ul li').click(function () {
        $(this).addClass('active');
        var datahref = $(this).attr('data-href');
        $('.map').find('iframe').attr('src', function () {
            return datahref;
        })
        $('.kv-list ul li').not(this).removeClass('active')
    });
}

function category() {
    if ($(window).width() < 992 && '.news-nav'.length >= 1) {
        $('.news-nav .box-category').on('click', function (x) {
            x.stopPropagation();
            $(x.currentTarget).siblings('ul').slideToggle();
            $('.news-nav .box-category .material-icons').toggleClass('active')
        });
    }
    if ($(window).width() < 600 && '.project-filter'.length >= 1) {
        $('.project-filter .filter-mobile').on('click', function (a) {
            a.stopPropagation();
            $(a.currentTarget).siblings('.filter-select').slideToggle('slow');
            $(this).find('.material-icons').toggleClass('active')
        });
    }
    if ($(window).width() < 992 && '.categroly'.length >= 1) {
        $('.categroly .box-category').on('click', function (b) {
            b.stopPropagation();
            $(b.currentTarget).siblings('ul').slideToggle('slow');
            $(this).find('.material-icons').toggleClass('active');
        });
        window.addEventListener("scroll", function () {
            $('.about-nav .categroly ul').css('display', 'none');
            $('.about-nav .categroly').find('.material-icons').removeClass('active');
        })
    }

}

function phantrang() {
    $('.modulepager').find('.pagination').find('li>a.NextPage, li>a.LastPage, li>a.BackPage, li>a.FirstPage').parent().hide()
}

function crollToDiv() {
    $('.about-nav .categroly ul li .nav-link').on('click', function (event) {
        $(this).parents('li').addClass('active');
        if (this.hash !== "") {
            event.preventDefault();
            var hash = this.hash;
            $('html, body').animate({
                scrollTop: $(hash).offset().top - 100
            }, 500, function () {
                window.location.hash = hash;
            });
        }
        $('.about-nav .categroly ul li .nav-link').not(this).parent('li').removeClass('active');
        window.addEventListener("scroll", function () {
            var bannerheight = $('#page-banner').outerHeight();
            if (window.pageYOffset > bannerheight) {
                document.querySelector(".about-nav").classList.add("scolled");
            } else {
                document.querySelector(".about-nav").classList.remove("scolled");
            }
        })
    });
}

function windownScroll() {
    if ($('.about-nav').length >= 1) {
        window.addEventListener("scroll", function () {
            var bannerheight = $('#page-banner').outerHeight();
            var widthHeader = $('header').outerWidth();
            if (window.pageYOffset > bannerheight) {
                document.querySelector(".about-nav").classList.add("scolled");
            } else {
                document.querySelector(".about-nav").classList.remove("scolled");
            }
        })
    }
}

function readMore() {
    $('.attribute .btn-readmore').on('click',function () {
        $('.attribute .desc').toggleClass('active');
    });
}
document.addEventListener('DOMContentLoaded', () => {
    AOS.init({
        once: true,
        mobile: false,
        duration: 2500,
        offset: 0,
        delay: 150
    });
    AOS.refresh();
    toggleMenuMobile();
    activeHeaderWhenScroll();
    moveNavitem();
    CrMainBanner();
    checkLayoutBanner();
    // MultiLevelAccordiion();
    searchbox();
    Accordiion();
    Faqs();
    activeMobileMenu();
    tabs();
    coutingNumber();
    changePlaceholder();
    Tool();
    showBackToTop();
    Showmap();
    category();
    phantrang();
    crollToDiv();
    windownScroll();
    searchBox();
    readMore();
});