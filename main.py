# This is a sample Python script.
from schoolscraper import SchoolScraper

# Press Shift+F10 to execute it or replace it with your code.
# Press Double Shift to search everywhere for classes, files, tool windows, actions, and settings.


# Press the green button in the gutter to run the script.
if __name__ == '__main__':
    scraper = SchoolScraper()
    il_list = scraper.get_il_kodu_list()
    #ilce_list =scraper.get_ilce_list(1)

# See PyCharm help at https://www.jetbrains.com/help/pycharm/
