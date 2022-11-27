from time import sleep
from unittest import TestCase


class TestParallelExecution(TestCase):
    def test_wait_for_one_second(self):
        sleep(10)
        self.assertFalse(1 == 2)
    def test_wait_for_three_seconds(self):
        sleep(10)
        self.assertFalse(1 == 2)