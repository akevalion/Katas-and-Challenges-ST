baselines
baseline04: spec
	<version: '0.4-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'http://smalltalkhub.com/mc/vitormcruz/Katas-and-Challenges/main/'.
		spec 
			project: 'LanguageExtension' with: [
				spec
					className: #ConfigurationOfLanguageExtension;
					versionString: '1.1';
					repository: 'http://smalltalkhub.com/mc/vitormcruz/Katas-and-Challenges/main/' ];
			project: 'NeoCSV' with: [
				spec
					className: #ConfigurationOfNeoCSV;
					versionString: '12';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo50/main/' ];
			project: 'NeoJSON' with: [
				spec
					className: #ConfigurationOfNeoJSON;
					versionString: '12';
					repository: 'http://mc.stfx.eu/Neo';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo50/main/' ];
			project: 'OSProcess' with: [
				spec
					className: #ConfigurationOfOSProcess;
					versionString: '4.6.4';
					loads: #('Core' );
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo50/main/' ];
			project: 'Teapot' with: [
				spec
					className: #ConfigurationOfTeapot;
					versionString: '2.1';
					loads: #('Core' );
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo50/main/' ];
			project: 'ZincHTTPComponents' with: [
				spec
					className: #ConfigurationOfZincHTTPComponents;
					versionString: '2.7.1';
					loads: #('SSO' );
					repository: 'http://mc.stfx.eu/ZincHTTPComponents' ].
		spec 
			package: #TwitterChallenge with: [
				spec requires: #('LanguageExtension' ). ];
			package: #'TwitterChallenge-ExternalAdapter' with: [
				spec requires: #('NeoJSON' 'NeoCSV' 'ZincHTTPComponents' ). ];
			package: #'TwitterChallenge-ExternalConfig';
			package: #'TwitterChallenge-Tests' with: [
				spec requires: #(#TwitterChallenge #'TwitterChallenge-ExternalAdapter' ). ]. ].
