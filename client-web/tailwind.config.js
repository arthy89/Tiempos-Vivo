import { nextui } from "@nextui-org/theme";

/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./components/**/*.{js,ts,jsx,tsx,mdx}",
    "./app/**/*.{js,ts,jsx,tsx,mdx}",
    "./node_modules/@nextui-org/theme/dist/**/*.{js,ts,jsx,tsx}",
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ["var(--font-sans)"],
        mono: ["var(--font-mono)"],
      },
      fontSize: {
        tiny: ['10px', '14px'], // '10px' es el tamaño de fuente, '14px' es la altura de línea opcional
      },
      padding: {
        '5px': '5px',
        '2px': '2px',
      }
    },
  },
  darkMode: "class",
  plugins: [nextui()],
};
