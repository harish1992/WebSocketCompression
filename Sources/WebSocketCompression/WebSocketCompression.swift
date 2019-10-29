import NIO

public protocol WebSocketCompressionHandler {

    func inflatePayload(in buffer: ByteBuffer, allocator: ByteBufferAllocator) -> ByteBuffer

    func deflatePayload(in buffer: ByteBuffer, allocator: ByteBufferAllocator, dropFourTrailingOctets: Bool) -> ByteBuffer
}

extension WebSocketCompressionHandler {

    public func inflatePayload(in buffer: ByteBuffer, allocator: ByteBufferAllocator) -> ByteBuffer {
        return buffer
    }

    public func deflatePayload(in buffer: ByteBuffer, allocator: ByteBufferAllocator, dropFourTrailingOctets: Bool) -> ByteBuffer {
        return buffer
    }
}
