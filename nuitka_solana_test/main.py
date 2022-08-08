import asyncio
from asyncstdlib import enumerate
from solana.rpc.websocket_api import connect

async def main():
    async with connect("wss://api.devnet.solana.com") as websocket:
        await websocket.logs_subscribe()
        async for idx, msg in enumerate(websocket):
            print(f"{idx}: {msg}")

asyncio.run(main())
