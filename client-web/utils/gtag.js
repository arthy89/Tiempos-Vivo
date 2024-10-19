// utils/gtag.js
export const GA_TRACKING_ID = process.env.NEXT_PUBLIC_GA_ID;

// Registrar una página vista con el ID de Google Analytics
export const pageview = (url) => {
  window.gtag("config", GA_TRACKING_ID, {
    page_path: url,
  });
};

// Registrar un evento específico
export const event = ({ action, category, label, value }) => {
  window.gtag("event", action, {
    event_category: category,
    event_label: label,
    value: value,
  });
};
