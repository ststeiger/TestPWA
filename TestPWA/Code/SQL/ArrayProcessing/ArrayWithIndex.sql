
DECLARE @json nvarchar(MAX)

SET @json = N'[
  {
    "km_uid": "f0be1c49-2579-46dd-8516-d7395b932ebb",
    "zn_uid": "82788a5b-7c2c-41be-9012-6fdcad413903"
  },
  {
    "km_uid": "387308ca-cbc6-4b72-b27f-57f72813c8eb",
    "zn_uid": "ffae149c-8d31-4950-bdf3-6a1c0d752ac2"
  },
  {
    "km_uid": "c9159663-89bf-4a77-9fdc-aa985fddec35",
    "zn_uid": "07c03726-e176-4716-aae2-ccfcb1e98650"
  },
  {
    "km_uid": "d3cf3fe9-1c15-4c61-9f93-9d347683d69d",
    "zn_uid": "a1e20c96-a61d-4fa9-b3d2-a4d99e9d4475"
  },
  {
    "km_uid": "8667668f-d169-4f52-b30f-20f6a9b44f30",
    "zn_uid": "08acf5f7-76b4-4192-b395-cd4fd2039ab7"
  },
  {
    "km_uid": "c5305f29-3c0f-401e-b56b-515e02449f8e",
    "zn_uid": "93a46cb9-e0ae-4701-8e96-2c1a319d61a1"
  },
  {
    "km_uid": "4dcbdba3-3592-457a-aeb7-aff00ac9f2fb",
    "zn_uid": "22c93525-c05c-4131-a1a3-fd5ab076dfff"
  },
  {
    "km_uid": "2a0ec964-2d12-491b-9e7c-9be04d6a9263",
    "zn_uid": "08acf5f7-76b4-4192-b395-cd4fd2039ab7"
  },
  {
    "km_uid": "7cd31e24-dcce-4f43-9998-61d9e2b0abfa",
    "zn_uid": "504da849-7e71-4c84-ba25-6515f1e6a1fb"
  },
  {
    "km_uid": "6b0c1875-20fe-463f-9b08-ae9102eaea42",
    "zn_uid": "1cb1ccf6-aa67-4bf6-90ca-a8ed33ec8f64"
  },
  {
    "km_uid": "75e140ba-2a46-4cf2-ac51-ea5ea0e632b4",
    "zn_uid": "22c93525-c05c-4131-a1a3-fd5ab076dfff"
  },
  {
    "km_uid": "de887275-884c-4430-bb2d-305cd21a43c7",
    "zn_uid": "dbc862e6-7acd-4d2c-8698-da3f47e9ce95"
  },
  {
    "km_uid": "c466a670-2699-4649-a4fe-bc00a28c2c6c",
    "zn_uid": "105e51bf-3f01-441a-83f9-9a90d8054e8c"
  },
  {
    "km_uid": "eaf118d3-8ace-47bb-bc11-4803fd9cc1cb",
    "zn_uid": "117a6185-772b-457a-a1fc-b43d568a52e2"
  },
  {
    "km_uid": "a8e9f1fe-1db3-437f-a52e-7d3c684ba10c",
    "zn_uid": "d572156d-fcf4-4263-a78e-25c239b45361"
  },
  {
    "km_uid": "c3859741-8362-4efe-a3e6-f0b78bf3275d",
    "zn_uid": "08acf5f7-76b4-4192-b395-cd4fd2039ab7"
  },
  {
    "km_uid": "6ad84973-cb02-4f33-bba4-29861e23db6c",
    "zn_uid": "22c93525-c05c-4131-a1a3-fd5ab076dfff"
  },
  {
    "km_uid": "43329238-085d-4589-b39f-4ef4da316726",
    "zn_uid": "3285176f-72f5-429d-8bb8-cdb897f87ab1"
  },
  {
    "km_uid": "e4d43777-89f5-4695-96a1-72d53c176bc9",
    "zn_uid": "82788a5b-7c2c-41be-9012-6fdcad413903"
  },
  {
    "km_uid": "831f12f3-4a40-45c0-bd61-589d37c2119a",
    "zn_uid": "93a46cb9-e0ae-4701-8e96-2c1a319d61a1"
  },
  {
    "km_uid": "a763e63b-2f12-4ffb-a0ad-bbde82f43758",
    "zn_uid": "61a4ca23-c40e-4979-b303-eb6bb11b9eba"
  },
  {
    "km_uid": "cc2cdbc2-5cde-4c98-bfa1-f0b921fdae2d",
    "zn_uid": "07c03726-e176-4716-aae2-ccfcb1e98650"
  },
  {
    "km_uid": "2fdee2b4-5483-40e1-9511-1fab3c1b8f4d",
    "zn_uid": "a1e20c96-a61d-4fa9-b3d2-a4d99e9d4475"
  },
  {
    "km_uid": "6a277283-a684-4284-ba53-a44b29924cd2",
    "zn_uid": "1cb1ccf6-aa67-4bf6-90ca-a8ed33ec8f64"
  },
  {
    "km_uid": "efd1008f-affc-44ab-88ce-800a34e3e405",
    "zn_uid": "106ce0ef-ed8f-406f-8e6f-f80b266dddb3"
  },
  {
    "km_uid": "8a519700-2b8a-4557-a4f0-0d03005d806c",
    "zn_uid": "0bd46ac7-0d89-4a10-bba7-3e4501f3751c"
  },
  {
    "km_uid": "d08a5149-b2af-4f73-9a17-22a3b85cff6e",
    "zn_uid": "06c9b533-96d0-4116-89b4-37b9a9c327b1"
  },
  {
    "km_uid": "e8c31211-c87d-4fca-97a0-21740d498982",
    "zn_uid": "22c93525-c05c-4131-a1a3-fd5ab076dfff"
  },
  {
    "km_uid": "f85e0f53-a32c-4518-ba02-7bfee06fb13e",
    "zn_uid": "dd42927d-1cb9-4b96-afbf-988d9f57a2ac"
  },
  {
    "km_uid": "c96809a3-a6b6-4f48-8eff-4be86e9e9f7f",
    "zn_uid": "106ce0ef-ed8f-406f-8e6f-f80b266dddb3"
  },
  {
    "km_uid": "edaab880-812b-4d53-bc5e-0695faa47e57",
    "zn_uid": "8cb2a475-7f36-4cce-96bc-3bd1088e9ac1"
  },
  {
    "km_uid": "f6a34c25-2546-41ee-817f-8fade5ad8a78",
    "zn_uid": "1cb1ccf6-aa67-4bf6-90ca-a8ed33ec8f64"
  },
  {
    "km_uid": "d360079b-7f9a-4cae-8f72-131fc817d2be",
    "zn_uid": "d10fb819-7fd9-442b-ac5c-28b5bc7c10d0"
  },
  {
    "km_uid": "f1cf8e3a-2ac3-4720-95ab-c7310e6a35f2",
    "zn_uid": "a2ab77f5-57a4-4e77-bf0a-f795829052e2"
  },
  {
    "km_uid": "9112fed8-a343-45fc-a0ea-daab75a1f47f",
    "zn_uid": "0bd46ac7-0d89-4a10-bba7-3e4501f3751c"
  },
  {
    "km_uid": "9a6547d9-5739-4f9a-b6bb-68dbb780f2d0",
    "zn_uid": "22c93525-c05c-4131-a1a3-fd5ab076dfff"
  },
  {
    "km_uid": "21760914-51aa-4de7-9b29-164375ed2b4a",
    "zn_uid": "1cb1ccf6-aa67-4bf6-90ca-a8ed33ec8f64"
  },
  {
    "km_uid": "85b99223-ea29-4b4c-a745-5688d269f66b",
    "zn_uid": "105e51bf-3f01-441a-83f9-9a90d8054e8c"
  },
  {
    "km_uid": "c3c2e6a4-49e2-4553-901f-efd97f4c1201",
    "zn_uid": "e193a603-1e20-4584-8494-ebf490c46134"
  },
  {
    "km_uid": "425c64bf-4b78-43b7-8d09-c0d32243c8e8",
    "zn_uid": "83dd60cc-371c-4a75-98df-1b59a6fa5254"
  },
  {
    "km_uid": "4f60619b-1f3c-4f06-b592-cf3f658f3d4d",
    "zn_uid": "e193a603-1e20-4584-8494-ebf490c46134"
  },
  {
    "km_uid": "c59d6e8e-2425-43eb-b39f-d532b589a6d7",
    "zn_uid": "8a183b81-a42a-4271-a692-94fa44de58df"
  },
  {
    "km_uid": "d9253247-d8ac-4a2c-a483-d910d4a6306a",
    "zn_uid": "08acf5f7-76b4-4192-b395-cd4fd2039ab7"
  },
  {
    "km_uid": "35afa5b2-7081-47d7-8a1d-17f9607bf43d",
    "zn_uid": "40f8fd85-b759-4289-8e34-4b34450702a0"
  },
  {
    "km_uid": "6c6ddfb4-64ad-4398-9a77-a6688df8b7d7",
    "zn_uid": "07c03726-e176-4716-aae2-ccfcb1e98650"
  },
  {
    "km_uid": "9b29d45e-e401-451d-b5dc-33202cab2b3a",
    "zn_uid": "0bd46ac7-0d89-4a10-bba7-3e4501f3751c"
  },
  {
    "km_uid": "7fa73850-ab55-4dc4-bfb7-a01223e8ce65",
    "zn_uid": "8a183b81-a42a-4271-a692-94fa44de58df"
  },
  {
    "km_uid": "58abb113-de22-4226-b6c1-29f6dafae7e0",
    "zn_uid": "e5fa68e7-b4d9-4789-95d2-fb3e2424607a"
  },
  {
    "km_uid": "8266e434-81bc-4266-a44d-867c3ac0b9a7",
    "zn_uid": "22c93525-c05c-4131-a1a3-fd5ab076dfff"
  },
  {
    "km_uid": "c504c32a-7948-4a70-b48d-e1545366e7b0",
    "zn_uid": "0bd46ac7-0d89-4a10-bba7-3e4501f3751c"
  },
  {
    "km_uid": "1f15c4e2-6a0b-4f47-8cca-58db017e51cf",
    "zn_uid": "08acf5f7-76b4-4192-b395-cd4fd2039ab7"
  },
  {
    "km_uid": "49c5888c-bfc9-4392-8f93-b0c4799c8dd7",
    "zn_uid": "22c93525-c05c-4131-a1a3-fd5ab076dfff"
  },
  {
    "km_uid": "4211896f-9cd6-406f-aba0-4103b1252756",
    "zn_uid": "1cb1ccf6-aa67-4bf6-90ca-a8ed33ec8f64"
  },
  {
    "km_uid": "25bd9f78-1dfc-4892-9a14-51d8a57d67ce",
    "zn_uid": "6b595b16-407e-495e-920f-c279ad84950f"
  },
  {
    "km_uid": "a89d7e32-f8e1-45e1-bcfa-f4c35e66390f",
    "zn_uid": "08acf5f7-76b4-4192-b395-cd4fd2039ab7"
  },
  {
    "km_uid": "90d9bc8d-3034-4839-b05b-48b8e6b7f40b",
    "zn_uid": "eba95db1-7d37-4845-b437-5eab7965ce26"
  },
  {
    "km_uid": "ccb651d3-ea20-40a5-9441-ed23d9d46e8f",
    "zn_uid": "dbc862e6-7acd-4d2c-8698-da3f47e9ce95"
  },
  {
    "km_uid": "7bdb065b-276b-4c1a-9833-c48ece95ab0f",
    "zn_uid": "82788a5b-7c2c-41be-9012-6fdcad413903"
  },
  {
    "km_uid": "6bfd64f8-e12a-4020-888f-d7331ef1585d",
    "zn_uid": "106ce0ef-ed8f-406f-8e6f-f80b266dddb3"
  },
  {
    "km_uid": "edc8d093-d8e8-4378-8d06-3f00f19c5f62",
    "zn_uid": "117a6185-772b-457a-a1fc-b43d568a52e2"
  },
  {
    "km_uid": "17e4d327-d3ba-4fc9-b9e3-7bb63b0acb28",
    "zn_uid": "61a4ca23-c40e-4979-b303-eb6bb11b9eba"
  },
  {
    "km_uid": "e09bfc26-05ee-4f78-b695-644a8a9b904d",
    "zn_uid": "0bd46ac7-0d89-4a10-bba7-3e4501f3751c"
  },
  {
    "km_uid": "a296f649-99e0-4ed5-9d5e-0153b7c9d814",
    "zn_uid": "61a4ca23-c40e-4979-b303-eb6bb11b9eba"
  },
  {
    "km_uid": "5b0cca55-d2dd-43bc-9003-9aab6abe3cc3",
    "zn_uid": "40b921b5-e3ab-4d13-8083-88a4bf56f2b3"
  },
  {
    "km_uid": "2e4016f9-3944-4e9c-a1b7-733306e5756e",
    "zn_uid": "e5fa68e7-b4d9-4789-95d2-fb3e2424607a"
  },
  {
    "km_uid": "f01df01f-47d7-4af9-ad7f-73aa9ea80bd7",
    "zn_uid": "31976572-4db8-437d-9d40-8cea97aa2a9c"
  },
  {
    "km_uid": "a38029a6-c6dc-4729-8996-e04c0884d5a2",
    "zn_uid": "dbc862e6-7acd-4d2c-8698-da3f47e9ce95"
  },
  {
    "km_uid": "c38af3a9-0752-4452-9144-d5eb43f7c0e2",
    "zn_uid": "93a46cb9-e0ae-4701-8e96-2c1a319d61a1"
  },
  {
    "km_uid": "c32f1ad1-cafb-46f9-8eb9-b0f0e97deb98",
    "zn_uid": "499a35fe-556d-44d5-b1ec-d29e45392fbd"
  },
  {
    "km_uid": "55adcbf1-5062-4b5f-8618-6647897aa0d7",
    "zn_uid": "54080b3e-c3a4-43de-bb02-6850d96911e5"
  },
  {
    "km_uid": "b85de4f0-0422-4230-bfcd-4bc363d74572",
    "zn_uid": "dd42927d-1cb9-4b96-afbf-988d9f57a2ac"
  },
  {
    "km_uid": "35e09f37-4187-47b8-b180-7a0802fda09a",
    "zn_uid": "22c93525-c05c-4131-a1a3-fd5ab076dfff"
  },
  {
    "km_uid": "f280a5a3-8004-427b-b9e0-47598141694c",
    "zn_uid": "08acf5f7-76b4-4192-b395-cd4fd2039ab7"
  },
  {
    "km_uid": "b22547b4-0248-4ff8-a0b6-656b72e656eb",
    "zn_uid": "93a46cb9-e0ae-4701-8e96-2c1a319d61a1"
  },
  {
    "km_uid": "ac5ade63-71f7-4f52-8939-102485191ac6",
    "zn_uid": "08acf5f7-76b4-4192-b395-cd4fd2039ab7"
  },
  {
    "km_uid": "a4e2b45c-6ada-4692-8bb6-6dbc63880e11",
    "zn_uid": "0bd46ac7-0d89-4a10-bba7-3e4501f3751c"
  },
  {
    "km_uid": "f9f2bd76-2c96-400c-8e51-34567d2b21e0",
    "zn_uid": "0bd46ac7-0d89-4a10-bba7-3e4501f3751c"
  },
  {
    "km_uid": "c35f4180-c153-4526-b7d2-e0f5127a34d1",
    "zn_uid": "dd42927d-1cb9-4b96-afbf-988d9f57a2ac"
  },
  {
    "km_uid": "26064361-122f-4240-90d1-381cc30a2bfc",
    "zn_uid": "106ce0ef-ed8f-406f-8e6f-f80b266dddb3"
  },
  {
    "km_uid": "9ea6a67a-5fa4-423f-8164-8da9fc57e6b7",
    "zn_uid": "40b921b5-e3ab-4d13-8083-88a4bf56f2b3"
  },
  {
    "km_uid": "d57f2f67-d3f6-463a-93a6-2e6cf5c952ef",
    "zn_uid": "08acf5f7-76b4-4192-b395-cd4fd2039ab7"
  },
  {
    "km_uid": "bae9f2be-6706-4c41-98c8-8a22d9e7e538",
    "zn_uid": "31976572-4db8-437d-9d40-8cea97aa2a9c"
  },
  {
    "km_uid": "eee9724f-d292-4449-b27a-a0fd5dd052be",
    "zn_uid": "08acf5f7-76b4-4192-b395-cd4fd2039ab7"
  },
  {
    "km_uid": "da6015ff-d74f-47a1-91ec-c79a9c2a1414",
    "zn_uid": "105e51bf-3f01-441a-83f9-9a90d8054e8c"
  },
  {
    "km_uid": "5556bdd5-8530-4cff-830b-cf50d4dc0dd1",
    "zn_uid": "a1e20c96-a61d-4fa9-b3d2-a4d99e9d4475"
  },
  {
    "km_uid": "e7ba0429-4399-4ee3-8ec5-65abe38ca5a9",
    "zn_uid": "dbc862e6-7acd-4d2c-8698-da3f47e9ce95"
  },
  {
    "km_uid": "37fed840-27a4-4ae0-9aa3-0d195f534db7",
    "zn_uid": "a1e20c96-a61d-4fa9-b3d2-a4d99e9d4475"
  },
  {
    "km_uid": "9799ecbc-cc48-4346-8257-ce97fd4ec5cb",
    "zn_uid": "93a46cb9-e0ae-4701-8e96-2c1a319d61a1"
  },
  {
    "km_uid": "58f30ef3-1837-479c-bd09-c6faf95b499f",
    "zn_uid": "0bd46ac7-0d89-4a10-bba7-3e4501f3751c"
  },
  {
    "km_uid": "db5a70f8-d713-490a-bac1-6fb418d5a708",
    "zn_uid": "105e51bf-3f01-441a-83f9-9a90d8054e8c"
  },
  {
    "km_uid": "6bd57024-df21-49ca-94f0-1aac46594e88",
    "zn_uid": "1cb1ccf6-aa67-4bf6-90ca-a8ed33ec8f64"
  },
  {
    "km_uid": "b4f36ed0-491d-4b0c-9d7c-c3240573a5a4",
    "zn_uid": "dd42927d-1cb9-4b96-afbf-988d9f57a2ac"
  },
  {
    "km_uid": "759d1a0a-29b0-4e10-9fbc-ec84695acf71",
    "zn_uid": "e193a603-1e20-4584-8494-ebf490c46134"
  },
  {
    "km_uid": "a60984b5-4d6d-4857-bab1-a5615fd1c8c2",
    "zn_uid": "eba95db1-7d37-4845-b437-5eab7965ce26"
  },
  {
    "km_uid": "f38469bd-9eac-4dd8-bd49-6ad7ff4c4281",
    "zn_uid": "a1e20c96-a61d-4fa9-b3d2-a4d99e9d4475"
  },
  {
    "km_uid": "a4af4efa-0c3b-43cb-92bc-a9e26013116a",
    "zn_uid": "1cb1ccf6-aa67-4bf6-90ca-a8ed33ec8f64"
  },
  {
    "km_uid": "461736b9-c43f-4af3-85c7-5e8231062753",
    "zn_uid": "57698063-ee56-41ac-bc52-4f48aeb55200"
  },
  {
    "km_uid": "d68b48e7-f6fa-43d4-ada0-fda29c097382",
    "zn_uid": "149114ac-2a8a-4d5e-a35b-dd9a40587b49"
  },
  {
    "km_uid": "ca19ada7-0dde-4c44-b055-4fbf846b20f2",
    "zn_uid": "dd42927d-1cb9-4b96-afbf-988d9f57a2ac"
  },
  {
    "km_uid": "956ba67b-f186-491f-8df8-6a9189a47fcc",
    "zn_uid": "aaf7db42-9012-4dca-917d-8a044a6d4de2"
  },
  {
    "km_uid": "9b249603-4293-4a0a-a886-fd04fd38cad4",
    "zn_uid": "117a6185-772b-457a-a1fc-b43d568a52e2"
  },
  {
    "km_uid": "595553e1-a53f-448c-8ae0-be9864e7b140",
    "zn_uid": "82788a5b-7c2c-41be-9012-6fdcad413903"
  },
  {
    "km_uid": "3b3a3e6f-9ef4-4c11-ab9e-d9fa8c6553d9",
    "zn_uid": "07c03726-e176-4716-aae2-ccfcb1e98650"
  },
  {
    "km_uid": "1a2cf543-139a-4dcd-a54f-9a90664efd33",
    "zn_uid": "22c93525-c05c-4131-a1a3-fd5ab076dfff"
  },
  {
    "km_uid": "19cc16fb-fae2-4834-ae0c-465c77cf46ab",
    "zn_uid": "61a4ca23-c40e-4979-b303-eb6bb11b9eba"
  },
  {
    "km_uid": "230dbf89-498e-4424-9175-2085b253a374",
    "zn_uid": "54080b3e-c3a4-43de-bb02-6850d96911e5"
  },
  {
    "km_uid": "768616e5-c397-4b8e-a555-bbb0bfb102e8",
    "zn_uid": "abbea432-3fe8-4256-a670-282eefd76e85"
  },
  {
    "km_uid": "a5aae8de-cc45-45f6-9f8f-1f7e086941f8",
    "zn_uid": "93a46cb9-e0ae-4701-8e96-2c1a319d61a1"
  },
  {
    "km_uid": "c7d45357-ea56-49e7-9c77-887d1d4c739b",
    "zn_uid": "93a46cb9-e0ae-4701-8e96-2c1a319d61a1"
  },
  {
    "km_uid": "34fc3561-95d1-4421-b8a2-ff91bc02e598",
    "zn_uid": "31976572-4db8-437d-9d40-8cea97aa2a9c"
  },
  {
    "km_uid": "ea6ba51f-43bf-42c0-86d8-30804bbed20a",
    "zn_uid": "61a4ca23-c40e-4979-b303-eb6bb11b9eba"
  },
  {
    "km_uid": "7acb3e3a-22f0-46e8-b536-ce2f6d166a52",
    "zn_uid": "93a46cb9-e0ae-4701-8e96-2c1a319d61a1"
  },
  {
    "km_uid": "f5d38724-7fd0-4320-a933-2a2026148a30",
    "zn_uid": "08acf5f7-76b4-4192-b395-cd4fd2039ab7"
  },
  {
    "km_uid": "b5485790-b95c-481a-a69e-2101d650043a",
    "zn_uid": "106ce0ef-ed8f-406f-8e6f-f80b266dddb3"
  },
  {
    "km_uid": "ea85a4f3-0624-4eb8-83b8-376153540fed",
    "zn_uid": "e193a603-1e20-4584-8494-ebf490c46134"
  },
  {
    "km_uid": "7fe3a9ee-c8fc-4208-bfb3-08ac4630016e",
    "zn_uid": "1cb1ccf6-aa67-4bf6-90ca-a8ed33ec8f64"
  },
  {
    "km_uid": "40ff398e-24ff-4ad4-ba8d-27bb9dcfd42a",
    "zn_uid": "d572156d-fcf4-4263-a78e-25c239b45361"
  },
  {
    "km_uid": "83305cb6-c98b-45d5-8e06-cf0d72fdc138",
    "zn_uid": "106ce0ef-ed8f-406f-8e6f-f80b266dddb3"
  },
  {
    "km_uid": "95d43e45-2e98-4354-ab06-de13b8d83031",
    "zn_uid": "a1e20c96-a61d-4fa9-b3d2-a4d99e9d4475"
  },
  {
    "km_uid": "1d121ad1-3638-41cf-bf8e-662ab35d3276",
    "zn_uid": "8a183b81-a42a-4271-a692-94fa44de58df"
  },
  {
    "km_uid": "468055a5-577e-4a3a-b620-aafd7197d834",
    "zn_uid": "83dd60cc-371c-4a75-98df-1b59a6fa5254"
  },
  {
    "km_uid": "c34d8024-2883-42c3-8d7a-47ff8c62dc7b",
    "zn_uid": "106ce0ef-ed8f-406f-8e6f-f80b266dddb3"
  },
  {
    "km_uid": "d9952687-7b27-49dd-801d-2ca13fc449f2",
    "zn_uid": "47dabe7d-9881-4590-89a6-76fe9d1b9d6d"
  },
  {
    "km_uid": "8e5ddbab-3807-4e7b-800b-07a2ab051a93",
    "zn_uid": "61a4ca23-c40e-4979-b303-eb6bb11b9eba"
  },
  {
    "km_uid": "d32f4480-6f9f-4050-9073-2b7d8f3a9ee4",
    "zn_uid": "eba95db1-7d37-4845-b437-5eab7965ce26"
  },
  {
    "km_uid": "7c8a5769-58b3-4deb-bfcc-a0eb8b05f9ae",
    "zn_uid": "dbc862e6-7acd-4d2c-8698-da3f47e9ce95"
  },
  {
    "km_uid": "6f83afad-0c38-417b-931b-2bd563321b40",
    "zn_uid": "82788a5b-7c2c-41be-9012-6fdcad413903"
  },
  {
    "km_uid": "9afacdb8-5042-4868-9701-e51fa4e9c37e",
    "zn_uid": "9033df36-c7c6-4fe0-a117-dfdccf55a98a"
  },
  {
    "km_uid": "426a5a9d-736d-42e6-8973-34e64618af94",
    "zn_uid": "dd42927d-1cb9-4b96-afbf-988d9f57a2ac"
  },
  {
    "km_uid": "93f695fc-81e1-4f50-826d-5e6bccf4c61c",
    "zn_uid": "1aa2ecff-6a2f-47b7-9210-63ac3f1094d6"
  },
  {
    "km_uid": "d3341329-6988-4edb-85b5-a7166a232ed0",
    "zn_uid": "1cb1ccf6-aa67-4bf6-90ca-a8ed33ec8f64"
  },
  {
    "km_uid": "67c95e5a-93b3-4e5e-a5ae-fef5dad10f84",
    "zn_uid": "a1e20c96-a61d-4fa9-b3d2-a4d99e9d4475"
  },
  {
    "km_uid": "3c34287d-08b0-4648-9d36-09aa245baee6",
    "zn_uid": "1cb1ccf6-aa67-4bf6-90ca-a8ed33ec8f64"
  },
  {
    "km_uid": "6a855a41-8519-4d4e-9b98-9f3e76b39124",
    "zn_uid": "22c93525-c05c-4131-a1a3-fd5ab076dfff"
  },
  {
    "km_uid": "572606c8-032e-444f-aa91-88bb89d496f6",
    "zn_uid": "82788a5b-7c2c-41be-9012-6fdcad413903"
  },
  {
    "km_uid": "5694705a-c5cc-4bb1-93b8-fbb6685a888b",
    "zn_uid": "98d62a26-eb4d-4969-b559-2d2022dfe6e8"
  },
  {
    "km_uid": "70ec1ca1-17dd-432f-a42a-e063e12632fc",
    "zn_uid": "82788a5b-7c2c-41be-9012-6fdcad413903"
  },
  {
    "km_uid": "d5931437-593b-4267-9c9d-933a1225a385",
    "zn_uid": "dd42927d-1cb9-4b96-afbf-988d9f57a2ac"
  },
  {
    "km_uid": "d0646861-3bc1-4451-8ee4-056f37f35f72",
    "zn_uid": "98d62a26-eb4d-4969-b559-2d2022dfe6e8"
  },
  {
    "km_uid": "ea905a59-d416-4a95-aec4-5c4b41134f8d",
    "zn_uid": "82788a5b-7c2c-41be-9012-6fdcad413903"
  },
  {
    "km_uid": "c44f2622-187a-4200-a829-24fa740bd914",
    "zn_uid": "a1e20c96-a61d-4fa9-b3d2-a4d99e9d4475"
  },
  {
    "km_uid": "c1c919a8-0a99-4e36-8bb5-8234e44de58a",
    "zn_uid": "dbc862e6-7acd-4d2c-8698-da3f47e9ce95"
  },
  {
    "km_uid": "b2616715-1d40-4314-86ff-55efaccf3ade",
    "zn_uid": "93a46cb9-e0ae-4701-8e96-2c1a319d61a1"
  },
  {
    "km_uid": "eeb92f24-d1a9-492e-854e-7bb1f2f70835",
    "zn_uid": "93a46cb9-e0ae-4701-8e96-2c1a319d61a1"
  },
  {
    "km_uid": "2bccaa24-1fbb-40ed-a406-30f2651e06c8",
    "zn_uid": "0bd46ac7-0d89-4a10-bba7-3e4501f3751c"
  },
  {
    "km_uid": "a34f0bd2-9b19-4a51-9452-f6f34ee39acb",
    "zn_uid": "dd42927d-1cb9-4b96-afbf-988d9f57a2ac"
  },
  {
    "km_uid": "e707973c-ee11-4b0a-8097-30d23124a884",
    "zn_uid": "0bd46ac7-0d89-4a10-bba7-3e4501f3751c"
  },
  {
    "km_uid": "acf7f4ea-e871-437e-a3bd-b54174afaad1",
    "zn_uid": "0bd46ac7-0d89-4a10-bba7-3e4501f3751c"
  },
  {
    "km_uid": "51b79351-a995-4857-89d1-1147bbe3cb6d",
    "zn_uid": "83dd60cc-371c-4a75-98df-1b59a6fa5254"
  },
  {
    "km_uid": "fce675d9-290b-4bc8-80a2-1e7b05f71ab3",
    "zn_uid": "a1eedf56-f091-4c64-9684-24578484c9f7"
  },
  {
    "km_uid": "a0e2f4ba-4b9c-409d-8be6-a492d4c7880c",
    "zn_uid": "7dbc14e6-3760-40d7-8d2c-e811545ddb1d"
  },
  {
    "km_uid": "80024057-bfe3-4382-8510-62b356fd80ee",
    "zn_uid": "31976572-4db8-437d-9d40-8cea97aa2a9c"
  },
  {
    "km_uid": "2ab36aea-b3b8-4199-a25f-9792fefd49c1",
    "zn_uid": "0bd46ac7-0d89-4a10-bba7-3e4501f3751c"
  },
  {
    "km_uid": "14b388c6-415b-4151-a242-0a16e3539162",
    "zn_uid": "6db331df-8360-438e-bb23-43f3a6f240c5"
  },
  {
    "km_uid": "4e1d3bca-2b4f-4039-94d0-8705a070eb78",
    "zn_uid": "08acf5f7-76b4-4192-b395-cd4fd2039ab7"
  },
  {
    "km_uid": "fb508dab-774e-4a8e-a28a-6cb1c0c97f10",
    "zn_uid": "0bd46ac7-0d89-4a10-bba7-3e4501f3751c"
  },
  {
    "km_uid": "7201dc6c-0ab0-4d4d-854f-b75495816831",
    "zn_uid": "22c93525-c05c-4131-a1a3-fd5ab076dfff"
  },
  {
    "km_uid": "7d0dd614-557d-404d-8514-78531b6970fb",
    "zn_uid": "61a4ca23-c40e-4979-b303-eb6bb11b9eba"
  },
  {
    "km_uid": "a0b00086-c7d1-4e14-ad32-7be61a863b45",
    "zn_uid": "105e51bf-3f01-441a-83f9-9a90d8054e8c"
  },
  {
    "km_uid": "b1ba34da-67a4-4e5b-97c5-53ba347b8f54",
    "zn_uid": "83dd60cc-371c-4a75-98df-1b59a6fa5254"
  },
  {
    "km_uid": "7d95a4ad-0882-4bee-a919-0bbb6d5114cb",
    "zn_uid": "22c93525-c05c-4131-a1a3-fd5ab076dfff"
  },
  {
    "km_uid": "c563aa1c-6b00-4d87-a9ad-951fb98ff01f",
    "zn_uid": "22c93525-c05c-4131-a1a3-fd5ab076dfff"
  },
  {
    "km_uid": "c5d88302-6fbf-4d11-9c4b-8361c2827259",
    "zn_uid": "93a46cb9-e0ae-4701-8e96-2c1a319d61a1"
  },
  {
    "km_uid": "bed3a65f-5b2d-4636-b100-bf1f0987620a",
    "zn_uid": "9033df36-c7c6-4fe0-a117-dfdccf55a98a"
  },
  {
    "km_uid": "b141c490-f9b6-4abd-85ea-88f3e86af0d1",
    "zn_uid": "b8c217cd-64c1-4e80-a83e-55198628cd5b"
  },
  {
    "km_uid": "505c84de-c507-4236-a8db-a48628cc9b8a",
    "zn_uid": "93a46cb9-e0ae-4701-8e96-2c1a319d61a1"
  },
  {
    "km_uid": "6b1a9fe3-2104-4aee-a004-c7f69f7f43e3",
    "zn_uid": "08acf5f7-76b4-4192-b395-cd4fd2039ab7"
  },
  {
    "km_uid": "b6000b2a-42e1-4857-bd96-e3de23afaf66",
    "zn_uid": "105e51bf-3f01-441a-83f9-9a90d8054e8c"
  },
  {
    "km_uid": "40d99b49-0522-4b6b-bea8-672a9b4b1b7f",
    "zn_uid": "93a46cb9-e0ae-4701-8e96-2c1a319d61a1"
  },
  {
    "km_uid": "5b76ea37-6704-4ccd-951f-100e0865a0e6",
    "zn_uid": "93a46cb9-e0ae-4701-8e96-2c1a319d61a1"
  },
  {
    "km_uid": "7bd2c9dc-c141-492c-bd40-ab38d7b68baa",
    "zn_uid": "82788a5b-7c2c-41be-9012-6fdcad413903"
  },
  {
    "km_uid": "216e7912-04d1-4195-b71d-03203dcaa26e",
    "zn_uid": "93a46cb9-e0ae-4701-8e96-2c1a319d61a1"
  },
  {
    "km_uid": "702f4c8f-df03-4ce7-8702-f8657f0cb592",
    "zn_uid": "a1e20c96-a61d-4fa9-b3d2-a4d99e9d4475"
  },
  {
    "km_uid": "51dc7268-2250-4101-b761-e182f690a0f0",
    "zn_uid": "a1e20c96-a61d-4fa9-b3d2-a4d99e9d4475"
  },
  {
    "km_uid": "7c61fe67-b3cd-443c-9609-8d17ef7328b1",
    "zn_uid": "e193a603-1e20-4584-8494-ebf490c46134"
  },
  {
    "km_uid": "ef03b57f-ac83-4f34-bd23-ab82f2cfb848",
    "zn_uid": "1416a10f-7c6e-478b-ab5a-3ef0c41dcb39"
  },
  {
    "km_uid": "bd807a80-1109-44aa-a431-c1c0cbfea04f",
    "zn_uid": "83dd60cc-371c-4a75-98df-1b59a6fa5254"
  },
  {
    "km_uid": "2754421a-e024-4812-aa21-cb71c6747659",
    "zn_uid": "07c03726-e176-4716-aae2-ccfcb1e98650"
  },
  {
    "km_uid": "71bdf196-94c4-490b-bd0e-9f8e3a45b2bd",
    "zn_uid": "61a4ca23-c40e-4979-b303-eb6bb11b9eba"
  },
  {
    "km_uid": "7dd77e91-3e0a-48a3-98b9-882bef7574f1",
    "zn_uid": "106ce0ef-ed8f-406f-8e6f-f80b266dddb3"
  },
  {
    "km_uid": "2789838a-d722-4f77-b816-1c3586e20f32",
    "zn_uid": "93a46cb9-e0ae-4701-8e96-2c1a319d61a1"
  },
  {
    "km_uid": "22ecb3fc-73e3-4185-9e40-8dd44452bd56",
    "zn_uid": "8a183b81-a42a-4271-a692-94fa44de58df"
  },
  {
    "km_uid": "c65f7917-db2c-478c-a53f-fd3c21f6f8d7",
    "zn_uid": "22c93525-c05c-4131-a1a3-fd5ab076dfff"
  },
  {
    "km_uid": "6ec92dd2-9971-4aff-8bc4-8e526a2b2aeb",
    "zn_uid": "3dfc7a6b-90d8-4b66-b23d-e83472499709"
  },
  {
    "km_uid": "18469cb5-35ec-44c1-8556-9795b029c199",
    "zn_uid": "83dd60cc-371c-4a75-98df-1b59a6fa5254"
  },
  {
    "km_uid": "f3594ca5-0264-493e-88de-0682736cb53d",
    "zn_uid": "83dd60cc-371c-4a75-98df-1b59a6fa5254"
  },
  {
    "km_uid": "68c9db74-b506-4310-bcb7-48fbaebf5097",
    "zn_uid": "08acf5f7-76b4-4192-b395-cd4fd2039ab7"
  },
  {
    "km_uid": "b8853068-d7af-43db-bb1e-361c8b36ab77",
    "zn_uid": "e193a603-1e20-4584-8494-ebf490c46134"
  },
  {
    "km_uid": "cef05d8f-db05-4025-85e6-4079ca9b5642",
    "zn_uid": "348517fa-6be2-465e-ae62-b3cacd17174e"
  },
  {
    "km_uid": "dd18d66a-8cef-4c84-9704-6f53f69c3582",
    "zn_uid": "a1e20c96-a61d-4fa9-b3d2-a4d99e9d4475"
  },
  {
    "km_uid": "53c957bb-19aa-4c80-9574-4cadc0831f64",
    "zn_uid": "47dabe7d-9881-4590-89a6-76fe9d1b9d6d"
  },
  {
    "km_uid": "1beb8b6f-1c92-4514-bb5b-752353b71ab1",
    "zn_uid": "4f0c9516-9b02-4a6d-8193-dc0802631d1f"
  },
  {
    "km_uid": "aaf1b3fd-738b-42e7-8deb-9c9421fba09a",
    "zn_uid": "98d62a26-eb4d-4969-b559-2d2022dfe6e8"
  },
  {
    "km_uid": "d7eccfe6-8dbe-4e1e-a01d-8cf47ef26ff8",
    "zn_uid": "8a183b81-a42a-4271-a692-94fa44de58df"
  },
  {
    "km_uid": "1508e3a4-0294-498d-ae69-36dc5c0351f3",
    "zn_uid": "106ce0ef-ed8f-406f-8e6f-f80b266dddb3"
  },
  {
    "km_uid": "02d7401b-881f-4a3d-a7f8-25a7c79247a8",
    "zn_uid": "106ce0ef-ed8f-406f-8e6f-f80b266dddb3"
  },
  {
    "km_uid": "b1b156b5-7b1a-4e71-96a6-eafb5ae59001",
    "zn_uid": "0bd46ac7-0d89-4a10-bba7-3e4501f3751c"
  },
  {
    "km_uid": "3b3bcc6f-e92b-4b84-896d-852c12a1de74",
    "zn_uid": "d10fb819-7fd9-442b-ac5c-28b5bc7c10d0"
  },
  {
    "km_uid": "4565985d-21c8-4d7a-a8af-bf41c80e3763",
    "zn_uid": "22c93525-c05c-4131-a1a3-fd5ab076dfff"
  },
  {
    "km_uid": "2efe7376-a0a8-4ba4-a895-497042ce6a7c",
    "zn_uid": "a2ab77f5-57a4-4e77-bf0a-f795829052e2"
  },
  {
    "km_uid": "3fc4438b-ac4c-4a5e-b64d-43082b0418ad",
    "zn_uid": "06c9b533-96d0-4116-89b4-37b9a9c327b1"
  },
  {
    "km_uid": "87f01c20-8855-4960-ac1d-915ef6980446",
    "zn_uid": "eba95db1-7d37-4845-b437-5eab7965ce26"
  },
  {
    "km_uid": "69144b23-02ea-470e-b4f6-1c9c0d223672",
    "zn_uid": "105e51bf-3f01-441a-83f9-9a90d8054e8c"
  },
  {
    "km_uid": "c9420e52-d1f9-4615-9116-2c988d78a3cb",
    "zn_uid": "93a46cb9-e0ae-4701-8e96-2c1a319d61a1"
  },
  {
    "km_uid": "41ade0bb-095a-42f5-99ab-cf0ed2408207",
    "zn_uid": "08acf5f7-76b4-4192-b395-cd4fd2039ab7"
  },
  {
    "km_uid": "cb12331d-51fb-4816-b2ce-a009e947ac64",
    "zn_uid": "93a46cb9-e0ae-4701-8e96-2c1a319d61a1"
  },
  {
    "km_uid": "2fec414c-ae12-4b5a-82a8-5ef3bc087946",
    "zn_uid": "3eba4b0b-a4fd-49d6-96e5-327b22102429"
  },
  {
    "km_uid": "7d393760-5569-487c-845a-271a8cc9dcd8",
    "zn_uid": "83dd60cc-371c-4a75-98df-1b59a6fa5254"
  },
  {
    "km_uid": "c3fdcf0a-a256-449c-b78c-62b9cc3eb9e5",
    "zn_uid": "dd42927d-1cb9-4b96-afbf-988d9f57a2ac"
  },
  {
    "km_uid": "89137a58-6ffc-4ebd-a065-e52331dbd414",
    "zn_uid": "93a46cb9-e0ae-4701-8e96-2c1a319d61a1"
  },
  {
    "km_uid": "e56b589b-50b5-4eff-ac8f-8cc50dff128c",
    "zn_uid": "ac92342b-1621-4ab7-b3ad-b67b5f615dfe"
  },
  {
    "km_uid": "cf538c15-8090-463b-a4e8-5334e0509488",
    "zn_uid": "dd42927d-1cb9-4b96-afbf-988d9f57a2ac"
  },
  {
    "km_uid": "52ae69d5-ede0-45b2-844c-6e268d375cbc",
    "zn_uid": "61a4ca23-c40e-4979-b303-eb6bb11b9eba"
  },
  {
    "km_uid": "bba324c9-3555-47e8-a3dc-b235e158bcc0",
    "zn_uid": "31976572-4db8-437d-9d40-8cea97aa2a9c"
  },
  {
    "km_uid": "1541a598-3831-4ec0-b682-fae759319583",
    "zn_uid": "a1e20c96-a61d-4fa9-b3d2-a4d99e9d4475"
  },
  {
    "km_uid": "b2b2898d-4a63-48b2-9608-02023a8c2dce",
    "zn_uid": "a1e20c96-a61d-4fa9-b3d2-a4d99e9d4475"
  },
  {
    "km_uid": "3c5b9d32-2802-445f-8b1f-49109100b24f",
    "zn_uid": "61a4ca23-c40e-4979-b303-eb6bb11b9eba"
  },
  {
    "km_uid": "85d109c1-e4c2-421e-8f01-4bc9432fd8cd",
    "zn_uid": "0bd46ac7-0d89-4a10-bba7-3e4501f3751c"
  },
  {
    "km_uid": "2beb33ce-aff2-46a4-bcbd-b0726e2a2627",
    "zn_uid": "22c93525-c05c-4131-a1a3-fd5ab076dfff"
  },
  {
    "km_uid": "80d05aad-8d7f-407f-badc-34f7093dbc14",
    "zn_uid": "149114ac-2a8a-4d5e-a35b-dd9a40587b49"
  },
  {
    "km_uid": "2d67776b-e8d4-4b39-b7ba-f3fda5d3e76c",
    "zn_uid": "117a6185-772b-457a-a1fc-b43d568a52e2"
  },
  {
    "km_uid": "ff8bb3ab-753d-48ec-826c-026e4a4f8093",
    "zn_uid": "0bd46ac7-0d89-4a10-bba7-3e4501f3751c"
  },
  {
    "km_uid": "f2856e9a-0467-4cec-b334-8643370ac7eb",
    "zn_uid": "eedef278-2862-40c8-b86e-e88ccdbe1d29"
  },
  {
    "km_uid": "18357194-44f8-46d7-ba6a-aca0dfae8ee3",
    "zn_uid": "8a183b81-a42a-4271-a692-94fa44de58df"
  },
  {
    "km_uid": "28fa0240-9609-4998-bd63-e0ad35d61ae6",
    "zn_uid": "93a46cb9-e0ae-4701-8e96-2c1a319d61a1"
  },
  {
    "km_uid": "4903a087-0551-4d99-9196-938ec05a681d",
    "zn_uid": "348517fa-6be2-465e-ae62-b3cacd17174e"
  },
  {
    "km_uid": "35470d7f-220d-41e3-a6b6-be2e8f34ef7c",
    "zn_uid": "61a4ca23-c40e-4979-b303-eb6bb11b9eba"
  },
  {
    "km_uid": "dbb413d9-03bc-4c96-82ed-26c859d84581",
    "zn_uid": "106ce0ef-ed8f-406f-8e6f-f80b266dddb3"
  },
  {
    "km_uid": "5578c970-356d-427c-af34-37705f0fdf63",
    "zn_uid": "0bd46ac7-0d89-4a10-bba7-3e4501f3751c"
  },
  {
    "km_uid": "c7a72ebf-22f7-42af-83d7-28d3a42cc5fd",
    "zn_uid": "83dd60cc-371c-4a75-98df-1b59a6fa5254"
  },
  {
    "km_uid": "9c8b38d7-0a32-4c37-99de-9d9687028db7",
    "zn_uid": "dd42927d-1cb9-4b96-afbf-988d9f57a2ac"
  },
  {
    "km_uid": "af9d70a3-3054-4bee-991a-22bb714bc219",
    "zn_uid": "dd42927d-1cb9-4b96-afbf-988d9f57a2ac"
  },
  {
    "km_uid": "1ca31d59-629b-4b2b-810c-eafe7b509a12",
    "zn_uid": "1cb8f96a-3297-49b6-8882-cda4957890f3"
  },
  {
    "km_uid": "68a3012b-2c41-47f5-907c-f5f2cde333b1",
    "zn_uid": "98d62a26-eb4d-4969-b559-2d2022dfe6e8"
  },
  {
    "km_uid": "068e3f20-de55-4c49-b3f8-f60ff444e52a",
    "zn_uid": "c0cf7eb2-4f7e-4b0a-9d59-90b15458e5e4"
  },
  {
    "km_uid": "39586a47-c30c-4d77-9969-bea5822ce9cc",
    "zn_uid": "07c03726-e176-4716-aae2-ccfcb1e98650"
  },
  {
    "km_uid": "1d7a0bf1-572e-499e-9f99-ef85ced9b3e8",
    "zn_uid": "6db331df-8360-438e-bb23-43f3a6f240c5"
  },
  {
    "km_uid": "21a09143-1f3b-4061-8824-f495ffcd7935",
    "zn_uid": "dd42927d-1cb9-4b96-afbf-988d9f57a2ac"
  },
  {
    "km_uid": "1a18a01f-2b9f-4f8e-89f0-3af400901ec0",
    "zn_uid": "15b28f01-59d3-484f-910b-c8a7cc373083"
  },
  {
    "km_uid": "4b6078ae-e9eb-48eb-be49-4892b5cba898",
    "zn_uid": "22c93525-c05c-4131-a1a3-fd5ab076dfff"
  },
  {
    "km_uid": "3b716093-0ba7-4577-9c08-9a49984a1c4b",
    "zn_uid": "a1e20c96-a61d-4fa9-b3d2-a4d99e9d4475"
  },
  {
    "km_uid": "4b2d7211-46a4-4b49-827c-7b5110ebe6aa",
    "zn_uid": "e193a603-1e20-4584-8494-ebf490c46134"
  },
  {
    "km_uid": "d18bb840-3fbd-43cd-8415-39b41e9c2125",
    "zn_uid": "93a46cb9-e0ae-4701-8e96-2c1a319d61a1"
  },
  {
    "km_uid": "cd3f33f5-75e8-42c7-88e6-111abd7c6bb0",
    "zn_uid": "117a6185-772b-457a-a1fc-b43d568a52e2"
  },
  {
    "km_uid": "3b542850-b94b-40ba-98a0-f7d8cf0d975c",
    "zn_uid": "82788a5b-7c2c-41be-9012-6fdcad413903"
  },
  {
    "km_uid": "1c986e77-7bf0-426f-a9b4-61e105dda878",
    "zn_uid": "e193a603-1e20-4584-8494-ebf490c46134"
  },
  {
    "km_uid": "03a6503e-8db4-4d29-b785-372a2e0edbfb",
    "zn_uid": "08acf5f7-76b4-4192-b395-cd4fd2039ab7"
  },
  {
    "km_uid": "855af775-36cf-46c2-b2c3-72686e9cd8ff",
    "zn_uid": "dd42927d-1cb9-4b96-afbf-988d9f57a2ac"
  },
  {
    "km_uid": "52a97a07-5103-4a2a-91af-885f729e13e6",
    "zn_uid": "e5fa68e7-b4d9-4789-95d2-fb3e2424607a"
  },
  {
    "km_uid": "c2b987a4-f66b-4886-938e-0e2e7bc61cae",
    "zn_uid": "93a46cb9-e0ae-4701-8e96-2c1a319d61a1"
  },
  {
    "km_uid": "ad845044-404a-4191-b1b0-8a7fdc5ba849",
    "zn_uid": "eedef278-2862-40c8-b86e-e88ccdbe1d29"
  },
  {
    "km_uid": "21f83d01-b5af-46fb-b53c-d92875cb393c",
    "zn_uid": "93a46cb9-e0ae-4701-8e96-2c1a319d61a1"
  },
  {
    "km_uid": "563b2107-5fdd-401b-ab03-162ffa5f4eaa",
    "zn_uid": "93a46cb9-e0ae-4701-8e96-2c1a319d61a1"
  },
  {
    "km_uid": "421877bb-b857-47f4-a856-15b43d998b30",
    "zn_uid": "93a46cb9-e0ae-4701-8e96-2c1a319d61a1"
  },
  {
    "km_uid": "ba8418ae-259f-48b4-acb2-42a40812d1e0",
    "zn_uid": "93a46cb9-e0ae-4701-8e96-2c1a319d61a1"
  },
  {
    "km_uid": "1686b501-5ba0-4183-8c22-f1feeac96e9c",
    "zn_uid": "93a46cb9-e0ae-4701-8e96-2c1a319d61a1"
  },
  {
    "km_uid": "98337b9d-f5f1-4014-8904-2919ad110923",
    "zn_uid": "93a46cb9-e0ae-4701-8e96-2c1a319d61a1"
  },
  {
    "km_uid": "d0d88b19-e1fc-4b73-ace0-f07c5c1a0180",
    "zn_uid": "47dabe7d-9881-4590-89a6-76fe9d1b9d6d"
  },
  {
    "km_uid": "a817c41c-96fb-42a3-9ae4-48c3c91241e0",
    "zn_uid": "47dabe7d-9881-4590-89a6-76fe9d1b9d6d"
  },
  {
    "km_uid": "a7cbf451-730d-4d3c-a1ba-25a3fff74bd7",
    "zn_uid": "47dabe7d-9881-4590-89a6-76fe9d1b9d6d"
  },
  {
    "km_uid": "91e6eb2f-957f-4a43-9838-dc1e7707d43b",
    "zn_uid": "47dabe7d-9881-4590-89a6-76fe9d1b9d6d"
  },
  {
    "km_uid": "94fd4658-393b-4d2c-ac76-bd57977d0952",
    "zn_uid": "47dabe7d-9881-4590-89a6-76fe9d1b9d6d"
  },
  {
    "km_uid": "e7970257-a16a-469a-b259-13732a40c865",
    "zn_uid": "47dabe7d-9881-4590-89a6-76fe9d1b9d6d"
  },
  {
    "km_uid": "c94489c0-df26-4ea2-b437-cd42474c766e",
    "zn_uid": "47dabe7d-9881-4590-89a6-76fe9d1b9d6d"
  },
  {
    "km_uid": "6a642c23-e2df-477a-bdaf-785157927d06",
    "zn_uid": "47dabe7d-9881-4590-89a6-76fe9d1b9d6d"
  },
  {
    "km_uid": "a4e7d3a1-c55d-4287-a944-bf1429dd3c63",
    "zn_uid": "47dabe7d-9881-4590-89a6-76fe9d1b9d6d"
  },
  {
    "km_uid": "95224177-1e1b-4992-9126-085df92b01cf",
    "zn_uid": "47dabe7d-9881-4590-89a6-76fe9d1b9d6d"
  },
  {
    "km_uid": "193b6a97-9c9d-4c3a-beb9-cdfe8e1295f0",
    "zn_uid": "1416a10f-7c6e-478b-ab5a-3ef0c41dcb39"
  },
  {
    "km_uid": "15aaf712-1e52-4119-9dc2-66cb30bf5322",
    "zn_uid": "1416a10f-7c6e-478b-ab5a-3ef0c41dcb39"
  },
  {
    "km_uid": "d27d8315-615b-48c3-b97d-4414cbd722e0",
    "zn_uid": "1416a10f-7c6e-478b-ab5a-3ef0c41dcb39"
  },
  {
    "km_uid": "af134c37-572f-4e2f-bda5-097b9006a64d",
    "zn_uid": "eba95db1-7d37-4845-b437-5eab7965ce26"
  },
  {
    "km_uid": "7076f066-690c-4504-8320-bd2d4532b455",
    "zn_uid": "40f8fd85-b759-4289-8e34-4b34450702a0"
  },
  {
    "km_uid": "2e17e8be-6a0a-43a4-a4fa-8462f127bd1f",
    "zn_uid": "22c93525-c05c-4131-a1a3-fd5ab076dfff"
  },
  {
    "km_uid": "bfe7cbde-e812-4545-a157-3b87e40629c2",
    "zn_uid": "9f164341-0570-415c-9c84-b2a7c698d904"
  },
  {
    "km_uid": "cb024077-c53e-42d6-ad3d-471b185d15cf",
    "zn_uid": "9f164341-0570-415c-9c84-b2a7c698d904"
  },
  {
    "km_uid": "4bbd7bf3-c252-42c0-ab1f-408cc70b74b9",
    "zn_uid": "fd14c78c-6245-4841-9ab9-1e226dc64f2b"
  },
  {
    "km_uid": "11f5aab3-d190-41d8-94cf-dc1d6d808cd5",
    "zn_uid": "fd14c78c-6245-4841-9ab9-1e226dc64f2b"
  },
  {
    "km_uid": "d116c7c8-b274-4562-9a20-e78f200addc4",
    "zn_uid": "0dd0c82c-5d34-4775-82e6-1bd35f054476"
  },
  {
    "km_uid": "52c4b62b-5895-462b-8916-942eb5a4b966",
    "zn_uid": "0dd0c82c-5d34-4775-82e6-1bd35f054476"
  },
  {
    "km_uid": "67cbcf07-c322-4787-8db0-1dc617d7272a",
    "zn_uid": "d5e9dfa6-22f8-470c-bb3b-c8cf96392518"
  },
  {
    "km_uid": "e44f3b62-c32c-4be1-925a-5f303a406898",
    "zn_uid": "7098fc69-0017-4268-bc88-67021be10302"
  },
  {
    "km_uid": "c7ac6efc-c6ee-48ff-85a7-9aab074da97a",
    "zn_uid": "7098fc69-0017-4268-bc88-67021be10302"
  },
  {
    "km_uid": "64cd892f-6cfe-4c08-a724-d11d168096ff",
    "zn_uid": "d5e9dfa6-22f8-470c-bb3b-c8cf96392518"
  },
  {
    "km_uid": "2e5fa733-4302-4849-ac4e-58ae7ebdae8e",
    "zn_uid": "22c93525-c05c-4131-a1a3-fd5ab076dfff"
  },
  {
    "km_uid": "63a42788-7b4e-4587-afcb-76e4a4609f76",
    "zn_uid": "1416a10f-7c6e-478b-ab5a-3ef0c41dcb39"
  },
  {
    "km_uid": "3c3ed933-7326-4036-b907-a3bbf8c3fa39",
    "zn_uid": "a1e20c96-a61d-4fa9-b3d2-a4d99e9d4475"
  },
  {
    "km_uid": "6ee86700-b4ab-445e-af30-065866f9d355",
    "zn_uid": "a1e20c96-a61d-4fa9-b3d2-a4d99e9d4475"
  },
  {
    "km_uid": "7943ec45-636e-4e17-82f5-d7c016622971",
    "zn_uid": "a1e20c96-a61d-4fa9-b3d2-a4d99e9d4475"
  },
  {
    "km_uid": "1fea71a3-20e0-43fb-b5bb-dfb8c657532d",
    "zn_uid": "a1e20c96-a61d-4fa9-b3d2-a4d99e9d4475"
  },
  {
    "km_uid": "76229ed8-1760-44f9-85ba-df7365b34495",
    "zn_uid": "a1e20c96-a61d-4fa9-b3d2-a4d99e9d4475"
  },
  {
    "km_uid": "2401a76d-6958-477c-a750-a5f1e244e003",
    "zn_uid": "a1e20c96-a61d-4fa9-b3d2-a4d99e9d4475"
  },
  {
    "km_uid": "6a579200-edba-49f6-b5d5-e9ad7018a29d",
    "zn_uid": "93a46cb9-e0ae-4701-8e96-2c1a319d61a1"
  },
  {
    "km_uid": "0494063a-b27b-49c4-8f25-1a758a7ba002",
    "zn_uid": "93a46cb9-e0ae-4701-8e96-2c1a319d61a1"
  },
  {
    "km_uid": "c54e4313-3b13-4ad0-b597-120c1074fff1",
    "zn_uid": "93a46cb9-e0ae-4701-8e96-2c1a319d61a1"
  },
  {
    "km_uid": "9688e00e-dcb5-4cc9-8c2c-4fff084cebde",
    "zn_uid": "93a46cb9-e0ae-4701-8e96-2c1a319d61a1"
  },
  {
    "km_uid": "8bf18e78-32b0-40c4-9137-68f5e594d1df",
    "zn_uid": "106ce0ef-ed8f-406f-8e6f-f80b266dddb3"
  },
  {
    "km_uid": "5b8986d5-f237-4b92-b484-bf1b849e582b",
    "zn_uid": "0bd46ac7-0d89-4a10-bba7-3e4501f3751c"
  },
  {
    "km_uid": "27f055f4-6751-4cd5-bfde-b61afe2c4d84",
    "zn_uid": "93a46cb9-e0ae-4701-8e96-2c1a319d61a1"
  },
  {
    "km_uid": "7925f987-85f2-4dc3-bf12-14d6d9ba6e79",
    "zn_uid": "0bd46ac7-0d89-4a10-bba7-3e4501f3751c"
  }
]'

-- https://www.sqlshack.com/how-to-parse-json-in-sql-server/

SELECT 
	 tArray.[key] AS i
	-- ,tArray.[value]
	-- ,tArray.[type]
	-- type: 0:null, 1:string, 2:int, 3:true/false, 4: array, 5 object 
	,tObjectValues.km_uid
	,tObjectValues.zn_uid
FROM OPENJSON(@json) AS tArray 

CROSS APPLY OPENJSON(tArray.value) WITH ( km_uid uniqueidentifier, zn_uid uniqueidentifier) AS tObjectValues 
