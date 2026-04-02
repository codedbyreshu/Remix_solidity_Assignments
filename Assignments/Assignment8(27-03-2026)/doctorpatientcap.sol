// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PatientManagement {

    address public admin;

    constructor() {
        admin = msg.sender;
    }

    modifier onlyAdmin() {
        require(msg.sender == admin, "Not Admin");
        _;
    }

    modifier onlyDoctor() {
        require(doctors[msg.sender] == true, "Not Doctor");
        _;
    }

    enum Status { Admitted, UnderTreatment, Discharged }

    struct Patient {
        uint id;
        string name;
        uint age;
        string disease;
        address doctor;
        Status status;
    }

    mapping(uint => Patient) public patients;
    mapping(address => bool) public doctors;

    uint public patientCount; // ✅ added

    event DoctorAdded(address doctor);
    event DoctorRemoved(address doctor);
    event PatientAdded(uint id, string name, address doctor);
    event StatusUpdated(uint id, Status status);

    function addDoctor(address _doctor) public onlyAdmin {
        doctors[_doctor] = true;
        emit DoctorAdded(_doctor);
    }

    function removeDoctor(address _doctor) public onlyAdmin {
        doctors[_doctor] = false;
        emit DoctorRemoved(_doctor);
    }

    function addPatient(
        uint _id,
        string memory _name,
        uint _age,
        string memory _disease
    ) public onlyDoctor {

        require(patients[_id].id == 0, "Patient already exists");

        patients[_id] = Patient({
            id: _id,
            name: _name,
            age: _age,
            disease: _disease,
            doctor: msg.sender,
            status: Status.Admitted
        });

        patientCount++; // ✅ increment

        emit PatientAdded(_id, _name, msg.sender);
    }

    function updatePatientStatus(uint _id, Status _status) public onlyDoctor {

        require(patients[_id].id != 0, "Patient not found");
        require(patients[_id].doctor == msg.sender, "Not assigned doctor");

        patients[_id].status = _status;

        emit StatusUpdated(_id, _status);
    }

    function viewPatient(uint _id) public view returns (
        uint,
        string memory,
        uint,
        string memory,
        address,
        Status
    ) {
        require(patients[_id].id != 0, "Patient not found");

        Patient memory p = patients[_id];

        return (p.id, p.name, p.age, p.disease, p.doctor, p.status);
    }
}