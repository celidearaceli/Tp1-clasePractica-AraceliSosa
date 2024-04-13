Vector vectorPersonaje;
PVector posicionTesoro;
Vector vectorPersonajeTesoro;

public void setup(){
  size(400,400);
  vectorPersonaje = new Vector(new PVector(0,0), new PVector(30,0));
  posicionTesoro = new PVector (width/2, height/2);
  vectorPersonajeTesoro = new Vector();
}
public void draw(){
  background(255);
  dibujarTesoro();
  vectorPersonaje.setOrigen(new PVector(mouseX,mouseY));
  vectorPersonaje.display();
  dibujarVectorPersonajeTesoro();
  escribirMensaje();
}
public void dibujarVectorPersonajeTesoro(){
  vectorPersonajeTesoro.setOrigen(vectorPersonaje.getOrigen());
  vectorPersonajeTesoro.setDestino(PVector.sub(posicionTesoro,vectorPersonaje.getOrigen()).normalize().mult(30));
  vectorPersonajeTesoro.display();
}

public void dibujarTesoro(){
  strokeWeight(10);
  point(posicionTesoro.x,posicionTesoro.y);
}

public void escribirMensaje(){
  fill(0); 
  text("Coordenadas del Personaje: " + vectorPersonaje.getOrigen().x + ", " + vectorPersonaje.getOrigen().y, 10, 20);


}
