class GovSchemsModel {
  String schemeImagePath;
  String schemeTitle;
  String schemeDescription;
  String portalLink;
  String referenceVideo;
  String helplineNo;

  GovSchemsModel(
      {required this.schemeImagePath,
      required this.schemeTitle,
      required this.schemeDescription,
      required this.portalLink,
      required this.referenceVideo,
      required this.helplineNo});
}

List<GovSchemsModel> govShemeList = [
  GovSchemsModel(
      schemeImagePath: "assets/images/PMKisan.png",
      schemeTitle: "PM-Kisan",
      schemeDescription: "PM Kisan is a Central Sector scheme with 100% funding from Government of India. Under the scheme, an income support of ₹6,000 per year, in three equal installments, will be provided to all land-holding farmer families. The family for the scheme includes husband, wife, and minor children.",
      portalLink:"https://pmkisan.gov.in/",
      referenceVideo:"https://youtu.be/tlkzyNz0c38?si=jsYGSj69spz_Ykly" ,
      helplineNo:"99989898989"),
       GovSchemsModel(
      schemeImagePath: "assets/images/PMKisan.png",
      schemeTitle: "PM-Kisan",
      schemeDescription: "PM Kisan is a Central Sector scheme with 100% funding from Government of India. Under the scheme, an income support of ₹6,000 per year, in three equal installments, will be provided to all land-holding farmer families. The family for the scheme includes husband, wife, and minor children.",
      portalLink:"https://pmkisan.gov.in/",
      referenceVideo:"https://youtu.be/tlkzyNz0c38?si=jsYGSj69spz_Ykly" ,
      helplineNo:"99989898989"),
       GovSchemsModel(
      schemeImagePath: "assets/images/PMKisan.png",
      schemeTitle: "PM-Kisan",
      schemeDescription: "PM Kisan is a Central Sector scheme with 100% funding from Government of India. Under the scheme, an income support of ₹6,000 per year, in three equal installments, will be provided to all land-holding farmer families. The family for the scheme includes husband, wife, and minor children.",
      portalLink:"https://pmkisan.gov.in/",
      referenceVideo:"https://youtu.be/tlkzyNz0c38?si=jsYGSj69spz_Ykly" ,
      helplineNo:"99989898989")
];
