uniform float time;
varying vec2 vUv;

void main(){
  vUv = position.zy;
  vec3 p = position;
  float r = time * 0.1;
  p.y += sin(p.y * 100.0 + r * 0.5) * .15;
  vUv.x += cos(p.x * 5.0 + r * 0.5) * 0.25;
  gl_Position = projectionMatrix * modelViewMatrix * vec4(p, 1.0);
}
