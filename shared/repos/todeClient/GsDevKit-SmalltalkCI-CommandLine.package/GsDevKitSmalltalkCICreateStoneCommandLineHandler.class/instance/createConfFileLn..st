private
createConfFileLn: sourceFile
	Transcript
		cr;
		tab;
		show: 'Creating exe conf directory symbolic link to ' , sourceFile pathString printString.
	sourceFile exists not
		ifTrue: [ self exitFailure: 'The specified conf file: ' , sourceFile pathString printString , ' does not exist' ].
	OSProcess command: 'ln -sf ' , sourceFile pathString , ' ' , self stoneDirectory pathString