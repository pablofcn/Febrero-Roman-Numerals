module FromNumToRoman_Test where

import RomanCalculator( fromNumberToRoman )
import Test.HUnit

testConversionOf1 = TestCase $ assertEqual 
  "Should get I from number 1" "I" ( fromNumberToRoman 1)

testConversionOf2 = TestCase $ assertEqual 
  "Should get II from number 2" "II" ( fromNumberToRoman 2)

testConversionOf3 = TestCase $ assertEqual 
  "Should get III from number 3" "III" ( fromNumberToRoman 3)

testsForI = TestList [testConversionOf1, testConversionOf2, testConversionOf3]

testConversionOf4 = TestCase $ assertEqual 
  "Should get IV from number 4" "IV" ( fromNumberToRoman 4)

testsForIV = testConversionOf4

testConversionOf5 = TestCase $ assertEqual 
  "Should get V from number 5" "V" ( fromNumberToRoman 5)

testConversionOf7 = TestCase $ assertEqual 
  "Should get VII from number 7" "VII" ( fromNumberToRoman 7)

testsForV = TestList [testConversionOf5, testConversionOf7]

testConversionOf9 = TestCase $ assertEqual 
  "Should get IX from number 9" "IX" ( fromNumberToRoman 9)

testsForIX = testConversionOf9

testConversionOf12 = TestCase $ assertEqual 
  "Should get XII from number 12" "XII" ( fromNumberToRoman 12)

testConversionOf14 = TestCase $ assertEqual 
  "Should get XIV from number 14" "XIV" ( fromNumberToRoman 14)

testsForX = TestList [testConversionOf12, testConversionOf14]

testConversionOf41 = TestCase $ assertEqual 
  "Should get XLI from number 41" "XLI" ( fromNumberToRoman 41)

testsForXL = testConversionOf41

testConversionOf53= TestCase $ assertEqual 
  "Should get LIII from number 53" "LIII" ( fromNumberToRoman 53)

testsForL = testConversionOf53

testConversionOf95= TestCase $ assertEqual 
  "Should get XCV from number 95" "XCV" ( fromNumberToRoman 95)

testsForXC = testConversionOf95

testConversionOf39= TestCase $ assertEqual 
  "Should get XXXIX from number 39" "XXXIX" ( fromNumberToRoman 39)

testConversionOf49= TestCase $ assertEqual 
  "Should get XLIX from number 49" "XLIX" ( fromNumberToRoman 49)

testConversionOf89= TestCase $ assertEqual 
  "Should get LXXXIX from number 89" "LXXXIX" ( fromNumberToRoman 89)

testsForLimitCases = TestList [testConversionOf39, testConversionOf49, testConversionOf89] 

testConversionOf132 = TestCase $ assertEqual 
  "Should get CXXXII from number 132" "CXXXII" ( fromNumberToRoman 132)

testsForC = testConversionOf132

testConversionOf412 = TestCase $ assertEqual 
  "Should get CDXII from number 412" "CDXII" ( fromNumberToRoman 412)

testsForCD = testConversionOf412

testConversionOf552 = TestCase $ assertEqual 
  "Should get DLII from number 552" "DLII" ( fromNumberToRoman 552)

testsForD = TestList [testConversionOf552]

testConversionOf1252 = TestCase $ assertEqual 
  "Should get MCCLII from number 1252" "MCCLII" ( fromNumberToRoman 1252)

testsForM = TestList [testConversionOf1252]

testConversionOf901 = TestCase $ assertEqual 
  "Should get CMI from number 901" "CMI" ( fromNumberToRoman 901)

testConversionOf1999 = TestCase $ assertEqual 
  "Should get MCMXCIX from number 1999" "MCMXCIX" ( fromNumberToRoman 1999)

testsForCM = TestList [testConversionOf1252, testConversionOf1999]

main = runTestTT $ TestList [testsForI, testsForIV, testsForV, 
							 testsForIX, testsForX, testsForXL, testsForL,
							 testsForXC, testsForC, testsForCD, testsForD, testsForCM,
							 testsForM, testsForLimitCases]
