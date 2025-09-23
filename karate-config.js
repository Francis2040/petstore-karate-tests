function fn() {
    var env = karate.env || 'dev';
    karate.log('karate.env system property was:', env);

    var config = {
        env: env,
        baseUrl: 'https://petstore.swagger.io/v2',
        timeout: 10000
    };

    karate.configure('connectTimeout', config.timeout);
    karate.configure('readTimeout', config.timeout);
    karate.configure('retry', { count: 3, interval: 1000 }); // Retry automático
    karate.configure('logPrettyRequest', true);
    karate.configure('logPrettyResponse', true);

    return config;
}