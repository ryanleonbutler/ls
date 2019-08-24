import os
import unittest
from my_ls.my_ls import my_ls


class TestSum(unittest.TestCase):
    def test_list_int(self):
        """
        Test to list current directory
        """
        dir_path = os.path.dirname(os.path.realpath(__file__))
        result = my_ls(dir_path)
        self.assertEqual(result, None)


if __name__ == "__main__":

    unittest.main()
