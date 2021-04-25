import unittest
import re
import myform
class Test_test_2(unittest.TestCase):
    def test_T(self):
        regex=re.search(r'([@]mail[.]ru)',myform.my_form())
        if (regex==None):
            a=False
        if (regex!=None):
            a=True
        self.assertTrue(a)

if __name__ == '__main__':
    unittest.main()
