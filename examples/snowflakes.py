from __future__ import division

import time
import random

import pygrafix
from pygrafix.window import key

WINDOW_HEIGHT = 400
WINDOW_WIDTH = 300

screen_center = tuple(x/2.0 for x in pygrafix.window.get_desktop_video_mode()[:2])

# open window and set up
windows = [pygrafix.window.Window(WINDOW_WIDTH, WINDOW_HEIGHT, title = "Snowflakes x3", fullscreen = False) for i in range(3)]
windows[0].position = (screen_center[0] - WINDOW_WIDTH/2 - WINDOW_WIDTH - 50, screen_center[1] - WINDOW_HEIGHT/2)
windows[1].position = (screen_center[0] - WINDOW_WIDTH/2, screen_center[1] - WINDOW_HEIGHT/2)
windows[2].position = (screen_center[0] - WINDOW_WIDTH/2 + WINDOW_WIDTH + 50, screen_center[1] - WINDOW_HEIGHT/2)


# load resources
snowflaketex = pygrafix.image.load("snowflake.png")

# snowflake object
class Snowflake(object):
    def __init__(self):
        self.sprite = pygrafix.sprite.Sprite(snowflaketex)

        # sprite init
        self.sprite.x = random.uniform(0, WINDOW_HEIGHT)
        self.sprite.y = random.uniform(0, WINDOW_WIDTH)
        self.sprite.scale = random.uniform(0.5, 2)
        self.sprite.rotation = random.uniform(0, 360)

        self.sprite.alpha = random.uniform(0.0, 1.0)

        self.sprite.anchor_x = self.sprite.texture.width/2
        self.sprite.anchor_y = self.sprite.texture.height/2

        # animation config
        self.dx = random.uniform(-200, 200)
        self.dy = random.uniform(0, 200)
        self.drotation = random.uniform(0, 80)

    def animate(self, dt):
        self.sprite.x += self.dx * dt
        self.sprite.y += self.dy * dt
        self.sprite.rotation += self.drotation * dt

        if (self.sprite.x < 0 and self.dx < 0) or (self.sprite.x > WINDOW_WIDTH and self.dx > 0):
            self.dx = -self.dx

        if self.sprite.y > WINDOW_HEIGHT + self.sprite.height:
            self.sprite.y = -self.sprite.height

        if (self.sprite.scale > 2 and self.dscale > 0) or (self.sprite.scale < 0.5 and self.dscale < 0):
            self.dscale = -self.dscale

# create snowflakes
snowflakes = {}
for i, window in enumerate(windows):
    snowflakes[i] = [Snowflake() for _ in range(100)]

# create spritebatches
spritebatches = {}
for i, window in enumerate(windows):
    spritebatches[i] = [snowflake.sprite for snowflake in snowflakes[i]]

def main():
    # time tracking and FPS
    now = time.clock()
    accum = 0.0


    while True:
        # time and fps
        dt = time.clock() - now
        now += dt
        accum += dt

        if accum > 1.0:
            accum = 0.0
            for id, window in enumerate(windows):
                if window.is_open():
                    window.title = "Window #%d - %d FPS" % (id, window.get_fps())

        # check if all windows are closed
        remaining = 0
        for window in windows:
            if window.is_open():
                remaining = True
                break

        if not remaining:
            break

        # animate
        for i, window in enumerate(windows):
            for snowflake in snowflakes[i]:
                snowflake.animate(dt)

        for window_nr, window in enumerate(windows):
            if not window.is_open():
                continue

            # switch to window
            window.switch_to()

            # read new events
            window.poll_events()

            # close window
            if window.is_key_pressed(key.ESCAPE):
                window.close()

            # draw stuff
            window.clear()
            pygrafix.sprite.draw_batch(spritebatches[window_nr])
            window.flip()

        time.sleep(0.000001)


import cProfile
cProfile.run("main()", sort = "time")
