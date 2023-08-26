class Question {
  late String questionText;
  late bool questionAnswer;

  Question({required String q, required bool a}) {
    questionText = q;
    questionAnswer = a;
  }
}

loadQuestions() {
  // Questions are randomized each time the app is run.

  List<Question> questions = [];
  questions.add(Question(q: "Sharks are mammals.", a: false));

  questions.add(Question(
      q: "Sea otters have a favorite rock they use to break open food.",
      a: true));

  questions.add(Question(
      q: "The blue whale is the biggest animal to have ever lived.", a: true));

  questions.add(Question(
      q: "The hummingbird egg is the world's smallest bird egg.", a: true));

  questions.add(Question(
      q: "Pigs roll in the mud because they don't like being clean.",
      a: false));

  questions.add(Question(q: "Bats are blind.", a: false));

  questions.add(Question(q: "A dog sweats by panting its tongue.", a: false));

  questions.add(
      Question(q: "It takes a sloth two weeks to digest a meal.", a: true));

  questions.add(Question(
      q: "The largest living frog is the Goliath frog of West Africa.",
      a: true));

  questions.add(
      Question(q: "An ant can lift 1,000 times its body weight.", a: false));

  questions.add(Question(
      q: "When exiting a cave, bats always go in the direction of the wind.",
      a: false));

  questions.add(
      Question(q: "Galapagos tortoises sleep up to 16 hours a day.", a: true));

  questions.add(Question(q: "An octopus has seven hearts.", a: false));

  questions.add(
      Question(q: "The goat is the national animal of Scotland.", a: false));

  questions.add(Question(q: "Herbivores are animal eaters.", a: false));

  questions.add(Question(
      q: "A monkey was the first non-human to go into space.", a: false));

  questions.add(Question(
      q: "New York City is composed of between 36 and 42 islands.", a: true));

  questions.add(Question(q: "South Africa has one capital.", a: false));

  questions.add(Question(
      q: "The Atlantic Ocean is the biggest ocean on Earth.", a: false));

  questions.add(Question(
      q: "Mount Everest is the tallest mountain in the world.", a: true));

  questions.add(Question(
      q: "You can find the \"Desert of Death\" in California.", a: false));

  questions.add(Question(
      q: "The total length of the Great Wall of China adds up to 13,171 miles.",
      a: true));

  questions.add(Question(
      q: "The two longest rivers in the world are the Mississippi and the Nile.",
      a: false));

  questions.add(Question(
      q: "The Chunnel between England and France is 31.5 miles long.",
      a: true));

  questions.add(
      Question(q: "Greenland is the largest island in the world.", a: true));

  questions.add(Question(
      q: "There are more countries in South America than Africa.", a: false));

  questions.add(Question(
      q: "Alaska has the most active volcanoes of any state in the United States.",
      a: true));

  questions.add(
      Question(q: "China has the longest coastline in the world.", a: false));

  questions.add(Question(
      q: "Vatican City is the smallest country in the world.", a: true));

  questions.add(Question(
      q: "Venezuela is home to the world's highest waterfall.", a: true));

  questions.add(Question(q: "The human body has four lungs.", a: false));

  questions.add(Question(q: "Human skin regenerates every week.", a: false));

  questions.add(Question(
      q: "The average human sneeze can be clocked at 100 miles an hour.",
      a: true));

  questions.add(Question(
      q: "Humans lose an average of 75 strands of hair a month.", a: false));

  questions.add(Question(q: "Infants have more bones than adults.", a: true));

  questions.add(Question(
      q: "The heart is the largest internal organ in the body.", a: false));

  questions
      .add(Question(q: "Most of the human brain is made of muscle.", a: false));

  questions.add(
      Question(q: "Taste buds can only be found on the tongue.", a: false));

  questions.add(Question(
      q: "The human eye can distinguish 10 million different colors.",
      a: true));

  questions.add(Question(
      q: "Humans lose more than 80% of heat from their feet.", a: false));

  questions.add(Question(q: "The human body is about 60% water.", a: true));

  questions
      .add(Question(q: "The most common blood type is 0- negative.", a: true));

  questions.add(
      Question(q: "Aladdin's character was based on Brad Pitt.", a: false));

  questions.add(Question(
      q: "The song \"We Don't Talk About Bruno\" from Encanto is the first Disney song to hit #1 on the Billboard Hot 100 chart in 29 years.",
      a: true));

  questions.add(Question(
      q: "It took eight months from start to finish to produce the 1959 Disney film, Sleeping Beauty.",
      a: false));

  questions.add(Question(
      q: "Pinocchio was the first animated, full-color Walt Disney feature film.",
      a: false));

  questions.add(Question(q: "Toy Story was Pixar's first movie.", a: true));

  questions.add(
      Question(q: "Minnie Mouse's full name is Wilhelmina Mouse.", a: false));

  questions.add(Question(q: "Dumbo is the shortest Disney film.", a: true));

  questions.add(Question(
      q: "The Aristocats was the first film to be made after Walt Disney's death.",
      a: true));

  questions.add(Question(
      q: "Prince Eric and Ariel from The Little Mermaid have a daughter named Princess Song.",
      a: false));

  questions.add(Question(
      q: "Beauty and the Beast was Disney's first Broadway musical.", a: true));

  questions.add(Question(
      q: "Pepperoni is the most popular pizza topping in the US.", a: true));

  questions.add(Question(q: "Cheesecake comes from Italy.", a: false));

  questions.add(Question(q: "Pineapples grow on trees.", a: false));

  questions.add(Question(
      q: "A potato was the first vegetable to be planted on the space shuttle.",
      a: true));

  questions.add(Question(q: "Hawaiian pizza comes from Canada.", a: true));

  questions.add(Question(q: "French fries originated from France.", a: false));

  questions.add(
      Question(q: "Pizza was the first food consumed in space.", a: false));

  questions.add(Question(q: "Caesar Salad originates from Italy.", a: false));

  questions
      .add(Question(q: "Ears of corn have an even number of rows.", a: true));

  questions.add(Question(
      q: "The names of the mascots for Rice Krispies are Snap, Crackle, & Pop.",
      a: true));

  questions.add(
      Question(q: "Vanilla is the world's most expensive spice.", a: false));

  questions.add(Question(
      q: "Mcdonald's has the most restaurants by location in the United States.",
      a: false));

  questions.add(Question(
      q: "The Chinese New Year is celebrated on the same day every year.",
      a: false));

  questions.add(Question(
      q: "Punxsutawney Phil is just a nickname for the famous groundhog.",
      a: true));

  questions.add(Question(
      q: "The first St. Patrick's Day parade in the United States was held in New York City.",
      a: false));

  questions.add(Question(
      q: "The tradition of dyeing Easter eggs started in the United States.",
      a: false));

  questions.add(Question(
      q: "Only two men signed the Declaration of Independence on July 4, 1776.",
      a: true));

  questions.add(Question(
      q: "The U.S. and Canada celebrate Thanksgiving on the same day.",
      a: false));

  questions.add(Question(q: "Santa Claus has his own postal code.", a: true));

  questions.add(Question(q: "There are seven nights in Kwanzaa.", a: true));

  questions.add(Question(
      q: "Memorial Day has a special set of instructions regarding raising and lowering the U.S. flag.",
      a: true));

  questions.add(Question(
      q: "Polo takes up the largest amount of space in terms of land area.",
      a: true));

  questions.add(
      Question(q: "Every golf ball has the same number of dimples.", a: false));

  questions.add(Question(
      q: "Football players started wearing helmets in 1943.", a: true));

  questions.add(Question(
      q: "Brazil is the only nation to have played in every World Cup finals tournament.",
      a: true));

  questions.add(Question(
      q: "World-renowned jeweler Tiffany & Co. is the maker of the Vince Lombardi trophy.",
      a: true));

  questions.add(Question(q: "There are 30 NFL teams.", a: false));

  questions.add(Question(
      q: "The New York Marathon is the largest in the world.", a: true));

  questions.add(Question(
      q: "Three strikes in a row in bowling is called a chicken.", a: false));

  questions
      .add(Question(q: "An astronaut has played golf on the moon.", a: true));

  questions.add(
      Question(q: "The Tour de France always finishes in Italy.", a: false));

  questions.add(Question(
      q: "Soccer (football) is estimated to have more than 2 billion fans around the world.",
      a: false));

  questions.add(Question(
      q: "President George Washington brought macaroni and cheese to the USA.",
      a: false));

  questions.add(Question(
      q: "Marvel published its first comic in October 1939.", a: true));

  questions.add(Question(
      q: "The letter \"T\" is the most common in the English Language.",
      a: false));

  questions.add(Question(
      q: "People who have chiclephobia are afraid of cats.", a: false));

  questions.add(Question(
      q: "John Glenn became the oldest astronaut when he traveled to space at the age of 53.",
      a: false));

  questions.add(Question(
      q: "All the kings in a standard deck of cards have a mustache.",
      a: false));

  questions.add(Question(
      q: "Pepsi was the first soft drink to be enjoyed in outer space.",
      a: false));

  questions
      .add(Question(q: "The name of Batman's butler is Albert.", a: false));

  questions
      .add(Question(q: "Fortune cookies were invented in China.", a: false));

  questions.add(Question(q: "Henry VIII had eight wives.", a: false));

  questions.add(Question(
      q: "The maximum length for a video posted on TikTok is 45 seconds.",
      a: false));

  questions.add(Question(
      q: "The letter \"J\" is the only letter in the alphabet not included in the periodic table.",
      a: true));

  questions.add(Question(
      q: "Every country in the world has a rectangular flag.", a: false));

  questions.add(Question(
      q: "The Harry Potter film, Chamber of Secrets, is the longest film of the Harry Potter movies.",
      a: true));

  questions.add(Question(
      q: "The official color of the Golden Gate Bridge in California is \"Tennessee Orange\".",
      a: false));

  questions.add(
      Question(q: "Dr. Pepper is the oldest soft drink in America.", a: true));

  questions.shuffle();
  return questions;
}
