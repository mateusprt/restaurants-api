-- CreateTable
CREATE TABLE "Address" (
    "id" SERIAL NOT NULL,
    "zipCode" VARCHAR(9) NOT NULL,
    "streetName" VARCHAR(100) NOT NULL,
    "district" VARCHAR(50) NOT NULL,
    "addressComplement" VARCHAR(50) NOT NULL,
    "stateId" INTEGER NOT NULL,
    "cityId" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Address_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Address" ADD CONSTRAINT "Address_stateId_fkey" FOREIGN KEY ("stateId") REFERENCES "State"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Address" ADD CONSTRAINT "Address_cityId_fkey" FOREIGN KEY ("cityId") REFERENCES "City"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
