import pygame


class DS4(object):
    def __init__(self):
        pygame.init()
        self.clock = pygame.time.Clock()
        pygame.joystick.init()

    def get_button(self):
        for event in pygame.event.get():  # User did something
            if event.type == pygame.QUIT: # If user clicked close
                done = True # Flag that we are done so we exit this loop# Get ready to print
        joystick = pygame.joystick.Joystick(0)
        joystick.init()
        axis_value = [joystick.get_axis(0), joystick.get_axis(1)]
        button_value = [joystick.get_button(0), joystick.get_button(1), joystick.get_button(2), joystick.get_button(3)]
        self.clock.tick(20)
        return axis_value, button_value
