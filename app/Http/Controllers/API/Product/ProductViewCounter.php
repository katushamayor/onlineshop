<?php

namespace App\Http\Controllers\API\Product;

use App\Models\Product;
use Illuminate\Http\Request;
use Ratchet\ConnectionInterface;

class ProductViewCounter implements \Ratchet\WebSocket\Stub\WsMessageComponentInterface
{

    private $connections = array();
    private $views = 0;
    /**
     * @inheritDoc
     */
    function onOpen(ConnectionInterface $conn)
    {
        $this->connections = $conn;
    }

    /**
     * @inheritDoc
     */
    function onClose(ConnectionInterface $conn)
    {
        $this->connections = array_filter($this->connections, function ($c) use ($conn) {
            return ($c != $conn);
        });
    }

    /**
     * @inheritDoc
     */
    function onError(ConnectionInterface $conn, \Exception $e)
    {
        $conn->close();
    }

    /**
     * @inheritDoc
     */
    function onMessage(ConnectionInterface $from, $msg)
    {
        if ($msg === 'product_view'){
            $this->views++;
            foreach ($this->connections as $conn){
                $conn->send($this->views);
            }
        }
    }

    /**
     * @inheritDoc
     */
    function getSubProtocols()
    {
        // TODO: Implement getSubProtocols() method.
    }
}
