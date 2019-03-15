import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["See cocktails from all over the world", "Share your cocktails with the world", "Learn how to do Cocktails"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
