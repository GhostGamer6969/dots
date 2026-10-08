(function () {
    const DEFAULT_SPEED = 2.00;
    const SPEED_STEP = 0.25;
    const SEEK_TIME = 10;

    function getVideo() {
        const videos = [...document.querySelectorAll("video")];

        // Prefer the currently playing video
        return videos.find(v => !v.paused && !v.ended) || videos[0];
    }

    function setSpeed(speed) {
        const video = getVideo();
        if (!video) return;

        video.playbackRate = Math.max(0.25, speed);
    }

    function changeSpeed(amount) {
        const video = getVideo();
        if (!video) return;

        video.playbackRate = Math.max(
            0.25,
            video.playbackRate + amount
        );
    }

    function seek(amount) {
        const video = getVideo();
        if (!video) return;

        video.currentTime += amount;
    }

    function setDefaultSpeed() {
        document.querySelectorAll("video").forEach(video => {
            video.playbackRate = DEFAULT_SPEED;
        });
    }

    // Set speed when videos appear
    setDefaultSpeed();

    new MutationObserver(setDefaultSpeed).observe(
        document.documentElement,
        {
            childList: true,
            subtree: true
        }
    );

    // Re-apply speed when video starts playing
    document.addEventListener("play", event => {
        if (event.target instanceof HTMLVideoElement) {
            event.target.playbackRate = DEFAULT_SPEED;
        }
    }, true);

    // Keyboard controls
    document.addEventListener("keydown", event => {
        // Don't interfere with typing
        if (
            event.target.tagName === "INPUT" ||
            event.target.tagName === "TEXTAREA" ||
            event.target.isContentEditable
        ) {
            return;
        }

        switch (event.key.toLowerCase()) {
            case "s":
                changeSpeed(-SPEED_STEP);
                event.preventDefault();
                break;

            case "d":
                changeSpeed(SPEED_STEP);
                event.preventDefault();
                break;

            case "r":
                setSpeed(1.0);
                event.preventDefault();
                break;

            case "x":
                seek(SEEK_TIME);
                event.preventDefault();
                break;

            case "z":
                seek(-SEEK_TIME);
                event.preventDefault();
                break;
        }
    });
})();
