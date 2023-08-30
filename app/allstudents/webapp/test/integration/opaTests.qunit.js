sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'allstudents/test/integration/FirstJourney',
		'allstudents/test/integration/pages/StudentSRVList',
		'allstudents/test/integration/pages/StudentSRVObjectPage'
    ],
    function(JourneyRunner, opaJourney, StudentSRVList, StudentSRVObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('allstudents') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheStudentSRVList: StudentSRVList,
					onTheStudentSRVObjectPage: StudentSRVObjectPage
                }
            },
            opaJourney.run
        );
    }
);