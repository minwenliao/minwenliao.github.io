// Keep video downloads out of the initial page load. Native controls remain
// available if automatic playback is disabled or this script cannot run.
(() => {
    if (!('IntersectionObserver' in window) ||
        window.matchMedia('(prefers-reduced-motion: reduce)').matches) {
        return;
    }

    const observer = new IntersectionObserver(entries => {
        for (const entry of entries) {
            const video = entry.target;
            if (entry.isIntersecting) {
                video.play().then(() => {
                    video.controls = false;
                }).catch(() => {
                    video.controls = true;
                });
            } else {
                video.pause();
            }
        }
    }, { rootMargin: '150px 0px' });

    document.querySelectorAll('video[data-autoplay]').forEach(video => {
        observer.observe(video);
    });
})();
