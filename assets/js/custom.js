


// stop carousel slider

$('.owl-carousel').owlCarousel({
    loop: false,
    margin: 10,
    nav: false,
    margin: 0,
    autoplay: true,
    autoplayTimeout: 1000,
    responsive: {
        1920: {
            items: 4
        },
        1500: {
            items: 4
        },
        1366: {
            items: 4
        },
        1199: {
            items: 4
        },
        1024: {
            items: 4
        },
        991: {
            items: 4
        },
        768: {
            items: 4,
            nav: false
        },
        640: {
            items: 4,
            nav: false
        },
        575: {
            items: 4,
            nav: false
        },
        480: {
            items: 4,
            nav: false
        },
        428: {
            items: 4,
            nav: false
        },
        425: {
            items: 4,
            nav: false
        },
        414: {
            items: 4,
            nav: false
        },
        412: {
            items: 4,
            nav: false
        },
        390: {
            items: 4,
            nav: false
        },
        375: {
            items: 4,
            nav: false
        },
        360: {
            items: 4,
            nav: false
        },
        320: {
            items: 4,
            nav: false
        },

        1000: {
            items: 5
        }
    }
});
$('.carousel').carousel({
    interval: false,
  });
new Circlebar({
    element: "#circle-3",
    startValue: 0,
    maxValue: 85,
    size: "220px",
    fontSize: "50px",
    type: "progress",
});

new Circlebar({
    element: "#circle-3a",
    startValue: 0,
    maxValue: 100,
    size: "220px",
    fontSize: "50px",
    type: "progress"
});
new Circlebar({
    element: "#circle-3b",
    startValue: 0,
    maxValue: 86,
    size: "220px",
    fontSize: "50px",
    type: "progress"
});

