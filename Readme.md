1.What is PostgreSQL?
উত্তর: পোস্টগ্রেস এসকিউএল হলো খুবই শক্তিশালী, ওপেন সোর্স রিলেশনাল ডাটাবেজ সিস্টেম । যা ডাটা সংরক্ষণ, সুসজ্জিত ডাটা মেনেজ করার জন্য ব্যবহৃত হয়।  এটি এসকিউএল সাপোর্ট করে যা ডাটা মেনুপুলেট করতে ও কুয়েরি করতে সহজ করে দেয় ।

2.What is the purpose of a database schema in PostgreSQL?
উত্তর: ডাটাবেজ স্কিমা হচ্ছে েএকটি লজিকাল গ্রুপিং যেখানে টেবিল, ভিউ, ফাংশন, টাইপ ইত্যাদি ডাটাবেজ আজেক্টগুলো সজ্জিত থাকে । ডেটাবেজ স্কিমা ব্যবহার করে সম্পর্কিত ডাটাগুলেঅ আলাদা আলাদা গ্রুপে রাখা যায় বড় বড় ডাটাবেজ অজেক্টগুলো মেনেজ করা সহজ হয় ।

3.What is the difference between the VARCHAR and CHAR data types?
উত্তর: 
CHAR:এটির পূর্ণনাম হলো character. যতটুকু length ডিফাইন করা হয় ততটুকু জায়গা নেয় । character তুলনামুলক কম হলে স্পেস দিয়ে ফিল করে দেয়। length নির্দিষ্ট হওয়ায় পারফমেন্স ভালো হয় । যখন ডাটা দৈর্ঘ্য নিদির্ষ্ট হয় তখন ব্যবহার করা হয় । 
VARCHAR: এটির পূর্ণনাম হলো Variable character. যতটুুকু ডাটা ততটুকু জায়গা নেওয়ায় একটু ফ্লেক্সিবল বেশি । পারর্ফমেন্স তেমন কোনো পার্থক্য নেই । যখন আপনার ডাটার পরির্বতন হওয়ার সম্ভাবনা থাকে তখন ব্যবহার করা যায় ।

4.Explain the purpose of the WHERE clause in a SELECT statement.
উত্তর: যখন কোনো টেবিল থেকে নিদির্ষ্ট কিছু রেকর্ড ফিল্টার করে নিয়ে আসার প্রয়োজন হয় তখন WHERE clause টি ব্যবহৃত হয় । এখানে নিদিষ্ট কিছু শর্ত দেয়া হয় যা ফুলফিল করলে ডাটা পাওয়া যায় । 
example:
SELECT ranger_name FROM rangers
    WHERE ranger_age >= 18 
    

5.Explain the Primary Key and Foreign Key concepts in PostgreSQL.
উত্তর: পোস্টগ্রেস এস কিউ এল (অন্য রিলেশনাল ডাটাবেজসহ) Primary এবং  Foreign Key একটি গুরুত্বপূর্ণ কনসেপ্ট । Primary Key একটি টেবিলের েইউনিক রো ডিফাইন করে অন্যদিকে  Foreign Key দুইটি ভিন্ন টেবিলের মধ্যকার সংযোগ স্থাপন করে । একটি টেবিলের  Primary Key অন্য টেবিলে Foreign Key নামে থাকে ।


7.How can you modify data using UPDATE statements?
উত্তর: UPDATE statements মুলত টেবিলের কোনো রেকর্ড পরিবর্তন করার জন্য ব্যহহৃত হয় । মনে করুন students নামের একটা টেবিল আছে যেখানে subject  পরিবর্তন science থেকে commerce করার প্রয়োজন হলে নিচের সিনটেক্স অনৃসরন করে
UPDATE students
    SET subject = 'commerce'
    WHERE condition_here

8.What is the significance of the JOIN operation, and how does it work in PostgreSQL?
উত্তর: পোস্টগ্রেস এস কিউ এল - এ  JOIN operation দুইটি ভিন্ন ভিন্ন টেবিলের সাথে সংযোগ স্থাপনের জন্য ব্যবহৃত হয় । যেমন ১ শিক্ষার্থী নাম একটা টেবিলে আছে  এবং  অন্য টেবিলের শিক্ষার্থীর স্টাডি টাইম আছে । একই সাথে শিক্ষাথীর নাম ও স্টাডি টাইম বের করার জন্য JOIN operation  ব্যবহার করা যায় । 

9.Explain the GROUP BY clause and its role in aggregation operations.
উত্তর: aggregation operations এ GROUP BY clause এর ব্যবহার অনেক বেশি । aggregation operations বলতে বুঝায় অনেকগুলো ডাটা নিয়ে একটা সিঙ্গেল মান রির্টান করা । এই অনেকগুলো ডাটা সমষ্টি হচ্ছে একটা গ্রুপ । ১ জন ছাত্রের ১ সপ্তাহের কাজ  GROUP BY এর সাহায্যে করা যায় । যেমন: মোট কত ঘন্টা পড়ল, গড়ে কত ঘন্টা পড়ল ইত্যাদি ।

10.How can you calculate aggregate functions like COUNT(), SUM(), and AVG() in PostgreSQL?
উত্তর:  পোস্টগ্রেস এস কিউ এল - এ  aggregate ফাংশন যেমন COUNT(), SUM(), and AVG() ব্যবহার করে কোনো টেবিলের অনেকগুলো রো থেকে একটি মান বের করা হয় । যেমন: একটি টেবিল আছে যেখানে ১০ জন শিক্ষার্থী
আছে । প্রত্যেক েএর গড় মার্ক বের করার জন্য AVG(), মোট মার্ক বের করার জন্যে SUM() এবং একই নামের কতজন শিক্ষার্থী আছে তা বের করতে  COUNT() ব্যবহার করতে পারেন ।
