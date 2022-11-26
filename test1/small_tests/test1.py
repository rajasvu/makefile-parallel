import pandas as pd
from unittest import TestCase


class TestDataframe(TestCase):
    def test_pandas(self):
        te_pd = pd.DataFrame(
            columns=['col1', 'col2'],
            data=[[1, 2], [3, 4]]
        )
        self.assertEqual(te_pd['col1'].iloc[0], 1)
        self.assertEqual(te_pd['col2'].iloc[1], 4)