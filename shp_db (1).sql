-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2024 at 12:58 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shp_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `USERNAME` varchar(10) NOT NULL,
  `PASSWORD` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`USERNAME`, `PASSWORD`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `age`
--

CREATE TABLE `age` (
  `WEIGHTAGE` varchar(45) NOT NULL,
  `VALUE` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `age`
--

INSERT INTO `age` (`WEIGHTAGE`, `VALUE`) VALUES
('Age', 0.1),
('Age>30 to <50', 0.3),
('Age>50 and age<70', 0.7),
('Age>70', 0.8);

-- --------------------------------------------------------

--
-- Table structure for table `alcoholintake`
--

CREATE TABLE `alcoholintake` (
  `WEIGHTAGE` varchar(45) NOT NULL,
  `VALUE` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `alcoholintake`
--

INSERT INTO `alcoholintake` (`WEIGHTAGE`, `VALUE`) VALUES
('Current', 0.6),
('Never', 0.1),
('Past', 0.3);

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `ID` int(11) NOT NULL,
  `DOCTORID` int(11) NOT NULL,
  `DATE` date NOT NULL,
  `TITLE` varchar(500) NOT NULL,
  `ARTICLE` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`ID`, `DOCTORID`, `DATE`, `TITLE`, `ARTICLE`) VALUES
(1, 1, '2017-07-12', 'Eating more fruits, vegetables boosts psychological well-being in just 2 weeks', 'Fruits and vegetables are a pivotal part of a healthful diet, but their benefits are not limited to physical health. New research finds that increasing fruit and vegetable consumption may improve psychological well-being in as little as 2 weeks. [A selection of vegetables Increasing fruit and vegetable intake may benefit psychological well-being. Study leader Dr. Tamlin Conner, of the Department of Psychology at the University of Otago in New Zealand, and colleagues found that young adults who were given extra fruits and vegetables each day for 14 days ate more of the produce and experienced a boost in motivation and vitality.  The researchers recently reported their findings in the journal PLOS One.  According to the United States Department of Agriculture, adults should aim to consume around two cups of fruits and around two to three cups of vegetables daily.  One cup of fruits is the equivalent to half a grapefruit or a large orange'),
(2, 2, '2017-01-13', 'Is this the key to stopping cancer from spreading?', 'When a tumor migrates to another part of the body, it makes cancer much more difficult to beat. A recently published study, investigating a metabolite called 20-HETE, gives new insight into this process and how it might be stopped. Cancer\'s ability to metastasize - move through the body and take root in a distant location - is a thorn in the side of cancer treatments.  A localized tumor is much easier to treat, and chances of survival are greater. Once the tumor has moved on, it can be harder to control. Around 30 percent of people with breast cancer experience metastasis, commonly affecting the lymph nodes, bones, brain, lungs, and liver.  Understanding how a tumor sets up shop in distant parts of the body is an important area of study. The trouble is, cancer is incredibly adept at finding a new location; in fact, tumors constantly send out cells into the bloodstream to see if they take hold and flourish.'),
(3, 2, '2024-02-17', 'Harms from drug use', 'Drug use can affect short and long term health including physical and mental health.');

-- --------------------------------------------------------

--
-- Table structure for table `article_files`
--

CREATE TABLE `article_files` (
  `ID` int(11) NOT NULL,
  `ARTICLEID` int(11) NOT NULL,
  `FILES` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `article_files`
--

INSERT INTO `article_files` (`ID`, `ARTICLEID`, `FILES`) VALUES
(1, 1, 'balanced-diet-for-vegans-main-feature-page-700-350.jpg'),
(2, 1, 'fruits-70a.jpg'),
(3, 2, 'Damage-Related-to-Cancer-and-its-Treatment.jpg'),
(4, 2, 'Rycina_1b.jpg'),
(5, 4, 'article drug.pdf'),
(6, 5, 'article drug.pdf'),
(7, 6, 'article drug.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `badcholesterol`
--

CREATE TABLE `badcholesterol` (
  `WEIGHTAGE` varchar(45) NOT NULL,
  `VALUE` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `badcholesterol`
--

INSERT INTO `badcholesterol` (`WEIGHTAGE`, `VALUE`) VALUES
('High 160 to 200', 0.8),
('Normal<160', 0.1),
('Very High>200', 0.9);

-- --------------------------------------------------------

--
-- Table structure for table `bloodpressure`
--

CREATE TABLE `bloodpressure` (
  `WEIGHTAGE` varchar(45) NOT NULL,
  `VALUE` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `bloodpressure`
--

INSERT INTO `bloodpressure` (`WEIGHTAGE`, `VALUE`) VALUES
('High:>200/160', 0.9),
('Low:<119/79', 0.8),
('Normal:130/89', 0.1);

-- --------------------------------------------------------

--
-- Table structure for table `bloodsugar`
--

CREATE TABLE `bloodsugar` (
  `WEIGHTAGE` varchar(45) NOT NULL,
  `VALUE` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `bloodsugar`
--

INSERT INTO `bloodsugar` (`WEIGHTAGE`, `VALUE`) VALUES
('High:>120 and <400', 0.5),
('Low(<90)', 0.4),
('Normal>90 and <120', 0.1);

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `STATEID` int(11) NOT NULL,
  `CITYID` int(11) NOT NULL,
  `CITYNAME` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`STATEID`, `CITYID`, `CITYNAME`) VALUES
(1, 1, 'KASARAGOD'),
(1, 2, 'KANNUR'),
(1, 3, 'ERANAKULAM'),
(2, 4, 'COIMBATORE'),
(2, 5, 'CHENNAI'),
(3, 6, 'KODAGU'),
(3, 7, 'MYSORE'),
(4, 8, 'HYDERABAD'),
(1, 9, 'WAYANAD'),
(1, 10, 'KOZHIKODE'),
(1, 11, 'MALAPPURAM'),
(1, 12, 'PALAKKAD'),
(1, 13, 'THRISSUR'),
(1, 14, 'ALAPPUZHA'),
(1, 15, 'KOTTAYAM'),
(1, 16, 'IDUKKI'),
(1, 17, 'KOLLAM'),
(1, 18, 'PATHANAMTHITTA');

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `CID` int(11) NOT NULL,
  `DOCTOR` varchar(30) NOT NULL,
  `PATIENT` varchar(30) NOT NULL,
  `ABOUT` varchar(45) NOT NULL,
  `COMPLAINT` varchar(45) NOT NULL,
  `PROOF` varchar(100) NOT NULL,
  `DATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`CID`, `DOCTOR`, `PATIENT`, `ABOUT`, `COMPLAINT`, `PROOF`, `DATE`) VALUES
(1, 'suresh', 'leela', 'the  medicine aspirin', 'itching', 'old project.odt', '2017-10-05'),
(2, 'suresh', 'leela', 'medicine aspirin', ' itching', 'beautiful-amazing-cosmos-flower_(1)_(1).jpg', '2023-01-03'),
(3, 'suresh', 'leela', 'yudiwd', 'ssiodu', 'ERD.png', '2024-02-29');

-- --------------------------------------------------------

--
-- Table structure for table `complaintreply`
--

CREATE TABLE `complaintreply` (
  `R_ID` int(11) NOT NULL,
  `CID` int(11) NOT NULL,
  `REPLY` varchar(45) NOT NULL,
  `DATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `complaintreply`
--

INSERT INTO `complaintreply` (`R_ID`, `CID`, `REPLY`, `DATE`) VALUES
(1, 1, 'I wil check', '2023-01-03'),
(2, 2, 'dont use it', '2024-02-17');

-- --------------------------------------------------------

--
-- Table structure for table `diet`
--

CREATE TABLE `diet` (
  `DID` int(11) NOT NULL,
  `ABOUT` varchar(50) NOT NULL,
  `DESCRIPTION` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `diet`
--

INSERT INTO `diet` (`DID`, `ABOUT`, `DESCRIPTION`) VALUES
(1, 'Don\'t skip breakfast', 'Skipping breakfast won\'t help you lose weight. You could miss out on essential nutrients and you may end up snacking more throughout the day because you feel hungry. Check out five healthy breakfasts.'),
(2, 'Eat regular meals', 'Eating at regular times during the day helps burn calories at a faster rate. It also reduces the temptation to snack on foods high in fat and sugar. Find out more about eating heathily.'),
(3, 'Get more active', 'Being active is key to losing weight and keeping it off. As well as providing numerous health benefits, exercise can help burn off the excess calories you can\'t cut through diet alone. Find an activity you enjoy and are able to fit into your routine.'),
(4, 'Drink plenty of water', 'People sometimes confuse thirst with hunger. You can end up consuming extra calories when a glass of water is really what you need.'),
(5, 'Cut down on alcohol', 'A standard glass of wine can contain as many calories as a piece of chocolate. Over time, drinking too much can easily contribute to weight gain. Find out more about the calories in alcohol.'),
(6, 'Plan your meals', 'Try to plan your breakfast, lunch, dinner and snacks for the week, making sure you stick to your calorie allowance. You may find it helpful to make a weekly shopping list.');

-- --------------------------------------------------------

--
-- Table structure for table `diet_plans`
--

CREATE TABLE `diet_plans` (
  `ID` int(11) NOT NULL,
  `ABOUT` varchar(500) NOT NULL,
  `DETAILS` varchar(1000) NOT NULL,
  `DIET PLANS` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `diet_plans`
--

INSERT INTO `diet_plans` (`ID`, `ABOUT`, `DETAILS`, `DIET PLANS`) VALUES
(1, 'FLEXITARIAN DIET', 'Not so sure about becoming a vegetarian or vegan? That\'s where the flexitarian diet comes in. You\'re basically adding new foods into your diet, focusing on plant-based proteins like tofu, beans, nut or soy milk, and eating less meat — but not cutting it out completely. Since vegetarian and vegan diets typically lead to weight loss, you\'ll see results from being a flexitarian, too: Studies show those who are mostly vegetarian or vegan have a lower BMI than full-on meat-eaters.', 'Breakfast (290 calories):\r\n\r\n1 serving Sprouted-Grain Toast with Peanut Butter & Banana\r\nA.M. Snack (78 calories):\r\n\r\n1 hard-boiled egg\r\nPinch of salt & pepper\r\nLunch (367 calories):\r\n\r\n1 serving Veggie & Hummus Sandwich\r\n½ cup blueberries\r\nP.M. Snack (181 calories):\r\n\r\n1 cup low-fat plain Greek yogurt\r\n¼ cup raspberries\r\n\r\nDinner (569 calories):\r\n1 serving Stuffed Potatoes with Salsa & Beans\r\n1 serving Guacamole Chopped Salad');

-- --------------------------------------------------------

--
-- Table structure for table `disease_details`
--

CREATE TABLE `disease_details` (
  `DID` int(11) NOT NULL,
  `DISEASE` varchar(1000) NOT NULL,
  `SYMPTOM` varchar(1000) NOT NULL,
  `PREVENTION` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `disease_details`
--

INSERT INTO `disease_details` (`DID`, `DISEASE`, `SYMPTOM`, `PREVENTION`) VALUES
(1, 'heart attack', 'pain,pressure,squeezing,or feeling of fullness in the center of the chest that lasts more than a few minutes,pain or discomfort in other areas of the upper body,shortness of breath,cold sweat,nausea,lightheadedness.', 'Choose a healthy eating plan,Be physically active,Ban smoking,Keep tabs on your blood pressure,Don’t wait to lose weight'),
(2, 'stroke', 'facial drooping,arm weakness,difficulty with speech,rapDIDly developing dizziness or balance,sudden numbness or weakness,loss of vision,confusion,severe headache', 'Identify:Review the risk factors and Identify your personal risk,Reduce your risk factors:Work to reduce your stroke risk through lifestyle changes and if necessary medication,Recognize and Respond:Learn to recognize the signs and symptoms of a stroke by memorizing FAST. Respond to the first sight of stroke and help save lives'),
(3, 'Asthma', 'Wheezing,asthma,shortness of breath,Coughing', 'Follow your asthma action plan,Get vaccinated for influenza and pneumonia,Identify and avoDID asthma triggers,Monitor your breathing,Identify and treat attacks early,Take your medication as prescribed,Pay attention to increasing quick-relief inhaler use'),
(4, 'Stomach Cramps', 'Abdominal Pain,Abdominal Cramps,Bloating', 'Try herbal/natural remedies,Make lifestyle changes,Regular exercise,Eating less spicy, fatty, or greasy foods,Eating slower and not eating right before bedtimeLosing some weight if you are overweight'),
(5, 'Cancer', 'fatigue,weight loss,pain,skin changes,change in bowel or bladder function,unusual bleeding,persistent cough,voice change,fever,lumps,tissue masses.', 'Don\'t use tobacco,Eat a healthy diet,Maintain a healthy weight and be physically active,Protect yourself from the sun,Get regular medical care');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_registration`
--

CREATE TABLE `doctor_registration` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(30) NOT NULL,
  `PLACE` varchar(30) NOT NULL,
  `GENDER` varchar(10) NOT NULL,
  `ADDRESS` varchar(50) NOT NULL,
  `CONTACT NO` varchar(10) NOT NULL,
  `PHOTO` varchar(500) NOT NULL,
  `EMAIL` varchar(30) NOT NULL,
  `EXPERIENCE` int(11) NOT NULL,
  `SPECIALIZATION` varchar(30) NOT NULL,
  `QUALIFICATION` varchar(50) NOT NULL,
  `HOSPITAL` varchar(50) NOT NULL,
  `USERNAME` varchar(30) NOT NULL,
  `PASSWORD` varchar(10) NOT NULL,
  `STATUS` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctor_registration`
--

INSERT INTO `doctor_registration` (`ID`, `NAME`, `PLACE`, `GENDER`, `ADDRESS`, `CONTACT NO`, `PHOTO`, `EMAIL`, `EXPERIENCE`, `SPECIALIZATION`, `QUALIFICATION`, `HOSPITAL`, `USERNAME`, `PASSWORD`, `STATUS`) VALUES
(1, 'Suresh', 'kasaragod', 'male', 'SH house kasaragod    ', '9876787656', 'img5.jpg', 'sr@gmail.com', 12, 'cardiologist', 'MBBS MD', 'Lekshmi Meghan kasaragod', 'suresh', '1234', 'APPROVE'),
(2, 'Shyam', 'Eranakulam', 'male', 'KK house Eranakulam', '8987678767', 'doctor-06.jpg', 'ss@gmail.com', 15, 'Cardiac Electrophysiologist', 'MBBS,MD', 'Ahaliya Hospital Eranakulam', 'shyam', '12345', 'APPROVE'),
(3, 'Anupama', 'Kannur', 'female', 'anu house kannur', '8965874521', '1.jpg', 'anu@gmail.com', 5, 'Cardiac Surgeon', 'MBBS,MD', 'Appolo Hospital Chennai', 'anu', '12345', 'APPROVE'),
(4, 'Lubna', 'Banglore', 'female', 'Raj Resedence Banglore', '9786543234', '12.jpg', 'lub@gmail.com', 8, 'cardiologist', 'BAMS,MBBS,MD', 'Lurde Hospital Banglore', 'lubna', '12345', 'APPROVE'),
(5, 'Allen', 'Mumbai', 'female', 'kk Tower Mumbai', '9765432123', '10.jpg', 'ali@gmail.com', 6, 'Neurologist', 'MBBS,MD', 'Akbar Hospital Mumbai', 'ali', '12345', 'pending'),
(6, 'Namitha', 'Kannur', 'female', 'Kannoth house kannur', '8765456789', 'img3.jpg', 'nami@gmail.com', 5, 'cardiologist', 'MBBS,MD', 'Koyili Hospital Kannur', 'nami', '12345', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `excercisedetails_tb`
--

CREATE TABLE `excercisedetails_tb` (
  `EID` int(10) UNSIGNED NOT NULL,
  `ABOUT` varchar(45) NOT NULL,
  `DESCRIPTION` varchar(1000) NOT NULL,
  `PICTURE` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `excercisedetails_tb`
--

INSERT INTO `excercisedetails_tb` (`EID`, `ABOUT`, `DESCRIPTION`, `PICTURE`) VALUES
(1, 'Aerobic Exercises', 'Understand aerobic exercise. Aerobic exercise is often called a “cardio” workout, since it is designed to increase and improve blood flow. These types of exercises are of a lower intensity but last for longer periods of time.', 'Version2.jpg'),
(2, 'Climb stairs', ' Climbing stairs is a great way to get your heart rate up. You can climb actual stairs or you can use a stair machine at a gym. Climbing stairs improves your leg muscles as well as your butt. Be careful if using actual stairs, however, as you do not want to fall and get seriously injured.', 'aid244985-v4-900px-Exercise-Step-8.jpg'),
(3, 'Jump rope', 'This is not just a fun game for children but also an excellent workout. Working the arms, legs and core muscles, this is an exercise that you can easily do at home. It is also well known for improving balance and is excellent for people who intend to play sports.', 'aid244985-v4-900px-Exercise-Step-9-Version-2.jpg'),
(4, 'Do jumping jacks', 'Jumping jacks are an exercise performed by standing with the legs together, arms at your side, and then jumping to move the legs outward and raising the arm together above your head. Jump again to return to the starting position. These are great for getting your heart rate up and burning calories.', 'aid244985-v4-900px-Exercise-Step-10.jpg'),
(5, 'Walk or jog', 'Walking and jogging are wonderful ways to get your heart rate up. Though jogging may be difficult on the knees for some people, walking is certainly an accessible exercise and should be done by those at every level. Studies have shown that walking an hour a day can help you maintain your weight over time and reduce your likelihood of certain conditions, like hypertension and obesity.', 'aid244985-v4-900px-Exercise-Step-11.jpg'),
(6, 'Swim', 'Swimming is great exercise and is fun to boot. This will work different muscles depending on the style of swimming you do. Swimming is frequently recommended for people with joint problems or those that are significantly overweight, as it can take a great deal of strain off of the skeleton while still raising the heart rate.', 'aid244985-v4-900px-Exercise-Step-12.jpg'),
(7, 'Do sit-ups', 'Sit ups are similar to crunches and are done by lying face up, knees bent only slightly, and rolling your upper body into a sitting position. You can cross your arms in front of you or run your palms up and down your thighs as you move to guide your movement.', 'aid244985-v4-900px-Exercise-Step-23.jpg'),
(8, 'Try bridges', 'Bridges are a great core exercise because they also work on your bottom and lower back muscles. These are done by lying on your back, with your knees bent and your arms flat on the ground at your sides. Slowly roll your back and lift your hips until a straight line is created between your shoulders and knees, your back and thighs parallel, and then slowly lower it back into starting position.', 'aid244985-v4-900px-Exercise-Step-24.jpg'),
(9, 'Try Pilates', 'Pilates is a series of forms and movements which occasionally makes use of tools like exercise balls, weights, and resistance bands. This form of exercise helps train muscles with the correct movement patterns which can improve balance, core strength, posture and flexibility. Find a local group to practice with or take a class from a local gym or community center. You can also find lessons online or DVDs which will allow you to practice at home.', 'aid244985-v4-900px-Exercise-Step-28.jpg'),
(10, 'Try Yoga', 'Yoga is an Indian meditation technique and exercise which has been shown to reduce stress and anxiety (in turn aiding weight loss) and is excellent for building better balance and flexibility. Find a local group to practice with or take a class from a local gym or community center. You can also find lessons online or DVDs which will allow you to practice at home.', 'aid244985-v4-900px-Exercise-Step-29.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `exercise`
--

CREATE TABLE `exercise` (
  `WEIGHTAGE` varchar(45) NOT NULL,
  `VALUE` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `exercise`
--

INSERT INTO `exercise` (`WEIGHTAGE`, `VALUE`) VALUES
('High if age<30', 0.1),
('High if age>50', 0.6),
('Never', 0.6),
('Regular', 0.1);

-- --------------------------------------------------------

--
-- Table structure for table `fat`
--

CREATE TABLE `fat` (
  `WEIGHTAGE` varchar(45) NOT NULL,
  `VALUE` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `fat`
--

INSERT INTO `fat` (`WEIGHTAGE`, `VALUE`) VALUES
('No', 0.1),
('Yes', 0.9);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `ID` int(11) NOT NULL,
  `DOCTOR` varchar(30) NOT NULL,
  `FEEDBACK` varchar(500) NOT NULL,
  `PATIENT` varchar(30) NOT NULL,
  `DATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`ID`, `DOCTOR`, `FEEDBACK`, `PATIENT`, `DATE`) VALUES
(1, 'suresh', 'your prescription helped me.', 'sudarsan', '2017-10-05'),
(2, 'suresh', 'thankyou sir for the prescription', 'leela', '2017-10-05'),
(3, 'suresh', 'verygood doctor.He is very simple and gentle in his behavior.', 'leela', '2024-02-17'),
(4, 'suresh', 'good service', 'leela', '2024-02-17');

-- --------------------------------------------------------

--
-- Table structure for table `feedbackreply`
--

CREATE TABLE `feedbackreply` (
  `FEED_ID` int(11) NOT NULL,
  `R_ID` int(11) NOT NULL,
  `DATE` date NOT NULL,
  `REPLY` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `feedbackreply`
--

INSERT INTO `feedbackreply` (`FEED_ID`, `R_ID`, `DATE`, `REPLY`) VALUES
(1, 1, '2017-10-05', 'thankyou'),
(2, 2, '2023-01-03', 'ok'),
(3, 3, '2024-02-17', 'thank you');

-- --------------------------------------------------------

--
-- Table structure for table `gender`
--

CREATE TABLE `gender` (
  `WEIGHTAGE` varchar(45) NOT NULL,
  `VALUE` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `gender`
--

INSERT INTO `gender` (`WEIGHTAGE`, `VALUE`) VALUES
('Age', 0.1),
('Age>30 to <50', 0.3),
('Age>50 and age<70', 0.7),
('Age>70', 0.8);

-- --------------------------------------------------------

--
-- Table structure for table `healthtip`
--

CREATE TABLE `healthtip` (
  `HID` int(11) NOT NULL,
  `TITLE` varchar(30) NOT NULL,
  `HEALTHTIP` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `healthtip`
--

INSERT INTO `healthtip` (`HID`, `TITLE`, `HEALTHTIP`) VALUES
(1, 'Follow a Heart-Healthy Diet', 'There\'s an easy recipe if your goal is to keep away problems like heart disease and strokes.  Eat more fruits and veggies. Choose whole grains. Try brown rice instead of white. Switch to whole wheat pasta. Choose lean proteins like poultry, fish, beans, and legumes. Cut down on processed foods, sugar, salt, and saturated fat. When eating healthy, flexibility often works best, says Joyce Meng, MD, assistant professor at the Pat and Jim Calhoun Cardiology Center at UConn Health. If you like to follow a strict diet plan, go for it. If not, it\'s OK. \"Find what works for you.\"  Tricia Montgomery, 52, the founder of K9 Fit Club, knows first-hand how the right diet and lifestyle can help. For her, choosing healthy foods and planning small, frequent meals works well. \"I don\'t deny myself anything,\" she says. \"I still have dessert -- key lime pie, yum! -- and I love frozen gummy bears, but moderation is key.\"'),
(2, 'Exercise Every Day', 'The more active you are, the better, Meng says. Exercise boosts your heart health, builds muscle and bone strength, and wards off health problems.  Aim for 2 and a half hours of moderate activity, like brisk walking or dancing, every week. If you\'re OK with vigorous exercise, stick to 1 hour and 15 minutes a week of things like running or playing tennis. Add a couple of days of strength training, too.  If you\'re busy, try short bursts of activity throughout the day. Walk often. A good target is 10,000 steps a day. Take the stairs. Park your car far away from your destination.   Montgomery exercises every day, often with her dog. By adding lunges, squats, and stairs to a walk, she turns it into a power workout. \"I also am a huge Pilates fan,\" she says.'),
(3, 'Lose Weight', 'When you shed pounds you\'ll lower your risk of heart disease, type 2 diabetes, and cancer.'),
(4, 'Drink water and stay hydrated', 'Drink water regularly to stay healthy'),
(5, 'Get enough good sleep ', 'Sleep is an important part of a good health.your immune system functioning properly by getting sven to eight hours ofn sleep each night');

-- --------------------------------------------------------

--
-- Table structure for table `heartrate`
--

CREATE TABLE `heartrate` (
  `WEIGHTAGE` varchar(45) NOT NULL,
  `VALUE` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `heartrate`
--

INSERT INTO `heartrate` (`WEIGHTAGE`, `VALUE`) VALUES
('High(>100bpm)', 0.9),
('Low(<60bpm)', 0.5),
('Normal(60 to 100)', 0.1);

-- --------------------------------------------------------

--
-- Table structure for table `hereditary`
--

CREATE TABLE `hereditary` (
  `WEIGHTAGE` varchar(45) NOT NULL,
  `VALUE` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `hereditary`
--

INSERT INTO `hereditary` (`WEIGHTAGE`, `VALUE`) VALUES
('No', 0.1),
('Yes', 0.7);

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(45) NOT NULL,
  `PRICE` varchar(500) NOT NULL,
  `USED_FOR` varchar(45) NOT NULL,
  `INGREDIENTS` varchar(200) NOT NULL,
  `QUANTITY` varchar(45) NOT NULL,
  `MFG_DATE` date NOT NULL,
  `EXPIRY_DATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`ID`, `NAME`, `PRICE`, `USED_FOR`, `INGREDIENTS`, `QUANTITY`, `MFG_DATE`, `EXPIRY_DATE`) VALUES
(1, 'Aspirin', '20/Tablet', ' used to treat pain, fever', 'corn starch ,water,hydrogenated vegetable oil, stearic acid, talc, or aluminum stearate', '-1', '2015-01-26', '2018-11-20'),
(2, 'Beta blockers', '50/Tablet', 'used for pain', 'Acebutolol (Sectral)\r\nAtenolol (Tenormin)\r\nBisoprolol (Zebeta)\r\nMetoprolol (Lopressor, Toprol-XL)\r\nNadolol (Corgard)\r\nNebivolol (Bystolic)\r\nPropranolol (Inderal LA, InnoPran XL)', '0', '2013-05-15', '2017-12-26'),
(3, 'Mirtazapine', '70/tablet', 'To treat depression and sometimes obsessive c', 'Lactose monohydrate,corn starch,pregelatinized  starch,colloidal silicon dioxide,magesium stearate', '28', '2024-01-10', '2024-08-10');

-- --------------------------------------------------------

--
-- Table structure for table `medicine_booking`
--

CREATE TABLE `medicine_booking` (
  `BID` int(11) NOT NULL,
  `MEDICINEID` int(11) NOT NULL,
  `PATIENTID` int(11) NOT NULL,
  `NEEDED_DAYS` varchar(45) NOT NULL,
  `TOTAL_PRICE` float NOT NULL,
  `PRESCRIPTION` varchar(500) NOT NULL,
  `DATE` date NOT NULL,
  `STATUS` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `medicine_booking`
--

INSERT INTO `medicine_booking` (`BID`, `MEDICINEID`, `PATIENTID`, `NEEDED_DAYS`, `TOTAL_PRICE`, `PRESCRIPTION`, `DATE`, `STATUS`) VALUES
(1, 1, 1, '3 Days', 60, 'Suresh.txt', '2017-10-05', 'PAYED'),
(2, 2, 1, '3 Days', 60, 'Suresh481.txt', '2017-10-05', 'APPROVE'),
(3, 2, 2, '3 Days', 150, 'home.jpg', '2022-10-31', 'APPROVE'),
(4, 1, 2, '3 Days', 60, '1.pdf', '2024-02-14', 'pending'),
(6, 3, 2, '2 Days', 356, 'Suresh723.pdf', '2024-02-17', 'APPROVE'),
(7, 1, 2, '5 Days', 100, 'sara.avif', '2024-02-19', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `overweight`
--

CREATE TABLE `overweight` (
  `WEIGHTAGE` varchar(45) NOT NULL,
  `VALUE` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `overweight`
--

INSERT INTO `overweight` (`WEIGHTAGE`, `VALUE`) VALUES
('No', 0.1),
('Yes', 0.7);

-- --------------------------------------------------------

--
-- Table structure for table `patienthistory`
--

CREATE TABLE `patienthistory` (
  `p_id` int(11) NOT NULL,
  `p_username` varchar(45) NOT NULL,
  `p_age` varchar(45) NOT NULL,
  `p_gender` varchar(45) NOT NULL,
  `p_smoking` varchar(45) NOT NULL,
  `p_overweight` varchar(45) NOT NULL,
  `p_heriditary` varchar(45) NOT NULL,
  `p_bad_cholesterol_level` varchar(45) NOT NULL,
  `p_blood_sugar_level` varchar(45) NOT NULL,
  `p_alcohol_intake` varchar(45) NOT NULL,
  `p_high_salt_diet` varchar(45) NOT NULL,
  `p_bloodpressure` varchar(45) NOT NULL,
  `p_sedentary_life_cycle` varchar(45) NOT NULL,
  `p_exercise_habit` varchar(45) NOT NULL,
  `p_heart_rate` varchar(45) NOT NULL,
  `p_high_saturated_fat_diet` varchar(45) NOT NULL,
  `p_weightage` float NOT NULL,
  `p_risklevel` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `patienthistory`
--

INSERT INTO `patienthistory` (`p_id`, `p_username`, `p_age`, `p_gender`, `p_smoking`, `p_overweight`, `p_heriditary`, `p_bad_cholesterol_level`, `p_blood_sugar_level`, `p_alcohol_intake`, `p_high_salt_diet`, `p_bloodpressure`, `p_sedentary_life_cycle`, `p_exercise_habit`, `p_heart_rate`, `p_high_saturated_fat_diet`, `p_weightage`, `p_risklevel`) VALUES
(1, 'null', '60', 'male', 'Never', 'Yes', 'Yes', 'High 160 to 200', 'Low(<90)', 'Never', 'No', 'High:>200/160', 'Yes', 'High if age>50', 'Low(<60bpm)', 'Yes', 11.5, 'high'),
(2, 'leela', '57', 'female', 'Current', 'No', 'No', 'High 160 to 200', 'Low(<90)', 'Never', 'No', 'High:>200/160', 'Yes', 'High if age>50', 'Normal(60 to 100)', 'No', 4.9, 'medium'),
(3, 'sudarsanp', '60', 'male', 'Never', 'Yes', 'Yes', 'Normal<160', 'Low(<90)', 'Past', 'Yes', 'Low:<119/79', 'Yes', 'High if age>50', 'High(>100bpm)', 'Yes', 7.8, 'high'),
(4, 'govind', '65', 'male', 'Current', 'Yes', 'Yes', 'Normal<160', 'Low(<90)', 'Past', 'No', 'Low:<119/79', 'Yes', 'High if age<30', 'Low(<60bpm)', 'Yes', 6.2, 'high'),
(5, 'sudarsanp', '', '', 'Never', 'No', 'Yes', 'Normal<160', 'Low(<90)', 'Current', 'Yes', 'High:>200/160', 'No', 'High if age>50', 'Low(<60bpm)', 'Yes', 6.7, 'high'),
(6, 'sudarsanp', '70', 'male', 'Current', 'Yes', 'No', 'High 160 to 200', 'High:>120 and <400', 'Current', 'No', 'Low:<119/79', 'Yes', 'High if age<30', 'High(>100bpm)', 'No', 6.3, 'high'),
(7, 'leela', '56', 'female', 'Past', 'Yes', 'Yes', 'High 160 to 200', 'High:>120 and <400', 'Never', 'Yes', 'Low:<119/79', 'Yes', 'Never', 'High(>100bpm)', 'Yes', 50, 'medium'),
(8, 'leela', '57', 'female', 'Past', 'Yes', 'Yes', 'High 160 to 200', 'High:>120 and <400', 'Never', 'No', 'High:>200/160', 'Yes', 'Never', 'High(>100bpm)', 'Yes', 7.9, 'high');

-- --------------------------------------------------------

--
-- Table structure for table `patienthistoryid`
--

CREATE TABLE `patienthistoryid` (
  `ID` varchar(45) NOT NULL,
  `PID` int(11) NOT NULL,
  `PATIENTID` int(11) NOT NULL,
  `DATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `patienthistoryid`
--

INSERT INTO `patienthistoryid` (`ID`, `PID`, `PATIENTID`, `DATE`) VALUES
('govind-4-2463', 4, 3, '2017-10-06'),
('leela-2-3242', 2, 2, '2017-10-05'),
('leela-8-5087', 8, 2, '2024-02-17'),
('sudarsanp-3-3292', 3, 1, '2017-10-05'),
('sudarsanp-5-4653', 5, 1, '2017-10-06'),
('sudarsanp-6-8886', 6, 1, '2017-10-15');

-- --------------------------------------------------------

--
-- Table structure for table `patient_registration`
--

CREATE TABLE `patient_registration` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(30) NOT NULL,
  `AGE` int(11) NOT NULL,
  `GENDER` varchar(10) NOT NULL,
  `STATEID` int(11) NOT NULL,
  `CITY` varchar(30) NOT NULL,
  `BLOODGROUP` varchar(10) NOT NULL,
  `HEIGHT` float NOT NULL,
  `WEIGHT` float NOT NULL,
  `CONTACT NO` varchar(10) NOT NULL,
  `PHOTO` varchar(500) NOT NULL,
  `EMAIL` varchar(30) NOT NULL,
  `USERNAME` varchar(20) NOT NULL,
  `PASSWORD` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `patient_registration`
--

INSERT INTO `patient_registration` (`ID`, `NAME`, `AGE`, `GENDER`, `STATEID`, `CITY`, `BLOODGROUP`, `HEIGHT`, `WEIGHT`, `CONTACT NO`, `PHOTO`, `EMAIL`, `USERNAME`, `PASSWORD`) VALUES
(1, 'Sudarsan p', 70, 'male', 2, 'CHENNAI', 'B+ve', 169, 78, '8790987678', 'img5.jpg', 'st@gmail.com', 'sudarsanp', '1234'),
(2, 'Leela', 53, 'female', 2, 'COIMBATORE', 'A+ve', 156, 69, '8987656789', 'images (3).jpg', 'leela@gmail.com', 'leela', '12345'),
(3, 'Govind', 65, 'male', 3, 'MYSORE', 'AB+ve', 170, 70, '7656789898', 'Ambassador.jpg', 'gk@gmail.com', 'govind', '1234'),
(4, 'Rahul R', 35, 'male', 1, 'KASARAGOD', 'A+ve', 165, 75, '9865864587', 'profile4.jfif', 'rahul@gmail.com', 'rahul', 'rahul');

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `PID` int(11) NOT NULL,
  `ID` varchar(45) NOT NULL,
  `PATIENT` varchar(45) NOT NULL,
  `DOCTOR` varchar(45) NOT NULL,
  `PRESCRIPTION` varchar(200) NOT NULL,
  `DATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`PID`, `ID`, `PATIENT`, `DOCTOR`, `PRESCRIPTION`, `DATE`) VALUES
(1, '1--6032', 'sudarsan', '1', 'Suresh.pdf', '2017-10-05'),
(2, '2-4-329', 'leela', '1', 'Suresh52.pdf', '2024-02-17'),
(3, '2-8-9021', 'leela', '1', 'Suresh723.pdf', '2024-02-17'),
(4, '2-9-9346', 'leela', '1', 'Suresh467.pdf', '2024-02-19'),
(7, '2-10-2302', 'leela', '1', 'Suresh420.pdf', '2024-02-28');

-- --------------------------------------------------------

--
-- Table structure for table `reject`
--

CREATE TABLE `reject` (
  `RID` int(11) NOT NULL,
  `BOOKID` int(11) NOT NULL,
  `PATIENTID` int(11) NOT NULL,
  `REASON` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salt`
--

CREATE TABLE `salt` (
  `WEIGHTAGE` varchar(45) NOT NULL,
  `VALUE` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `salt`
--

INSERT INTO `salt` (`WEIGHTAGE`, `VALUE`) VALUES
('No', 0.1),
('Yes', 0.9);

-- --------------------------------------------------------

--
-- Table structure for table `sedentarylifestyle`
--

CREATE TABLE `sedentarylifestyle` (
  `WEIGHTAGE` varchar(45) NOT NULL,
  `VALUE` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sedentarylifestyle`
--

INSERT INTO `sedentarylifestyle` (`WEIGHTAGE`, `VALUE`) VALUES
('No', 0.1),
('Yes', 0.7);

-- --------------------------------------------------------

--
-- Table structure for table `smoking`
--

CREATE TABLE `smoking` (
  `WEIGHTAGE` varchar(45) NOT NULL,
  `VALUE` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `smoking`
--

INSERT INTO `smoking` (`WEIGHTAGE`, `VALUE`) VALUES
('Current', 0.6),
('Never', 0.1),
('Past', 0.3);

-- --------------------------------------------------------

--
-- Table structure for table `specialization`
--

CREATE TABLE `specialization` (
  `sid` int(11) NOT NULL,
  `SPECIALIZATION` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `specialization`
--

INSERT INTO `specialization` (`sid`, `SPECIALIZATION`) VALUES
(1, 'cardiologist'),
(2, 'Cardiac Electrophysiologist'),
(3, 'Neurologist'),
(4, 'Cardiac Surgeon'),
(5, 'Psychiatrist'),
(6, 'Pediatrician'),
(7, 'Nephrologist'),
(8, 'Urologist'),
(9, 'Dermatologist'),
(10, 'Ent'),
(11, 'Orthopedist');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `stateid` int(11) NOT NULL,
  `STATENAME` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`stateid`, `STATENAME`) VALUES
(1, 'KERALA'),
(2, 'TAMILNADU'),
(3, 'KARNADAKA'),
(4, 'ANDHRAPRADESH'),
(5, 'MAHARASHTRA');

-- --------------------------------------------------------

--
-- Table structure for table `symptom_patient`
--

CREATE TABLE `symptom_patient` (
  `SID` int(11) NOT NULL,
  `ID` varchar(45) NOT NULL,
  `PATIENT` varchar(45) NOT NULL,
  `SYMPTOMS` varchar(100) NOT NULL,
  `SPECIALIZATION` varchar(45) NOT NULL,
  `DOCTORID` int(11) NOT NULL,
  `STATUS` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `symptom_patient`
--

INSERT INTO `symptom_patient` (`SID`, `ID`, `PATIENT`, `SYMPTOMS`, `SPECIALIZATION`, `DOCTORID`, `STATUS`) VALUES
(1, '1--6032', 'sudarsan', 'pain', 'cardiologist', 1, 'SEND'),
(2, '1--6032', 'sudarsan', 'pressure', 'cardiologist', 1, 'SEND'),
(3, '1--6032', 'sudarsan', 'squeezing', 'cardiologist', 1, 'SEND'),
(4, '1--6032', 'sudarsan', 'feeling of fullness in the center of the chest that lasts more than a few minutes', 'cardiologist', 1, 'SEND'),
(5, '2-4-329', 'leela', 'Wheezing', 'cardiologist', 1, 'SEND'),
(6, '2-4-329', 'leela', 'asthma', 'cardiologist', 1, 'SEND'),
(7, '2-4-329', 'leela', 'shortness of breath', 'cardiologist', 1, 'SEND'),
(8, '2-4-329', 'leela', 'Coughing', 'cardiologist', 1, 'SEND'),
(9, '2-8-9021', 'leela', 'Chest pain', 'cardiologist', 1, 'SEND'),
(10, '2-9-9346', 'leela', 'Ear pain,throat pain', 'cardiologist', 1, 'SEND'),
(11, '2-10-2302', 'leela', 'Chest pain', 'cardiologist', 1, 'SEND'),
(13, '2-11-4020', 'leela', 'pain', 'cardiologist', 1, 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `userquery`
--

CREATE TABLE `userquery` (
  `QID` int(11) NOT NULL,
  `P_HISTORYID` varchar(45) NOT NULL,
  `PATIENTID` int(11) NOT NULL,
  `DOCTORID` int(11) NOT NULL,
  `SUBJECT` varchar(45) NOT NULL,
  `DESCRIPTION` varchar(50) NOT NULL,
  `FILE` varchar(500) NOT NULL,
  `DATE` date NOT NULL,
  `STATUS` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userquery`
--

INSERT INTO `userquery` (`QID`, `P_HISTORYID`, `PATIENTID`, `DOCTORID`, `SUBJECT`, `DESCRIPTION`, `FILE`, `DATE`, `STATUS`) VALUES
(1, 'leela-2-3242', 2, 1, 'heart attack', 'risk level of heart attack is medium   ', 'leela-2-3242.pdf', '2017-10-05', 'SEND'),
(2, 'govind-4-2463', 3, 1, 'heart attack', 'level is high', 'govind-4-2463.pdf', '2017-10-06', 'pending'),
(3, 'sudarsanp-3-3292', 1, 1, 'dsdg', 'agg', 'sudarsanp-3-3292.pdf', '2017-10-15', 'SEND');

-- --------------------------------------------------------

--
-- Table structure for table `userqueryreply`
--

CREATE TABLE `userqueryreply` (
  `RID` int(11) NOT NULL,
  `QID` int(11) NOT NULL,
  `P_HISTORYID` varchar(45) NOT NULL,
  `DOCTORID` int(11) NOT NULL,
  `DETAILS` varchar(50) NOT NULL,
  `DATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userqueryreply`
--

INSERT INTO `userqueryreply` (`RID`, `QID`, `P_HISTORYID`, `DOCTORID`, `DETAILS`, `DATE`) VALUES
(1, 1, 'leela-2-3242', 1, 'Suresh481.pdf', '2017-10-05'),
(2, 3, 'sudarsanp-3-3292', 1, 'Suresh204.pdf', '2017-10-15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `age`
--
ALTER TABLE `age`
  ADD PRIMARY KEY (`WEIGHTAGE`);

--
-- Indexes for table `alcoholintake`
--
ALTER TABLE `alcoholintake`
  ADD PRIMARY KEY (`WEIGHTAGE`);

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `article_files`
--
ALTER TABLE `article_files`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `badcholesterol`
--
ALTER TABLE `badcholesterol`
  ADD PRIMARY KEY (`WEIGHTAGE`);

--
-- Indexes for table `bloodpressure`
--
ALTER TABLE `bloodpressure`
  ADD PRIMARY KEY (`WEIGHTAGE`);

--
-- Indexes for table `bloodsugar`
--
ALTER TABLE `bloodsugar`
  ADD PRIMARY KEY (`WEIGHTAGE`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`CITYID`);

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`CID`);

--
-- Indexes for table `complaintreply`
--
ALTER TABLE `complaintreply`
  ADD PRIMARY KEY (`R_ID`);

--
-- Indexes for table `diet`
--
ALTER TABLE `diet`
  ADD PRIMARY KEY (`DID`);

--
-- Indexes for table `diet_plans`
--
ALTER TABLE `diet_plans`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `disease_details`
--
ALTER TABLE `disease_details`
  ADD PRIMARY KEY (`DID`);

--
-- Indexes for table `doctor_registration`
--
ALTER TABLE `doctor_registration`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `excercisedetails_tb`
--
ALTER TABLE `excercisedetails_tb`
  ADD PRIMARY KEY (`EID`);

--
-- Indexes for table `exercise`
--
ALTER TABLE `exercise`
  ADD PRIMARY KEY (`WEIGHTAGE`);

--
-- Indexes for table `fat`
--
ALTER TABLE `fat`
  ADD PRIMARY KEY (`WEIGHTAGE`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `feedbackreply`
--
ALTER TABLE `feedbackreply`
  ADD PRIMARY KEY (`R_ID`);

--
-- Indexes for table `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`WEIGHTAGE`);

--
-- Indexes for table `healthtip`
--
ALTER TABLE `healthtip`
  ADD PRIMARY KEY (`HID`);

--
-- Indexes for table `heartrate`
--
ALTER TABLE `heartrate`
  ADD PRIMARY KEY (`WEIGHTAGE`);

--
-- Indexes for table `hereditary`
--
ALTER TABLE `hereditary`
  ADD PRIMARY KEY (`WEIGHTAGE`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `medicine_booking`
--
ALTER TABLE `medicine_booking`
  ADD PRIMARY KEY (`BID`);

--
-- Indexes for table `overweight`
--
ALTER TABLE `overweight`
  ADD PRIMARY KEY (`WEIGHTAGE`);

--
-- Indexes for table `patienthistory`
--
ALTER TABLE `patienthistory`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `patienthistoryid`
--
ALTER TABLE `patienthistoryid`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `patient_registration`
--
ALTER TABLE `patient_registration`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`PID`);

--
-- Indexes for table `reject`
--
ALTER TABLE `reject`
  ADD PRIMARY KEY (`RID`);

--
-- Indexes for table `salt`
--
ALTER TABLE `salt`
  ADD PRIMARY KEY (`WEIGHTAGE`);

--
-- Indexes for table `sedentarylifestyle`
--
ALTER TABLE `sedentarylifestyle`
  ADD PRIMARY KEY (`WEIGHTAGE`);

--
-- Indexes for table `smoking`
--
ALTER TABLE `smoking`
  ADD PRIMARY KEY (`WEIGHTAGE`);

--
-- Indexes for table `specialization`
--
ALTER TABLE `specialization`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`stateid`);

--
-- Indexes for table `symptom_patient`
--
ALTER TABLE `symptom_patient`
  ADD PRIMARY KEY (`SID`);

--
-- Indexes for table `userquery`
--
ALTER TABLE `userquery`
  ADD PRIMARY KEY (`QID`);

--
-- Indexes for table `userqueryreply`
--
ALTER TABLE `userqueryreply`
  ADD PRIMARY KEY (`RID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `article_files`
--
ALTER TABLE `article_files`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `CITYID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
  MODIFY `CID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `complaintreply`
--
ALTER TABLE `complaintreply`
  MODIFY `R_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `diet`
--
ALTER TABLE `diet`
  MODIFY `DID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `diet_plans`
--
ALTER TABLE `diet_plans`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `disease_details`
--
ALTER TABLE `disease_details`
  MODIFY `DID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `doctor_registration`
--
ALTER TABLE `doctor_registration`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `excercisedetails_tb`
--
ALTER TABLE `excercisedetails_tb`
  MODIFY `EID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `feedbackreply`
--
ALTER TABLE `feedbackreply`
  MODIFY `R_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `healthtip`
--
ALTER TABLE `healthtip`
  MODIFY `HID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `medicine_booking`
--
ALTER TABLE `medicine_booking`
  MODIFY `BID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `patienthistory`
--
ALTER TABLE `patienthistory`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `patient_registration`
--
ALTER TABLE `patient_registration`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `prescription`
--
ALTER TABLE `prescription`
  MODIFY `PID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `reject`
--
ALTER TABLE `reject`
  MODIFY `RID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `specialization`
--
ALTER TABLE `specialization`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `stateid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `symptom_patient`
--
ALTER TABLE `symptom_patient`
  MODIFY `SID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `userquery`
--
ALTER TABLE `userquery`
  MODIFY `QID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `userqueryreply`
--
ALTER TABLE `userqueryreply`
  MODIFY `RID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
