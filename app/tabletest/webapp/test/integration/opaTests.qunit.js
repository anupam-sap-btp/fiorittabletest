sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'tabletest/test/integration/FirstJourney',
		'tabletest/test/integration/pages/RootEntityList',
		'tabletest/test/integration/pages/RootEntityObjectPage'
    ],
    function(JourneyRunner, opaJourney, RootEntityList, RootEntityObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('tabletest') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheRootEntityList: RootEntityList,
					onTheRootEntityObjectPage: RootEntityObjectPage
                }
            },
            opaJourney.run
        );
    }
);