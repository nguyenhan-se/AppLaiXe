// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

// Project imports:
import 'package:flutter_boilerplate_riverpod/domain/entities/destination.dart';
import 'package:flutter_boilerplate_riverpod/presentation/presenters/authentication/auth_provider.dart';
import 'package:flutter_boilerplate_riverpod/presentation/widgets/widgets.dart';

final List<Destination> destinations = [
  Destination.empty().copyWith(
    code: 'HN-HG',
    from: 'Hà Nội',
    to: 'Hà Giang',
  ),
  Destination.empty().copyWith(
    code: 'HG-HN',
    from: 'Hà Giang',
    to: 'Hà Nội',
  ),
];

class FilterPassenger extends StatelessWidget {
  FilterPassenger({
    Key? key,
    required this.onSubmit,
  }) : super(key: key);

  final Function onSubmit;
  final _journey = useState('HN-HG');
  final _dateStart = useState(DateTime.now());

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ContainerLegend(
      title: 'Lọc',
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 24, 16, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            DateTimeField(
              resetIcon: null,
              format: DateFormat("yyyy-MM-dd"),
              initialValue: _dateStart.value,
              onShowPicker: (context, currentValue) {
                return showDatePicker(
                    context: context,
                    firstDate: DateTime(1900),
                    initialDate: currentValue ?? DateTime.now(),
                    lastDate: DateTime(2100));
              },
              decoration: InputDecoration(
                labelText: 'Ngày xuất bến',
                hintText: 'Chọn ngày',
                floatingLabelBehavior: FloatingLabelBehavior.always,
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
                labelStyle:
                    theme.textTheme.bodyText2?.copyWith(color: Colors.blue),
                isDense: false,
                contentPadding: const EdgeInsets.all(10),
              ),
              onChanged: (date) => _dateStart.value = date as DateTime,
            ),
            const SizedBox(height: 16),
            DropdownButtonHideUnderline(
              child: DropdownButtonFormField2(
                decoration: InputDecoration(
                  labelText: 'Chặng',
                  counterText: "",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                  labelStyle:
                      theme.textTheme.bodyText2?.copyWith(color: Colors.blue),
                  isDense: true,
                  contentPadding: const EdgeInsets.all(10),
                ),
                hint: Text(
                  'Chọn Chặng',
                  style: TextStyle(
                    fontSize: 14,
                    color: Theme.of(context).hintColor,
                  ),
                ),
                openWithLongPress: true,
                customItemsIndexes: const [3],
                customItemsHeight: 8,
                items: destinations
                    .map((item) => DropdownMenuItem<String>(
                          value: item.code,
                          child: Text(
                            '${item.from} - ${item.to}',
                          ),
                        ))
                    .toList(),
                value: _journey.value,
                onChanged: (value) => _journey.value = value as String,
              ),
            ),
            ElevatedButton(
              onPressed: () => onSubmit(_dateStart.value, _journey.value),
              child: const Text('Tìm kiếm'),
            )
          ],
        ),
      ),
    );
  }
}
