"
I answer the value of a resister with the specified colour coding. Of interest is the fact that the resistor colour table is specified by a zero based offset index, while in Smalltalk, array indexes are 1 based.

"
Class {
	#name : #ResistorColorDuo,
	#superclass : #Object,
	#category : #'Exercise@ResistorColorDuo'
}

{ #category : #constants }
ResistorColorDuo class >> resistorColorsTable [
	"Answer the table of resister colour values, the 0 based offset of the colour is its value"
	
	^ #('black' 'brown' 'red' 'orange' 'yellow' 'green' 'blue' 'violet' 'grey' 'white')
]

{ #category : #exercism }
ResistorColorDuo >> valueWithColors: coloursCollection [
	"Answer the value of the resister with colour bands in @coloursCollection"
	
	^coloursCollection inject: 0 into: [ :result :colour |
		result * 10 + ((self class resistorColorsTable indexOf: colour) - 1) ]
]
