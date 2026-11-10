function fn() {
  var env = karate.env; 
  karate.log('El entorno actual es:', env);
  
  if (!env) {
    env = 'dev';
  }
  
  var config = {
    baseUrl: 'https://serverest.dev'
  };

  karate.configure('connectTimeout', 5000);
  karate.configure('readTimeout', 5000);
  
  return config;
}