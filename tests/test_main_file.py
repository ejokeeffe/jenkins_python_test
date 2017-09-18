#!/usr/bin/env python
# -*- coding: utf-8 -*-

import pytest
from jenkins_python_test.skeleton import fib
from jenkins_python_test import main_module

__author__ = "Eoin O'Keeffe"
__copyright__ = "Eoin O'Keeffe"
__license__ = "none"


def test_one_plus_one_fail():
    assert main_module.one_plus_one==3



