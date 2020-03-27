library constants;

import 'pages/assesmentTest.dart';

Map<String, Map<int, QuestionData>> questionList = {
  'Electrical engineer': {
    1: QuestionData(
        question:
            'When using a DMM (Digital Multimeter) voltmeter function to check for a voltage drop, meter leads should be connected in which of the following ways?',
        choise: {
          'A': 'On the “positive” side of the circuit',
          'B': 'Across the component or circuit',
          'C': 'To any non-conductive material',
          'D': 'In series with the circuit'
        }),
    2: QuestionData(
        question:
            'Which of the following is correct regarding a series circuit?',
        choise: {
          'A': 'Highest resistance has most current',
          'B': 'Lowest resistance has most current',
          'C': 'Lower resistance has highest voltage drop',
          'D': 'Highest resistance has highest voltage drop'
        }),
    3: QuestionData(
        question:
            'Which of the following measuring tools is MOST likely used to measure the temperature of the diesel exhaust gas?',
        choise: {
          'A': 'MDI (Multiple Diagnostic Interface)',
          'B': 'Exhaust manometer',
          'C': 'Diagnostic scan tool',
          'D': 'Exhaust pyrometer'
        }),
    4: QuestionData(
        question:
            'An active diagnostic trouble code is found on a heavy duty diesel engine with VVT (Variable Valve Timing). Technician A says the camshaft actuator is opening the exhaust valve too early. Technician B says a slow response could cause the engine not to meet exhaust emissions. Who is right?',
        choise: {
          'A': 'A only',
          'B': 'B only ',
          'C': 'Both A and B',
          'D': 'Neither A nor B'
        }),
    5: QuestionData(
        question:
            'The engine cranks on a diesel, but will not start. During diagnosis, the ECM (Electronic Control Module) will not communicate with the diagnostic tool. What is the MOST LIKELY cause?',
        choise: {
          'A': 'Failed data link connector',
          'B': 'Failed engine speed/timing sensor',
          'C': 'Low ECM supply voltage',
          'D': 'Incorrect diagnostic tool software'
        }),
    6: QuestionData(
        question:
            'Technician A says the diesel plastic fuel lines are separated by removing a clip and disconnecting (squeezing) the secondary latch on the line fitting. Technician B says an air leak at the line connecting the tank pick-up to the transfer pump can cause low-power and hard starting. Who is right?',
        choise: {
          'A': 'A only',
          'B': 'B only',
          'C': 'Both A and B',
          'D': 'Neither A nor B'
        }),
    7: QuestionData(
        question:
            'Two technicians are discussing an alternator with zero output. Technician A says the field circuit may have an open circuit. Technician B says the fusible link may be open from the battery to the alternator. Who is right?',
        choise: {
          'A': 'A only',
          'B': 'B only',
          'C': 'Both A and B',
          'D': 'Neither A nor B'
        }),
    8: QuestionData(
        question:
            'This question is not like the ones above. It has the word LEAST. For this question, look for the choice that would LEAST LIKELY cause the described situation. Read the entire question carefully before choosing your answer. An alternator has low output and is being full-fielded to determine the cause. Which of the following is the LEAST likely result of full-fielding the alternator?',
        choise: {
          'A': 'High battery voltage level',
          'B': 'Battery gassing',
          'C': 'Low battery voltage level',
          'D': 'High alternator amperage output'
        }),
    9: QuestionData(
        question:
            'Technician A says a loose serpentine alternator drive belt could cause overcharging. Technician B says undersized wiring between the alternator and the battery could cause undercharging. Who is right?',
        choise: {
          'A': 'A only',
          'B': 'B only',
          'C': 'Both A and B',
          'D': 'Neither A nor B'
        }),
    10: QuestionData(
        question:
            'Which of the following describes the MOST common type of electrical wiring used in instrument lighting?',
        choise: {
          'A': 'Aluminum stranded type',
          'B': 'Copper stranded type',
          'C': 'Twisted pair type',
          'D': 'Solid copper type'
        }),
    11: QuestionData(
        question:
            'What type of solder is required to repair the instrumental panel wiring?',
        choise: {
          'A': 'Acid core',
          'B': '60/40 with no flux',
          'C': 'Rosin core',
          'D': '50/50 with acid paste flux'
        }),
    12: QuestionData(
        question:
            'A dash indicator warning lamp does not light when the key is in the ON or START positions. What should you check first? ',
        choise: {
          'A': 'Sending unit',
          'B': 'Wiring',
          'C': 'Battery level',
          'D': 'Bulb'
        }),
    13: QuestionData(
        question:
            'If a fuel gauge reads full, which of the following is the MOST likely cause?',
        choise: {
          'A': 'A broken gauge',
          'B': 'Float stuck in the up position',
          'C': 'Wire to sending unit grounded',
          'D': 'An open fuse'
        }),
  },
  'Suspension and steering': {
    1: QuestionData(
        question:
            'Technician A says if the steering column input shaft is not aligned correctly there would be noise. Technician B says if the lubricant level is low in a linkage-assist type power steering column, there will be a noise when turning the steering wheel. Who is right?',
        choise: {
          'A': 'A only',
          'B': 'B only',
          'C': 'Both A and B',
          'D': 'Neither A nor B'
        }),
    2: QuestionData(
        question:
            'A sport utility vehicle has high steering effort. Technician A says this could be caused by a sheared shift tube. Technician B says the steering column assembly is misaligned. Who is right?',
        choise: {
          'A': 'A only',
          'B': 'B only',
          'C': 'Both A and B',
          'D': 'Neither A nor B'
        }),
    3: QuestionData(
        question:
            'Technician A says whenever working on the steering column, consult the on-line service information for the recommend airbag disabling procedure. Technician B says the u-joint or flexible coupling must be removed before the steering wheel can be removed. Who is right',
        choise: {
          'A': 'A only',
          'B': 'B only',
          'C': 'Both A and B',
          'D': 'Neither A nor B'
        }),
    4: QuestionData(
        question:
            'This question has the word LEAST. For this question, look for the choice that would LEAST LIKELY cause the described situation. Read the entire question carefully before choosing your answer. While driving a vehicle at 40 miles per hour there is a vibration in the steering wheel. Which of the following is the LEAST likely cause?',
        choise: {
          'A': 'Improper wheel balance',
          'B': 'Worn control arm bushings',
          'C': 'Bent wheel',
          'D': 'Shifted belt inside tire'
        }),
    5: QuestionData(
        question:
            'On an integral power steering gear, which of the following indicates excessive play between the rack piston and sector?',
        choise: {
          'A': 'Lost motion within steering gear',
          'B': 'Steering wheel vibration',
          'C': 'Hard steering condition when cold',
          'D': 'Hard steering condition when hot'
        }),
    6: QuestionData(
        question:
            'Two technicians are discussing vehicle ride height. Technician A says when the vehicle ride height is too low the vehicle could pull to that side. Technician B says ride height does not affect front camber. Who is right?',
        choise: {
          'A': 'A only',
          'B': 'B only',
          'C': 'Both A and B',
          'D': 'Neither A nor B'
        }),
    7: QuestionData(
        question:
            'Two technicians are discussing the ride height measuring procedure. Technician A says bent components can cause incorrect ride height. Technician B says for proper measurement of the ride height, the vehicle must have a full tank of fuel. Who is right?',
        choise: {
          'A': 'A only',
          'B': 'B only',
          'C': 'Both A and B',
          'D': 'Neither A nor B'
        }),
    8: QuestionData(
        question:
            'When replacing a lower control arm bushings on a short arm long arms (SLA) suspension, the replacement should be:',
        choise: {
          'A': 'Tightened and torqued in a vise',
          'B': 'Tightened using the torque turn method',
          'C': 'Torqued with vehicle weight on suspension',
          'D': 'Torqued with control arm resting on frame'
        }),
    9: QuestionData(
        question: 'Torqued with control arm resting on frame',
        choise: {
          'A': 'Ball joint play',
          'B': 'Front suspension sag',
          'C': 'Rubber bushing is cracked',
          'D': 'Fails the bounce test'
        }),
    10: QuestionData(
        question:
            'Two technicians are discussing the replacement of a rebound or jounce bumper. Technician A says if a vehicle fails the jounce test the cause is a defective jounce bumper. Technician B says you need to remove the lower ball joint to replace the jounce bumper on an SLA (short arm long arm) suspension. Who is right?',
        choise: {
          'A': 'A only',
          'B': 'B only',
          'C': 'Both A and B',
          'D': 'Neither A nor B'
        }),
    11: QuestionData(
        question:
            'When a shock absorber is to be considered for replacement due to a fluid leak, which of the following applies?',
        choise: {
          'A': 'It must show an oil film on the  outside.',
          'B': 'It fails the bounce test',
          'C': 'If it should be weighed to determine if it is low on oil.',
          'D': 'It should be removed and inverted to see if it drips oil'
        }),
    12: QuestionData(
        question:
            'This question has the word LEAST. For this question, look for the choice that would LEAST LIKELY cause the described situation. Read the entire question carefully before choosing your answer. All of the following statements about a conventional shock absorber are true, EXCEPT:',
        choise: {
          'A': 'A slight oil leakage film is considered meal',
          'B': 'A worn or leaking shock will not cause a vehicle to lean',
          'C': 'Purge the air from new shocks before installing',
          'D': 'Oil leakage will cause the vehicle to fail a bounce test.'
        }),
    13: QuestionData(
        question:
            'Two technicians are discussing wheel barring adjustment on an SLA (short arm long arm) suspension. Technician A says you adjust the front wheel bearings with the vehicle on the ground. Technician B says to use the factory procedures when adjusting front wheel bearings. Who is right?',
        choise: {
          'A': 'A only',
          'B': 'B only',
          'C': 'Both A and B',
          'D': 'Neither A nor B'
        }),
    14: QuestionData(
        question:
            'The steering wheel sensor is typically located at which of the following locations?',
        choise: {
          'A': 'Base of the steering column',
          'B': 'Under the air ba',
          'C': 'On top of the rack and pinion gear',
          'D': 'Inside the rack and pinion gear'
        }),
    15: QuestionData(
        question:
            'Which of the following electronically controlled suspension sensors is tested by unbolting it with the ignition on, engine off (KOEO) and reviewing scan tool data for correct operation?',
        choise: {
          'A': 'VSS (vehicle speed sensor)',
          'B': 'WSS (wheel speed sensor)',
          'C': 'a.	G-sensor',
          'D': 'a.	Yaw Rate sensor'
        }),
  },
  'Engine repair': {
    1: QuestionData(
        question:
            'which of the following creates a flapping sound near the front of the engine',
        choise: {
          'A': 'timing belt tension too tight',
          'B': 'Drive belt too tight',
          'C': 'Drive belt too loose',
          'D': 'Timing belt tension too loose'
        }),
    2: QuestionData(
        question:
            'An engine noise sounds like a knock at the side of the engine that is louder when the engine is cold and goes away or is reduced when the engine reaches operating temperature. Which of the following is the MOST likely cause?',
        choise: {
          'A': 'Cam bearing',
          'B': 'Main bearing',
          'C': 'A.	Piston slap',
          'D': 'A.	Wrist pin'
        }),
    3: QuestionData(
        question:
            'When a Digital Multimeter (DMM) is used to measure DC voltage and is connected in parallel to the load device, which of the following defines the reading?',
        choise: {
          'A': 'Amperage reading',
          'B': 'Voltage drop',
          'C': 'Voltage spike',
          'D': 'Pulse width modulation'
        }),
    4: QuestionData(
        question:
            'Which of the following tools can be used to check the continuity of wires that carry digital signals?',
        choise: {
          'A': 'Megger Meter',
          'B': 'Analog meter',
          'C': 'Logic Probe',
          'D': 'Voltmeter'
        }),
    5: QuestionData(
        question:
            'Technician A says an engine could misfire under load if the ignition coil is tracked. Technician B says the pickup coil must dielectric grease under it. Who is right?',
        choise: {
          'A': 'A only',
          'B': 'B only ',
          'C': 'Both A and B',
          'D': 'Neither A nor B'
        }),
    6: QuestionData(
        question:
            'A 12 volt test light is connected from negative primacy coil terminal to ground on an electric distributor ignition(DI) system. The light flutters while cranking the engine. A spark tester does not fire when it is connected from the coil secondary wire to ground while cranking the engine. Which of the following is the most likely cause?',
        choise: {
          'A': 'Defective ignition coil ',
          'B': 'Defective pickup coil',
          'C': 'Defective ignition module',
          'D': 'Defective spark plug'
        }),
    7: QuestionData(
        question:
            'Two technicians are discussing emission diagnosis. Technician A says an ignition misfire will increase CO and HC emissions and set a DTC  set. Who is right?',
        choise: {
          'A': 'A only',
          'B': 'B only',
          'C': 'Both A and B',
          'D': 'Neither A nor B'
        }),
    8: QuestionData(
        question:
            'A 12 volt test light is connected from the negative primary coil terminal to ground on an electronic distributor ignition(DI) system. The light flutters while cranking the engine. A spark tester does not fire when it is connected from the coil secondary wire to ground while cranking the engine. Which of the following is the most likely cause?',
        choise: {
          'A': 'Defective ignition coil',
          'B': 'Defective pickup coil',
          'C': 'Defective pickup coil',
          'D': 'Defective spark plug'
        }),
    9: QuestionData(
        question:
            'Two technicians are discussing emission diagnosis. Technician A says an ignition misfire will increase CO and HC emissions and set a DTC (diagnosis trouble code). Technician B says a misfire caused by  a lean condition will increase HC and CO emissions without a DTC set. Who is right?',
        choise: {
          'A': 'A only',
          'B': 'B only',
          'C': 'Both A and B',
          'D': 'either A nor B'
        }),
    10: QuestionData(
        question:
            'The surface of the cylinder head has just been machined. What will have to be done to the valve train?',
        choise: {
          'A': 'Lengthening the push rod',
          'B': 'Increasing valve spring tension',
          'C': 'Grinding the valve stems',
          'D': 'Shim the head'
        }),
    11: QuestionData(
        question:
            'A technician hears a knock or thumping at the side of the engine block that is louder when the engine is hot and goes away when the affected cylinder is shorted out. Which of the following could be the cause?',
        choise: {
          'A': 'Rod bearing',
          'B': 'Main bearing',
          'C': 'Piston slap',
          'D': 'Burnt valve'
        }),
    12: QuestionData(
        question:
            'Technician A says old antifreeze may cause corrosion build-up in the cooling system. Technician B says some original equipment manufacturers(OEM) recommend that the coolant be changed at specified intervals. Who is right?',
        choise: {
          'A': 'A only',
          'B': 'B only',
          'C': 'Both A and B',
          'D': 'either A nor B'
        }),
    13: QuestionData(
        question:
            'For this question, look for the choice that could not meet the described situation. Read the entire question carefully before choosing your answer. Long-term fuel trim is a self-learned value. Disconnecting the MAF sensor or using a scan tool can clear a learned value. Many fuel system and emission components have a direct effect on the air/fuel mixture ratio. Self-learning control should be cleared each time ',
        choise: {
          'A': 'MAF (Mass air flow) sensor ',
          'B': 'Oxygen sensor',
          'C': 'PCV (positive crankcase ventilation) valve',
          'D': 'Fuel injectors'
        }),
    14: QuestionData(
        question:
            'The OBD II (on board diagnostic level 2) system on a vehicle interprets a disconnected spark plug as a misfire that could damage the tree-way catalyst. On which trip will the ECM or PCM most likely turn on the malfunction indicator lamp(MIL)?',
        choise: {
          'A': '1st trip',
          'B': '2nd trip',
          'C': '3rd trip',
          'D': '4th trip'
        }),
    15: QuestionData(
        question:
            'Technician A says the on-board self-diagnostics test mode procedure should be conducted on a cold engine. Technician B says many diagnostic trouble codes (DTC) will monitor items only when the engine control system is in closed loop. Who is right?',
        choise: {
          'A': 'A only',
          'B': 'B only',
          'C': 'Both A and B',
          'D': 'either A nor B'
        }),
    16: QuestionData(
        question:
            'What component does the PCM or ECM monitor to determine the condition of the catalytic converter and will set DTC (diagnostic trouble code) if it fails',
        choise: {
          'A': 'Throttle position sensor',
          'B': 'Engine coolant temperature sensor',
          'C': 'Front and rear catalyst temperature sensors',
          'D': 'Front and rear O2 (oxygen) sensors'
        }),
  },
  'Technician': {
    1: QuestionData(
        question: 'A tight timing belt makes what type of noise?',
        choise: {
          'A': 'Thumping sound',
          'B': 'Whining sound',
          'C': 'Slapping sound',
          'D': 'Will not make sound'
        }),
    2: QuestionData(
        question:
            'Two technicians are explaining radiator cap service. Technician A says a radiator cap is tested using a cooling system pressure tester. Technician B says when the radiator cap does not hold enough pressure , you can replace the cap gasket. Who is right?',
        choise: {
          'A': 'A only',
          'B': 'B only',
          'C': 'Both A and B',
          'D': 'either A nor B'
        }),
    3: QuestionData(
        question:
            'A vehicle with electronically controlled automatic transmission is being road tested for poor shifting. What should be done before doing a road test?',
        choise: {
          'A': 'Check wires and connectors for disconnects',
          'B': 'Check for DTCS (diagnosis trouble codes)',
          'C': 'Hook up the scan tool to the DLC (data link connector)',
          'D': 'Check transmission/transaxle fluid level'
        }),
    4: QuestionData(
        question:
            'Technician A says the auxiliary automatic transmission oil cooler is a small radiator separate from the engine radiator. Technician B says that the automatic transmission oil cooler lines are found to be leaking, they are first tightened to specifications. Who  is right? Cooler lines are found to be leaking, they are first tightened to specifications. Who is right?',
        choise: {
          'A': 'A only',
          'B': 'B only',
          'C': 'Both A and B',
          'D': 'either A nor B'
        }),
    5: QuestionData(
        question:
            '. A RWD transmission has a leaking output shaft seal on a vehicle with 25000 miles on the odometer. The most likely for the leakage is:',
        choise: {
          'A': 'Excessive bearing wear',
          'B': 'Naturally occurring evaporating',
          'C': 'Plugged transmission breather filter',
          'D': 'Poor quality fluid filter'
        }),
    6: QuestionData(
        question:
            'Of the following, when replacing a CV(constant velocity) joint or boot, what is the last step before clamping the boot?',
        choise: {
          'A': 'Lubricate the CV joint with chassis grease',
          'B': 'Mark location of the boot on drive axle shaft',
          'C': 'Lubricate the CV joint and the boot',
          'D': 'Burp the air out of the boot'
        }),
    7: QuestionData(
        question:
            'This question has the word except. For this question, look for the choice that would not fit the described situation. Read the entire question carefully before choosing your answer. Close visual inspection of the power steering serpentine belt can reveal all the following. Except:',
        choise: {
          'A': 'Premature wear due to misalignment',
          'B': 'Proper belt tension',
          'C': 'Correct orientation of dual belt application',
          'D': 'Proper belt seating in the pulley'
        }),
    8: QuestionData(
        question: 'Steering dampers can be used to reduce excessive',
        choise: {
          'A': 'Negative camber',
          'B': 'Toe-in',
          'C': 'a.	Negative camber',
          'D': 'Positive caster'
        }),
    9: QuestionData(
        question:
            'A technician is rotating the tires using the modified x-method of tire rotation on a front-wheel-drive vehicle. Where should be the right front wheel placed?',
        choise: {
          'A': 'Right front',
          'B': 'Right rear',
          'C': 'Left rear',
          'D': 'Kept at left front'
        }),
    10: QuestionData(
        question:
            'A spongy brake pedal may be caused by which of the following',
        choise: {
          'A': 'ABS diagnostic trouble code set',
          'B': 'Frozen caliper piston',
          'C': 'defective metering valve',
          'D': 'Air in hydraulic system'
        }),
    11: QuestionData(question: 'Why are drum brakes adjusted?', choise: {
      'A': 'To stop loose wheel bearings',
      'B': 'To prevent brake fluid evaporation',
      'C': 'To reduce fluid loss',
      'D': 'To compensate for lining wear'
    }),
    12: QuestionData(
        question:
            'The open circuit voltage (OCV) test on a fully charged battery should show which voltage?',
        choise: {
          'A': '9.6 volts',
          'B': '4 volts per cell',
          'C': '1 volt per cell',
          'D': '12.6 volts'
        }),
    13: QuestionData(
        question:
            'The starter motor was recently replaced and now makes a whining noise when starting. Which of the following is the most likely cause?',
        choise: {
          'A': 'Wrong starter installed',
          'B': 'Shims left out',
          'C': 'Defective solenoid',
          'D': 'Defective flywheel'
        }),
    14: QuestionData(
        question: 'Why should you never touch the tip of a halogen bulb?',
        choise: {
          'A': 'Oil from a finger can cause shortened bulb life',
          'B': 'The glass will crack',
          'C': 'You can get a significant burn and personal injury',
          'D': 'The glass will melt from the heat of your finge'
        }),
    15: QuestionData(
        question:
            'This question has the word except. For this question, look for the choice that would not cause the described situation. Read the entire question carefully before choosing your answer. All the following cause compressor drive belt edge wear, except',
        choise: {
          'A': 'Clutch air gap',
          'B': 'Bent mounting bracket',
          'C': 'Damaged pulley',
          'D': 'Worn pulley bearing'
        }),
  }
};

var answer = {
  'Electrical engineer': {1: 'Z', 2: 'X'},
  'Suspension and steering': {1: 'Y'}
};
