// Assignment 2 · Conditional Flow & Loops
// Part A — Scoring Loop
// Scenario: Global Grocery store onboarding task review

System.debug('================ GLOBAL GROCERY TASK SCORE REVIEW ================');

List<String> taskNames = new List<String>{
    'Account created for FreshMart Lagos',
    'Contact linked to store manager Kemi Balogun',
    'Opportunity created from cart request',
    'Regional price book selected correctly',
    'Premium support access tested',
    'Knowledge articles visible on live site',
    'Quote generated at proposal stage',
    'Currency matched to customer region',
    'Support SLA copied to Account',
    'Final demo path tested end-to-end'
};

List<Integer> taskScores = new List<Integer>{92, 87, 76, 58, 95, 49, 81, 64, 73, 90};

Integer excellentCount = 0;
Integer satisfactoryCount = 0;
Integer needsReviewCount = 0;

for (Integer i = 0; i < taskScores.size(); i++) {
    
    Integer score = taskScores[i];
    String taskName = taskNames[i];
    String classification;
    
    if (score >= 80) {
        classification = 'EXCELLENT';
        excellentCount++;
    } 
    else if (score >= 60) {
        classification = 'SATISFACTORY';
        satisfactoryCount++;
    } 
    else {
        classification = 'NEEDS REVIEW';
        needsReviewCount++;
    }
    
    System.debug(
        'Task ' + (i + 1) + 
        ' - ' + taskName + 
        ' | Score: ' + score + 
        ' | Classification: ' + classification
    );
}

System.debug('---------------- FINAL CATEGORY COUNTS ----------------');

System.debug('Total EXCELLENT tasks: ' + excellentCount);
System.debug('Total SATISFACTORY tasks: ' + satisfactoryCount);
System.debug('Total NEEDS REVIEW tasks: ' + needsReviewCount);

System.debug('---------------- REVIEW SUMMARY ----------------');

Integer totalTasks = taskScores.size();

System.debug('Total tasks reviewed: ' + totalTasks);

if (needsReviewCount == 0) {
    System.debug('Overall result: Demo environment is ready.');
} 
else if (needsReviewCount <= 2) {
    System.debug('Overall result: Demo is almost ready, but a few items need attention.');
} 
else {
    System.debug('Overall result: Demo needs more cleanup before presentation.');
}

System.debug('================ END OF TASK SCORE REVIEW ================');