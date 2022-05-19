namespace sap.capire.bookshop;

using { Currency, managed, sap } from '@sap/cds/common';

entity Books : managed,additionalInfo {
  key ID   : Integer;
  title    : localized String(111);
  descr    : localized String(1111);
  author   : Association to Authors;
  stock    : Integer;
  price    : Decimal(9,2);
  currency : Currency;
    // currency_code: String;
  genre_ID: String;
}


entity Authors : additionalInfo {
  key ID : Integer;
  name   : String(111);
  dateOfBirth  : Date;
  dateOfDeath  : Date;
  placeOfBirth : String;
  placeOfDeath : String;
}


aspect additionalInfo{
    genre: String(100);
    language: String(200);
    place: String(100);
}