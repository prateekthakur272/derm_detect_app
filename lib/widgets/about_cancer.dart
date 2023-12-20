import 'package:derm_detect_app/constants.dart';
import 'package:flutter/material.dart';

const benign = 'Benign tumors are those that stay in their primary location without invading other sites of the body. They do not spread to local structures or to distant parts of the body. Benign tumors tend to grow slowly and have distinct borders.\n\nBenign tumors are not usually problematic. However, they can become large and compress structures nearby, causing pain or other medical complications. For example, a large benign lung tumor could compress the trachea (windpipe) and cause difficulty in breathing. This would warrant urgent surgical removal. Benign tumors are unlikely to recur once removed. Common examples of benign tumors are fibroids in the uterus and lipomas in the skin.\n\nSpecific types of benign tumors can turn into malignant tumors. These are monitored closely and may require surgical removal. For example, colon polyps (another name for an abnormal mass of cells) can become malignant and are therefore usually surgically removed.';
const malignant = 'Malignant tumors have cells that grow uncontrollably and spread locally and/or to distant sites. Malignant tumors are cancerous (ie, they invade other sites). They spread to distant sites via the bloodstream or the lymphatic system. This spread is called metastasis. Metastasis can occur anywhere in the body and most commonly is found in the liver, lungs, brain, and bone.\n\nMalignant tumors can spread rapidly and require treatment to avoid spread. If they are caught early, treatment is likely to be surgery with possible chemotherapy or radiotherapy. If the cancer has spread, the treatment is likely to be systemic, such as chemotherapy or immunotherapy.';

class AboutCancer extends StatelessWidget {
  final String type;
  const AboutCancer({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SizedBox(
        width: 600,
        child: Padding(padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(type, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
            space16,
            const Divider(),
            space16,
            Text(type=='benign'?benign:malignant),
            space24,
            OutlinedButton(onPressed: (){
              Navigator.pop(context);
            }, child: const Text('Close'))
          ],
        ),),
      ),
    );
  }
}