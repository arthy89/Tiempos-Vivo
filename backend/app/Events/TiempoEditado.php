<?php

namespace App\Events;

use App\Models\Tiempo;
use Illuminate\Broadcasting\Channel;
use Illuminate\Broadcasting\InteractsWithSockets;
use Illuminate\Broadcasting\PresenceChannel;
use Illuminate\Broadcasting\PrivateChannel;
use Illuminate\Contracts\Broadcasting\ShouldBroadcast;
use Illuminate\Foundation\Events\Dispatchable;
use Illuminate\Queue\SerializesModels;

class TiempoEditado implements ShouldBroadcast
{
    use Dispatchable, InteractsWithSockets, SerializesModels;

    public $tiempo;

    /**
     * Create a new event instance.
     */
    public function __construct(Tiempo $tiempo)
    {
        $this->tiempo = $tiempo;
    }

    /**
     * Get the channels the event should broadcast on.
     *
     * @return array<int, \Illuminate\Broadcasting\Channel>
     */
    public function broadcastOn()
    {
        return new Channel('tiempos');
    }

    public function broadcastAs()
    {
        return 'TiempoEditado';  // Nombre del evento para la edición
    }
}