class NodeReaderError extends Error {
    constructor(app, ...params) {
        super(...params);
        if (Error.captureStackTrace) {
            Error.captureStackTrace(this, NodeReaderError);
        }

        this.name = 'NodeReaderError';
        this.app = app;
        this.date = new Date()
    }
}

try {
    throw new NodeReaderError('Employee service', 'Database connection lost');
} catch (e) {
    throw e;
}