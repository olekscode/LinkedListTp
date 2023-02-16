Class {
	#name : #Node,
	#superclass : #Object,
	#instVars : [
		'data',
		'nextLink'
	],
	#category : #LinkedListTp
}

{ #category : #accessing }
Node >> data [
	^data 
]

{ #category : #accessing }
Node >> data: newData [
	data:= newData 
]

{ #category : #accessing }
Node >> nextLink [  
	^nextLink
]

{ #category : #accessing }
Node >> nextLink: newLink [
    nextLink := newLink
]
