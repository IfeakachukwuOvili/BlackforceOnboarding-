// Assignment 1 · Operators Practice
// Scenario: Global Grocery internal operations check
// I just finished the sales and service cloud project and I thought why not use it as a case scenario.

System.debug('================ GLOBAL GROCERY OPERATORS PRACTICE ================');

// --------------------------------------------------
// Arithmetic Operators
// --------------------------------------------------

Integer monthlyBaseSalary = 4200;
Integer regionalBonus = 350;
Integer annualSalary = (monthlyBaseSalary + regionalBonus) * 12;

System.debug('Arithmetic 1 - Annual salary including regional bonus: ' + annualSalary);

Integer warehouseStaff = 7;
Integer storeSupportStaff = 4;
Integer totalStaff = warehouseStaff + storeSupportStaff;
Integer monthlyPayrollCost = totalStaff * monthlyBaseSalary;

System.debug('Arithmetic 2 - Monthly payroll cost for warehouse and support staff: ' + monthlyPayrollCost);

Integer daysInMonth = Date.daysInMonth(Date.today().year(), Date.today().month());
Integer currentDay = Date.today().day();
Integer daysRemaining = daysInMonth - currentDay;

System.debug('Arithmetic 3 - Days remaining in the current month: ' + daysRemaining);


// --------------------------------------------------
// Assignment Operators
// --------------------------------------------------

Integer onboardingProgress = 0;

onboardingProgress += 25;
System.debug('Assignment 1 - Progress after Account setup using += 25: ' + onboardingProgress + '%');

onboardingProgress += 40;
System.debug('Assignment 2 - Progress after Contact and Opportunity setup using += 40: ' + onboardingProgress + '%');

onboardingProgress -= 10;
System.debug('Assignment 3 - Progress after missing price book review using -= 10: ' + onboardingProgress + '%');

onboardingProgress++;
System.debug('Assignment 4 - Progress after quick admin correction using ++: ' + onboardingProgress + '%');


// --------------------------------------------------
// Comparison Operators
// --------------------------------------------------

Integer kemiSalary = 4700;
Integer juniorRepSalary = 3900;

System.debug('Comparison 1 - Is Kemi salary greater than Junior Rep salary?: ' + (kemiSalary > juniorRepSalary));

String customerStatus = 'Active';

System.debug('Comparison 2 - Is customer status equal to Active?: ' + (customerStatus == 'Active'));

Integer supportCasesThisMonth = 12;
Integer escalationLimit = 10;

System.debug('Comparison 3 - Has customer passed escalation limit?: ' + (supportCasesThisMonth > escalationLimit));


// --------------------------------------------------
// Logical Operators
// --------------------------------------------------

Boolean hasPremiumSupport = true;
Boolean accountIsActive = true;

System.debug('Logical 1 - Can customer access Premium Support page?: ' + (hasPremiumSupport && accountIsActive));

Boolean isStoreManager = false;
Boolean hasAdminPermission = true;

System.debug('Logical 2 - Can user update grocery product catalog?: ' + (isStoreManager || hasAdminPermission));

Boolean paymentVerified = true;
Integer cartTotal = 850;

System.debug('Logical 3 - Should Opportunity be marked ready for proposal?: ' + (paymentVerified && cartTotal >= 500));

System.debug('================ END OF OPERATORS PRACTICE ================');