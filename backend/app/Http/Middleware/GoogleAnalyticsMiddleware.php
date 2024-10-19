<?php

namespace App\Http\Middleware;

use Closure;
use GuzzleHttp\Client;
use Illuminate\Support\Facades\Log;

class GoogleAnalyticsMiddleware
{
    protected $client;
    protected $trackingId;

    public function __construct()
    {
        $this->client = new Client();
        $this->trackingId = env('GA_TRACKING_ID'); // Desde tu .env
    }

    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        $response = $next($request);

        $url = 'https://www.google-analytics.com/mp/collect';
        $data = [
            'client_id' => uniqid(), // O usa un valor único
            'events' => [
                [
                    'name' => $request->method() . '_' . $request->path(),
                    'params' => [
                        'path' => $request->path(),
                        'method' => $request->method(),
                        'status_code' => $response->status(),
                    ],
                ],
            ],
            'measurement_id' => $this->trackingId,
            'api_secret' => env('GA_API_SECRET'), // Necesario para GA4 Measurement Protocol
        ];

        // Enviar evento a Google Analytics
        try {
            $this->client->post($url, [
                'json' => $data,
            ]);
        } catch (\Exception $e) {
            Log::error('Error sending event to Google Analytics: ' . $e->getMessage());
        }

        return $response;
    }
}
