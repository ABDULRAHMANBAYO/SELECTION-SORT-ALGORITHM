main(List<String> arguments) {
  //print('Hello world: ${selection_sort_algorithm.calculate()}!');
  List<int> arrayOne = [3, 6, 1, 8, 4, 5];

  int nextElement;
  int arraySize = arrayOne.length;

  for (int i = 0; i < arraySize - 1; i++) {
//intpositionOfCurrentElement = array.indexOf(currentElement);
    int currentElement = arrayOne.elementAt(i);
    int nextElementPosition = i + 1;

    checkForSmallestElement(
        arrayOne, currentElement, nextElementPosition, arraySize);
    //counter<arraySize-1:Do this to loop over the index of each element
    // for (int counter = 0; counter < arraySize - 1; counter++) {

    // }

    print("This is the array after sorting $arrayOne");
  }
}

void swapElement(List<int> array, int currentElement, int previousElement,
    int currentElementPosition, int previousElementPosition) {
  var tmp = array[currentElementPosition];
  array[currentElementPosition] = array[previousElementPosition];
  array[previousElementPosition] = tmp;
}

void checkForSmallestElement(List<int> array, var currentElement,
    int nextElementPosition, int arraySize) {
  var previousElement = currentElement;
  var smallestElement;
  var nextElement;
  var positionOfNextElement;
  var positionOfCurrentElement;
  var positionOfPreviousElement;
  for (int counter = 0; counter < arraySize - nextElementPosition; counter++) {
    positionOfNextElement = nextElementPosition + counter;
    nextElement = array.elementAt(positionOfNextElement);

    positionOfPreviousElement = array.indexOf(previousElement);
    if (currentElement > nextElement) {
      smallestElement = nextElement;
      currentElement = smallestElement;
      positionOfCurrentElement = array.indexOf(smallestElement);
      //nextElement = array.elementAt(positionOfNextElement);

    } else {
      positionOfCurrentElement = array.indexOf(currentElement);
    }
  }
  swapElement(array, currentElement, previousElement, positionOfCurrentElement,
      positionOfPreviousElement);
}
