package scene {
import Box2D.Collision.b2AABB;
import Box2D.Common.Math.b2Vec2;
import Box2D.Dynamics.b2World;

/**
 * @author default
 */
public class SceneController {

private const WIDTH:uint = 600;
private const HEIGHT:uint = 600;

private var sceneBoundingBox:b2AABB;
private var world:b2World;

public function SceneController() {
  createSceneBoundingBox();
  createWorld();
}

private function createSceneBoundingBox():void{
  sceneBoundingBox = new b2AABB();
  sceneBoundingBox.lowerBound.Set(-WIDTH, -HEIGHT);
  sceneBoundingBox.upperBound.Set(2 * WIDTH, 2 * HEIGHT);
}

private function createWorld():void{
	var gravity:b2Vec2 = new b2Vec2(0.0, 300.0);
	var doSleep:Boolean = true;
	world = new b2World(gravity, doSleep);
}
}
}
