The work presents an Object Oriented Analysis and Design (OOAD) approach to
modeling, reasoning and a database query based approach to processing and solving
addition-subtraction (Add-Sub) type arithmetic Mathematical Word Problems (MWP)
of elementary school level. The system identifies and extracts the key entities in a word
problem like owners, items and their attributes and quantities, verbs, from all the input
sentences, using a rule based Information Extraction (IE) approach based on Semantic
Role Labeling (SRL) technique. These information are then stored in predefined tem-
plates which are further modeled to represent an MWP in the object-oriented paradigm
and processed using query based approach to generate the answer.

For any P ∈ P addsub dataset after simplification, the system follows
(1) Information extraction (IE) tasks based on semantic role labeling (SRL) (cf. Subsection 3.3):
(a) < P O 1 , ..., P O t , P O q > P ← extract all the primary owner entities for all sentences including
the question sentence where P O 1 refers to the primary owner of the first sentence, P O t refers to the
primary owner of last sentence before the question sentence and P O q refers to the primary owner for
the question sentence.
(b) < SO 1 , ..., SO t , SO q > P ← extract the secondary owner entities (if any) for all the sentences.
(c) < I 1 , ..., I t , I q > P ← extract the item entities for all the sentences.
(d) < A 1 , ..., A t , A q > P ← extract the attribute(s) (if any) of the item(s) for all the sentences.
(e) < V 1 , ..., V t , V q > P ← extract the verbs from all the sentences.
(f) < q 1 , ..., q t > P ← extract quantities (i.e., numbers) of all the items for all sentences excluding the
question sentence.
(g) T < S 1 , ..., S t , S q > P ← Sentence templates to store all the extracted information for every sentence
in P .
(2) Categorization (cf. Subsection 3.4):
(a) Verb categorization: for each unique verb V ∈ P addsub in the dataset,
i. F eatureset V < f 1 , ..., f k > Dataset ← extract features (frameNet and VerbNet based).
ii. V C 1 , ..., V C 8 ← categorize the verbs into one of the 8 categories based on the features in
F eatureset V and the operations relevant to the primary and/or secondary owners.
(b) MWP solution type categorization: for every P ∈ P addsub dataset,
i. F eatureset S < f 1 , ..., f k > Dataset ← extract (syntactic) features (rule-based).
ii. SolutionT ype < ST 1 , ..., ST 4 > Dataset ← identify the solution type based on the syntactic
features in F eatureset S .
(3) Information processing and answer generation:
(a) ‘Object’ creation (cf. Subsection 3.6): for each unique verb V ∈ P addsub in the datasets, <
P O 1 , I 1 , A 1 > and < SO 1 , I 1 , A 1 > (if SO 1 is not null) create the ‘Owner-Item-Attribute(‘OIA’)
object(s) for the first sentence. In the next sentences excluding the question sentence if new components
(O/I/A) are found then new objects are created. All extracted and processed information are stored in
database tables.
(b) Identifying verb categories in sentences and map operators with the relevant ‘OIA’ objects: for
every ‘OIA’ object ∈< OIA 1 , ..., OIA n > in a P , and for each relevant sentence, an operator
{=, +, −} is mapped with the respective ‘OIA’ objects related to the category of existing verb V n .
(c) State progression from (ST f irst , ..., ST last ) (cf. Subsection 3.8): for all ‘OIA’ objects ∈<
OIA 1 , ..., OIA n > in a P ,
i. for j ∈< 1, ..., J >; ST j ← transition(ST j , S n ) includes only the sentence(s) where the
‘OIA’ object exists along with the operators following the occurrence(s) of the event(s).
(d) Answer generation (cf. Subsection 3.9 and 3.9.5):
i. Solution types with the answer requirements are identified.
ii. Retrieval of the relevant quantities and the operation(s) are performed using SQL query match-
ing with the answer requirement e.g., SELECT (item quantity, operator) FROM OIA table WHERE
Where-condition. Where-condition is based on the answer requirements. ‘OIA table’ in database
stores states of ‘OIA’ objects. Π(item quantity, operator)σW here − condition(OIA table)
is the representation of the same in relational algebra.
iii. Equation Eq for P ∈ P addsub is generated using the retrieved data by applying the possible math-
ematical formulas from M W P = {M W P Combine , M W P Change , M W P ChangeCombine }
