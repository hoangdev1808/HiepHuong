const toggleMenuMobile = () => {
    $('.kv-toggle').on('click', function () {
        $(this).toggleClass('active');
        $(this).siblings('.main-nav').toggleClass('active');
        $('header').toggleClass('active');
        $('body').toggleClass('disabled');
        $('#overlay').toggleClass('active');
    });
    $('#overlay').on('click', function () {
        $(this).removeClass('active');
        $('body').removeClass('disabled')
        $('.main-nav').removeClass('active');
        $('.kv-toggle').removeClass('active');
    })

};
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

function moveNavitem() {
    if ($(window).width() <= 1024) {
        $('.icon > #desktop').appendTo('nav .nav-mobile');
    } else {
        $('.icon > #desktop').appendTo('.main-nav>.nav .icon');
    }
}

//Slide banner
function CrMainBanner() {
    var swiperhomebanner = new Swiper('.Cr-banner__slide', {
        loop: true,
        speed: 1000,
        grabCursor: true,
        watchSlidesProgress: true,
        mousewheelControl: true,
        keyboardControl: true,
        effect: 'fade',
        autoplay: {
            delay: 3500,
            disableOnInteraction: false,
        },
        navigation: {
            nextEl: '.Cr-banner__slide .swiper-button-next',
            prevEl: '.Cr-banner__slide .swiper-button-prev',
        },
    });
    var swiper = new Swiper('.history-slide .swiper-container', {
        slidesPerView: 3,
        spaceBetween: 30,
        loop: true,
        speed: 1000,
        autoplay: {
            delay: 2500,
            disableOnInteraction: false,
        },
        navigation: {
            nextEl: '.history-slide .swiper-button-next',
            prevEl: '.history-slide .swiper-button-prev',
        },
        breakpoints: {
            1280: {
                slidesPerView: 3,
                spaceBetween: 20,
            },
            600: {
                slidesPerView: 2,
                spaceBetween: 20,
            },
            375: {
                slidesPerView: 2,
                spaceBetween: 20,
            }
        },
    });
    var swiper = new Swiper('.slide-block .top-slide', {
        slidesPerView: 4,
        spaceBetween: 30,
        loop: true,
        speed: 1000,
        observer: true,
        observeParents: true,
        // autoplay: {
        //     delay: 3000,
        //     disableOnInteraction: false,
        // },
        navigation: {
            nextEl: '#top .swiper-button-next',
            prevEl: '#top .swiper-button-prev',
        },
        breakpoints: {
            1280: {
                slidesPerView: 3,
                spaceBetween: 20,
            },
            600: {
                slidesPerView: 2,
                spaceBetween: 20,
            },
            375: {
                slidesPerView: 2,
                spaceBetween: 20,
            }
        },
    });
    var swiper = new Swiper('#bottom .bottom-slide', {
        slidesPerView: 4,
        spaceBetween: 30,
        loop: true,
        speed: 1000,
        observer: true,
        observeParents: true,
        // autoplay: {
        //     delay: 2500,
        //     disableOnInteraction: false,
        // },
        navigation: {
            nextEl: '#bottom .swiper-button-next',
            prevEl: '#bottom .swiper-button-prev',
        },
        breakpoints: {
            1280: {
                slidesPerView: 3,
                spaceBetween: 20,
            },
            600: {
                slidesPerView: 2,
                spaceBetween: 20,
            },
            375: {
                slidesPerView: 2,
                spaceBetween: 20,
            }
        },
    });
    var swiper = new Swiper('.slide-special .swiper-container', {
        slidesPerView: 4,
        spaceBetween: 30,
        speed: 1000,

        pagination: {
            el: '.slide-special .swiper-pagination',
            clickable: true,
        },
        breakpoints: {
            1280: {
                slidesPerView: 3,
                spaceBetween: 20,
            },
            768: {
                slidesPerView: 2,
                spaceBetween: 20,
            },
            600: {
                slidesPerView: 2,
                spaceBetween: 20,
            },
            575: {
                slidesPerView: 1,
                spaceBetween: 10,
            }
        },
    });
    var swiper = new Swiper('.slide-home-3 .swiper-container', {
        slidesPerView: 4,
        spaceBetween: 30,
        speed: 1000,
        loop: true,
        observer: true,
        observeParents: true,
        navigation: {
            nextEl: '.slide-home-3 .swiper-button-next',
            prevEl: '.slide-home-3 .swiper-button-prev',
            clickable: true,
        },
        breakpoints: {
            1280: {
                slidesPerView: 3,
                spaceBetween: 20,
            },
            768: {
                slidesPerView: 2,
                spaceBetween: 20,
            },
            600: {
                slidesPerView: 2,
                spaceBetween: 20,
            },
            575: {
                slidesPerView: 1,
                spaceBetween: 10,
            }
        },
    });
    var swiper = new Swiper('.slide-home .swiper-container', {
        slidesPerView: 4,
        spaceBetween: 30,
        speed: 1000,
        loop: true,
        observer: true,
        observeParents: true,
        navigation: {
            nextEl: '.slide-home .swiper-button-next',
            prevEl: '.slide-home .swiper-button-prev',
            clickable: true,
        },
        breakpoints: {
            1280: {
                slidesPerView: 3,
                spaceBetween: 20,
            },
            768: {
                slidesPerView: 2,
                spaceBetween: 20,
            },
            600: {
                slidesPerView: 2,
                spaceBetween: 20,
            },
            575: {
                slidesPerView: 1,
                spaceBetween: 10,
            }
        },
    });
    var swiper = new Swiper('.slide-home-5 .swiper-container', {
        slidesPerView: 1,
        spaceBetween: 30,
        speed: 1000,
        loop: true,
        navigation: {
            nextEl: '.slide-home-5 .swiper-button-next',
            prevEl: '.slide-home-5 .swiper-button-prev',
            clickable: true,
        },
    });
    var swiper = new Swiper('#top .swiper-container', {
        slidesPerView: 4,
        spaceBetween: 30,
        speed: 1000,
        loop: true,
        observer: true,
        observeParents: true,
        navigation: {
            nextEl: '#top .swiper-button-next',
            prevEl: '#top .swiper-button-prev',
            clickable: true,
        },
        breakpoints: {
            1280: {
                slidesPerView: 3,
                spaceBetween: 20,
            },
            768: {
                slidesPerView: 2,
                spaceBetween: 20,
            },
            600: {
                slidesPerView: 2,
                spaceBetween: 20,
            },
            575: {
                slidesPerView: 1,
                spaceBetween: 10,
            }
        },
    });
    var swiper = new Swiper('#bottom .swiper-container', {
        slidesPerView: 4,
        spaceBetween: 30,
        speed: 1000,
        loop: true,
        observer: true,
        observeParents: true,
        navigation: {
            nextEl: '#bottom .swiper-button-next',
            prevEl: '#bottom .swiper-button-prev',
            clickable: true,
        },
        breakpoints: {
            1280: {
                slidesPerView: 3,
                spaceBetween: 20,
            },
            768: {
                slidesPerView: 2,
                spaceBetween: 20,
            },
            600: {
                slidesPerView: 2,
                spaceBetween: 20,
            },
            575: {
                slidesPerView: 1,
                spaceBetween: 10,
            }
        },
    });
}
//Check banner
const checkLayoutBanner = () => {
    const pagesBanner = $('#page-banner');
    const widthHeader = $('header').outerWidth();
    const mainBanner = $('#home-banner');
    if (mainBanner.length >= 1) {
        $('main').css('padding-left', widthHeader)
    } else if (pagesBanner.length >= 1) {
        $('main').css('padding-left', widthHeader)
    } else {
        $('main').css('padding-left', widthHeader);
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

function activeMobileMenu() {
    if ($(window).width() <= 1024) {
        $('.nav-item.dropdown').on('click', function (e) {
            e.stopPropagation();
            $(e.currentTarget).children('.dropdown-menu').slideToggle();
        });
        $('.dropdown-item.dropdown').on('click', function (j) {
            j.stopPropagation();
            $(j.currentTarget).children('.sup-menu').slideToggle();
        });
    }
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
    $('.ld-5 .wrap-form .frm-btnwrap .frm-btn input').attr('value', 'Đăng ký');
    $('.ld-5 .content .material-icons').appendTo('.ld-5 .wrap-form .frm-btnwrap .frm-btn');
    $('#popupTV .wrap-form .frm-btnwrap .frm-btn input').attr('value', 'Đăng ký');
    $('#popupTV.modal .modal-body .material-icons').appendTo('#popupTV.modal .wrap-form .frm-btnwrap .frm-btn');
    $('#popupKB .wrap-form .frm-btnwrap .frm-btn input').attr('value', 'Đăng ký khám');
    $('#popupKB.modal .modal-body .material-icons').appendTo('#popupKB.modal .wrap-form .frm-btnwrap .frm-btn');
}

function Tool() {
    $('#block__tool').find('.icon-tool').on('click', function (n) {
        $('#block__tool').toggleClass('active');
    })
}

function rangeDate() {
    $('input[name="daterange"]').daterangepicker({
        opens: 'left'
    }, function (start, end, label) {
        var oneDay = 24 * 60 * 60 * 1000;
        var count = Math.round((end - start) / oneDay);
        $('#countDate').text(count);
    });
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

document.addEventListener('DOMContentLoaded', () => {
    toggleMenuMobile();
    activeHeaderWhenScroll();
    moveNavitem();
    CrMainBanner();
    checkLayoutBanner();
    MultiLevelAccordiion();
    searchbox();
    Accordiion();
    Faqs();
    activeMobileMenu();
    tabs();
    coutingNumber();
    changePlaceholder();
    Tool();
    rangeDate();
    showBackToTop();
});