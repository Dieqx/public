import re
from robot.api.deco import keyword


@keyword('Drop Characters')
def dropNonNumericCharacters(inValue):
    
    return int(re.sub("[^0-9]", "", inValue))