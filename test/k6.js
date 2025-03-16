import { browser } from 'k6/browser';
import { check, sleep } from 'k6';

export const options = {
  scenarios: {
    // browser: {
    //   executor: 'constant-vus',
    //   // exec: 'browserTest',
    //   vus: 100,
    //   duration: '10s',
    //   options: {
    //     browser: {
    //       type: 'chromium',
    //     },
    //   },
    // },
    browser: {
      executor: 'ramping-vus',
      startVUs: 10,
      stages: [
        { duration: '10s', target: 25 },
        { duration: '20s', target: 50 },
        { duration: '30s', target: 100 },
      ],
      gracefulStop: '5s',
      options: {
        browser: {
          type: 'chromium',
        },
      },
    },
    news: {
      executor: 'constant-vus',
      exec: 'news',
      vus: 10,
      duration: '10s',
    },
  },
};

export default async function () {
  const page = await browser.newPage();

  try {
    // await page.goto('https://test.k6.io/');
    await page.goto('https://rallycronos.com/2-rally-clausura-acj-2024/tiempos');
    sleep(5);

    // await page.waitForSelector('table', { timeout: 10000  }); 
    
    await page.screenshot({ path: 'screenshots/screenshot.png' });
  } finally {
    await page.close();
  }
}

export function news() {
  const res = http.get('https://rallycronos.com/2-rally-clausura-acj-2024/tiempos');

  check(res, {
    'status is 200': (r) => r.status === 200,
  });
}