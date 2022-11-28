-- Use this file to define your SQL tables
-- The SQL in this file will be executed when you run `npm run setup-db`
DROP TABLE IF EXISTS animals;
DROP TABLE IF EXISTS books_data;

CREATE TABLE animals (
	id INT GENERATED ALWAYS AS IDENTITY,
	common_name VARCHAR(50),
	scientific_name VARCHAR(50),
	is_pet BOOL
);
insert into animals (common_name, scientific_name, is_pet) values 
('Thrasher, curve-billed', 'Toxostoma curvirostre', false), 
('Ringtail, common', 'Pseudocheirus peregrinus', true), 
('Toucan, white-throated', 'Ramphastos tucanus', false), 
('Goose, andean', 'Chloephaga melanoptera', false),
('Ringtail, common', 'Pseudocheirus peregrinus', true),
('Toucan, white-throated', 'Ramphastos tucanus', false),
('Goose, andean', 'Chloephaga melanoptera', false),
('Skimmer, four-spotted', 'Libellula quadrimaculata', true),
('Australian magpie', 'Gymnorhina tibicen', false),
('Brown pelican', 'Pelecanus occidentalis', false),
('Moose', 'Alces alces', true),
('Common turkey', 'Meleagris gallopavo', false),
('Eastern grey kangaroo', 'Macropus giganteus', true),
('White spoonbill', 'Platalea leucordia', true),
('Cardinal, red-capped', 'Paroaria gularis', true),
('Western spotted skunk', 'Spilogale gracilis', true),
('Common goldeneye', 'Bucephala clangula', true),
('Little blue penguin', 'Eudyptula minor', true);


DROP TABLE IF EXISTS CAR_DATA;

CREATE TABLE CAR_DATA (
	id INT GENERATED ALWAYS AS IDENTITY,
	model VARCHAR(50),
	make VARCHAR(50),
	year INT
);
insert into CAR_DATA (model, make, year) values 
('Avalanche', 'Chevrolet', 2007),
('300', 'Chrysler', 2010),
('Focus', 'Ford', 2001),
('Sorento', 'Kia', 2009),
('G35', 'Infiniti', 2008),
('VUE', 'Saturn', 2008),
('Wrangler', 'Jeep', 2001),
('Pajero', 'Mitsubishi', 1994),
('DeVille', 'Cadillac', 1998),
('3500', 'Chevrolet', 2000),
('Xterra', 'Nissan', 2004),
('Expo', 'Mitsubishi', 1993),
('Caliber', 'Dodge', 2009),
('Insight', 'Honda', 2011),
('944', 'Porsche', 1988);


CREATE TABLE books_data (
	id INT GENERATED ALWAYS AS IDENTITY,
	title VARCHAR(50),
	isbn_number VARCHAR(50),
	quote TEXT
);
INSERT INTO books_data (title, isbn_number, quote) VALUES 
('Regrant', '505522812-1', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst.'),
('Zamit', '836980782-8', 'Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc.'),
('Bigtax', '909675990-7', 'Donec quis orci eget orci vehicula condimentum.'),
('Vagram', '928846466-2', 'Pellentesque viverra pede ac diam.'),
('Subin', '451047688-4', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo.'),
('It', '681786985-4', 'Nulla tempus.'),
('Regrant', '920290658-0', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae, Mauris viverra diam vitae quam.'),
('Transcof', '590482105-0', 'Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci.'),
('Zoolab', '601690250-0', 'Phasellus in felis.'),
('Sub-Ex', '155900774-5', 'Maecenas pulvinar lobortis est.'),
('Fix San', '161951628-4', 'Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.'),
('Regrant', '702218725-8', 'Duis ac nibh.'),
('Keylex', '648398352-2', 'Duis bibendum.'),
('Flexidy', '730954847-7', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae, Mauris viverra diam vitae quam.'),
('Rank', '165278636-8', 'Nulla suscipit ligula in lacus.');


DROP TABLE IF EXISTS drugs;

CREATE TABLE drugs (
	id INT GENERATED ALWAYS AS IDENTITY,
	company VARCHAR(50),
	otc_name TEXT,
	rx_name TEXT
);

INSERT INTO drugs (company, otc_name, rx_name) VALUES 
('Cardinal Health', 'leader sinus congestion and pain', 'Acetaminophen, Phenylephrine HCl'),
('Vertical Pharmaceuticals, LLC', 'ConZip', 'tramadol hydrochloride'),
('Rebel Distributors Corp', 'Ranitidine Hydrochloride', 'Ranitidine Hydrochloride'),
('Sandoz Inc', 'Carbidopa, Levodopa, and Entacapone', 'Carbidopa, Levodopa, and Entacapone'),
('Major Pharmaceuticals', 'Clonazepam', 'Clonazepam'),
('Barr Laboratories Inc.', 'Dextroamphetamine Saccharate, Amphetamine Aspartate, Dextroamphetamine Sulfate and Amphetamine Sulfate', 'Dextroamphetamine Saccharate, Amphetamine Aspartate, Dextroamphetamine Sulfate and Amphetamine Sulfate'),
('Medsep Corporation', 'Nutricel Additive System - AS-3', 'CP2D/AS-3 Anticoagulant and Additive System'),
('REMEDYREPACK INC.', 'isosorbide mononitrate', 'isosorbide mononitrate'),
('Cardinal Health', 'Leader Maximum Strength Invisible Acne', 'Benzoyl Peroxide 10%'),
('Rebel Distributors Corp', 'Prednisone', 'Prednisone'),
('Family Dollar Services Inc', 'family wellness hemorrhoidal', 'cocoa butter, phenylephrine hcl'),
('DIRECT RX', 'AZITHROMYCIN', 'AZITHROMYCIN'),
('Nephron Pharmaceuticals Corporation', 'S2', 'racepinephrine hydrochloride'),
('WALGREEN CO.', 'Ibuprofen', 'Ibuprofen'),
('Kareway Product, Inc.', 'Pink Bismuth', 'Bismuth Subsalicylate');

DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
	id INT GENERATED ALWAYS AS IDENTITY,
	position VARCHAR(50),
	skills VARCHAR(50),
	education VARCHAR(50)
);
insert into employees (id, position, skills, education) values 
('Programmer Analyst II', 'Twisted', 'Centro Universitario de Occidente');
('Account Coordinator', 'EBSD', 'Linton University College');
('Senior Quality Engineer', 'Visual Basic', 'Quinnipiac College');
('Marketing Assistant', 'Key Opinion Leaders', 'Juntendo University');
('Computer Systems Analyst IV', 'OS/390', 'University Campus Suffolk');
('Technical Writer', 'BPMN', 'Universidade de Marília');
('Civil Engineer', 'DSDM', 'Ludwik Solski State Academy of Theatre in Cracow');
('Executive Secretary', 'Sungard GMI', 'Claremont Lincoln University');
('Food Chemist', 'Equity Trading', 'State University of New York College at Oneonta');
('Quality Control Specialist', 'MCITP', 'Universidad Panamericana');
('Human Resources Assistant I', 'KDB+', 'Universidade Federal Rural do Semi-Árido');
('Senior Developer', 'VNA', 'Universitas Tanjungpura');
('Tax Accountant', 'IBM Content Manager', 'Zhejiang Forestry University');
('Recruiting Manager', 'Hydrogeology', 'Gombe State University');
('Marketing Assistant', 'Eclipse CDT', 'Durham College');
