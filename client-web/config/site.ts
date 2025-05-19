export type SiteConfig = {
  name: string;
  description: string;
  keywords: string[];
  navItems: (user?: { id?: number }) => { label: string; href: string }[];
  links: Record<string, string>;
};

export const siteConfig: SiteConfig = {
  name: "Rally Cronos Perú",
  description: "Tiempos en Vivo de competencias de Rally del Perú. | Rallycronos, rallycronos.",
  keywords: [
    "rally",
    "rally en vivo",
    "tiempos en vivo",
    "rally Perú",
    "competencias automovilísticas",
    "cronometraje rally",
    "Rally Cronos Perú",
    "rallycronos",
  ],
  navItems: (user) => {
    const baseItems = [
      {
        label: "Inicio",
        href: "/",
      },
    ];

    const adminItems = user
      ? [
          {
            label: "Admin",
            href: "/admin",
          },
          {
            label: "Eventos",
            href: "/admin/eventos",
          },
        ]
      : [];

    return [...baseItems, ...adminItems];
  },
  links: {
    github: "https://github.com/nextui-org/nextui",
    twitter: "https://twitter.com/getnextui",
    docs: "https://nextui.org",
    discord: "https://discord.gg/9b6yyZKmH4",
    sponsor: "https://patreon.com/jrgarciadev",
  },
};
