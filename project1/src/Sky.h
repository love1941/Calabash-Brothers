#ifndef _SKY_H_
#define _SKY_H_

#include "cocos2d.h"
#include "Box2D\Box2D.h"
#include "GLES-Render.h"
#include "Terrain.h"
#include "Hero.h"
#include "AppMacros.h"

USING_NS_CC;

class Sky : public CCLayer
{
public:
	static CCScene* scene();
	CREATE_FUNC(Sky);
	virtual bool init();

private:
	CCSprite* _background;
	Terrain * _terrain;
	b2World * _world;
	Hero * _hero;
	bool _tapDown;
	GLESDebugDraw * _debugDraw;

	ccColor4F randomBrightColor();
	CCSprite* spriteWithColor(ccColor4F bgColor, float textureSize);
	CCSprite* stripedSpriteWithColor1(ccColor4F c1, ccColor4F c2, float textureSize, int nStripes);
	void genBackground();
	void setupWorld();
	void createTestBodyAtPostition(CCPoint position);

	virtual void update(float delta);
	virtual void onTouchesBegan(const std::vector<Touch*>& touches, Event *unused_event);
	virtual void onTouchesMoved(const std::vector<Touch*>& touches, Event *unused_event);
	virtual void onTouchesEnded(const std::vector<Touch*>& touches, Event *unused_event);
	void setupDebugDraw();
};
#endif